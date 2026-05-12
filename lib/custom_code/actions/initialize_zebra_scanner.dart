// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:zebra123/zebra123.dart';

Zebra123? zebraScanner;

Future<void> initializeZebraScanner() async {
  zebraScanner ??= Zebra123(
    callback: (Interfaces interface, Events event, dynamic data) {
      if (event == Events.readBarcode && data is List<Barcode>) {
        if (data.isNotEmpty) {
          final scannedCode = data.first.barcode;

          FFAppState().update(() {
            FFAppState().ScannedBarcode = scannedCode;
          });

          print('ZEBRA BARCODE SCANNED: $scannedCode');
        }
      }

      if (event == Events.error) {
        print('ZEBRA SCANNER ERROR: $data');
      }
    },
  );

  zebraScanner?.connect();
  zebraScanner?.setMode(Modes.barcode);
}
