// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:async';
import 'dart:io';
import 'package:flutter_datawedge/flutter_datawedge.dart';

FlutterDataWedge? dataWedge;
StreamSubscription<ScanResult>? scanSubscription;

Future<void> initializeDataWedgeScanner() async {
  if (!Platform.isAndroid) {
    print('DataWedge works on Android only');
    return;
  }

  dataWedge ??= FlutterDataWedge();

  await dataWedge!.initialize();

  await dataWedge!.createDefaultProfile(
    profileName: 'GXPTrace Profile',
  );

  await scanSubscription?.cancel();

  scanSubscription = dataWedge!.onScanResult.listen((ScanResult result) {
    final scannedCode = result.data;

    if (scannedCode.isNotEmpty) {
      FFAppState().update(() {
        FFAppState().ScannedBarcode = scannedCode;
      });

      print('ZEBRA DATAWEDGE SCANNED: $scannedCode');
    }
  });
}
