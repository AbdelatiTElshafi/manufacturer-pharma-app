// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import '/custom_code/actions/index.dart';

Future<dynamic> detectGs1Barcode(String? rawScan) async {
  if (rawScan == null || rawScan.trim().isEmpty) {
    return {
      'success': false,
      'isGs1': false,
      'symbology': '',
      'isDataMatrix': false,
      'isSSCC': false,
      'barcodeCategory': 'Unknown',
      'sscc': '',
      'gtin': '',
      'serial': '',
      'batch': '',
      'expiry': '',
      'raw': rawScan ?? '',
      'normalized': '',
      'message': 'Empty scan data',
    };
  }

  String original = rawScan.trim();
  String data = original;

  String symbology = 'Unknown';
  bool isGs1 = false;
  bool isDataMatrix = false;

  // Detect symbology identifier from scanner prefix
  if (data.startsWith(']d2')) {
    symbology = 'GS1 DataMatrix';
    isGs1 = true;
    isDataMatrix = true;
    data = data.substring(3);
  } else if (data.startsWith(']C1')) {
    symbology = 'GS1-128';
    isGs1 = true;
    data = data.substring(3);
  } else if (data.startsWith(']Q3')) {
    symbology = 'GS1 QR Code';
    isGs1 = true;
    data = data.substring(3);
  } else if (data.startsWith(']')) {
    // Unknown symbology identifier, remove it carefully if 3 chars exist
    if (data.length >= 3) {
      data = data.substring(3);
    }
  }

  // Normalize possible separator representations
  data = data
      .replaceAll('<GS>', String.fromCharCode(29))
      .replaceAll('[GS]', String.fromCharCode(29))
      .replaceAll('{GS}', String.fromCharCode(29))
      .replaceAll(r'\u001D', String.fromCharCode(29));

  // Also support bracketed format like (01)...(21)...(17)...(10)...
  data = data.replaceAll('(', '').replaceAll(')', '');

  String sscc = '';
  String gtin = '';
  String serial = '';
  String batch = '';
  String expiry = '';

  bool hasAI00 = false;
  bool hasAI01 = false;
  bool hasAI10 = false;
  bool hasAI17 = false;
  bool hasAI21 = false;

  bool isDigitsOnly(String s) {
    return RegExp(r'^\d+$').hasMatch(s);
  }

  int i = 0;
  while (i < data.length) {
    if (data.codeUnitAt(i) == 29) {
      i++;
      continue;
    }

    if (i + 2 > data.length) break;

    final ai = data.substring(i, i + 2);

    // AI 00 = SSCC (18 digits fixed)
    if (ai == '00') {
      if (i + 20 <= data.length) {
        sscc = data.substring(i + 2, i + 20);
        hasAI00 = true;
        i += 20;
        continue;
      } else {
        break;
      }
    }

    // AI 01 = GTIN (14 digits fixed)
    if (ai == '01') {
      if (i + 16 <= data.length) {
        gtin = data.substring(i + 2, i + 16);
        hasAI01 = true;
        i += 16;
        continue;
      } else {
        break;
      }
    }

    // AI 17 = Expiry (6 digits fixed)
    if (ai == '17') {
      if (i + 8 <= data.length) {
        expiry = data.substring(i + 2, i + 8);
        hasAI17 = true;
        i += 8;
        continue;
      } else {
        break;
      }
    }

    // AI 21 = Serial (variable length, ends at GS separator)
    if (ai == '21') {
      hasAI21 = true;
      i += 2;
      final start = i;

      while (i < data.length && data.codeUnitAt(i) != 29) {
        i++;
      }

      serial = data.substring(start, i);

      if (i < data.length && data.codeUnitAt(i) == 29) {
        i++;
      }
      continue;
    }

    // AI 10 = Batch/Lot (variable length, ends at GS separator)
    if (ai == '10') {
      hasAI10 = true;
      i += 2;
      final start = i;

      while (i < data.length && data.codeUnitAt(i) != 29) {
        i++;
      }

      batch = data.substring(start, i);

      if (i < data.length && data.codeUnitAt(i) == 29) {
        i++;
      }
      continue;
    }

    i++;
  }

  // Decide if this is GS1 even if prefix was absent
  if (!isGs1) {
    if (hasAI00 || hasAI01 || hasAI10 || hasAI17 || hasAI21) {
      isGs1 = true;
    }
  }

  // Decide barcode category
  String barcodeCategory = 'Unknown';

  if (hasAI00) {
    barcodeCategory = 'SSCC';
  } else if (hasAI01 || hasAI21 || hasAI17 || hasAI10) {
    barcodeCategory = 'Serialized Trade Item';
  }

  return {
    'success': true,
    'isGs1': isGs1,
    'symbology': symbology,
    'isDataMatrix': isDataMatrix,
    'isSSCC': hasAI00,
    'barcodeCategory': barcodeCategory,
    'sscc': sscc,
    'gtin': gtin,
    'serial': serial,
    'batch': batch,
    'expiry': expiry,
    'hasAI00': hasAI00,
    'hasAI01': hasAI01,
    'hasAI10': hasAI10,
    'hasAI17': hasAI17,
    'hasAI21': hasAI21,
    'raw': original,
    'normalized': data,
    'message': isGs1 ? 'GS1 barcode detected' : 'Not recognized as GS1',
  };
}
