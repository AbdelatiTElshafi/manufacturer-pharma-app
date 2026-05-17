// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:io';
import 'package:honeywell_scanner/honeywell_scanner.dart';

HoneywellScanner? honeywellScanner;

Future<void> initializeHoneywellScanner() async {
  if (!Platform.isAndroid) {
    print('Honeywell scanner works on Android only');
    return;
  }

  honeywellScanner ??= HoneywellScanner();

  final supported = await honeywellScanner!.isSupported();

  if (!supported) {
    print('This device does not support Honeywell scanner');
    return;
  }

  // Callback عند قراءة أي باركود
  honeywellScanner!.setScannerDecodeCallback((ScannedData? scannedData) {
    final scannedCode = scannedData?.code ?? '';

    if (scannedCode.isNotEmpty) {
      FFAppState().update(() {
        FFAppState().ScannedBarcode = scannedCode;
      });

      print('HONEYWELL SCANNED: $scannedCode');
    }
  });

  // Callback للأخطاء
  honeywellScanner!.setScannerErrorCallback((Exception error) {
    print('HONEYWELL SCANNER ERROR: $error');
  });

  await honeywellScanner!.startScanner();

  print('Honeywell scanner initialized');
}
