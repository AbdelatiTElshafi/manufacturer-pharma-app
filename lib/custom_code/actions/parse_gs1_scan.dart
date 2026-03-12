// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future<dynamic> parseGs1Scan(String? rawScan) async {
  if (rawScan == null || rawScan.trim().isEmpty) {
    return {
      'success': false,
      'message': 'Empty scan data',
      'gtin': '',
      'serial': '',
      'batch': '',
      'expiry': '',
      'raw': rawScan ?? '',
      'normalized': '',
    };
  }

  String data = rawScan.trim();

  // Normalize common scanner representations
  data = data
      .replaceAll(r'\u001D', String.fromCharCode(29))
      .replaceAll('<GS>', String.fromCharCode(29))
      .replaceAll('[GS]', String.fromCharCode(29))
      .replaceAll('{GS}', String.fromCharCode(29));

  // Remove common symbology identifier prefix like ]C1 ]d2 etc.
  if (data.startsWith(']') && data.length >= 3) {
    data = data.substring(3);
  }

  // Remove parentheses style: (01)(21)(17)(10)
  data = data.replaceAll('(', '').replaceAll(')', '');

  String gtin = '';
  String serial = '';
  String batch = '';
  String expiry = '';

  bool isKnownAiAt(String s, int index) {
    if (index + 2 <= s.length) {
      final ai2 = s.substring(index, index + 2);
      if (ai2 == '01' || ai2 == '10' || ai2 == '17' || ai2 == '21') {
        return true;
      }
    }
    return false;
  }

  int i = 0;
  while (i < data.length) {
    // Skip group separator if present
    if (data.codeUnitAt(i) == 29) {
      i++;
      continue;
    }

    if (i + 2 > data.length) {
      break;
    }

    final ai = data.substring(i, i + 2);

    // AI 01 = GTIN (fixed 14 digits)
    if (ai == '01') {
      if (i + 16 <= data.length) {
        gtin = data.substring(i + 2, i + 16);
        i += 16;
        continue;
      } else {
        break;
      }
    }

    // AI 17 = Expiry YYMMDD (fixed 6 digits)
    if (ai == '17') {
      if (i + 8 <= data.length) {
        expiry = data.substring(i + 2, i + 8);
        i += 8;
        continue;
      } else {
        break;
      }
    }

    // AI 21 = Serial (variable length)
    if (ai == '21') {
      i += 2;
      final start = i;

      while (i < data.length) {
        if (data.codeUnitAt(i) == 29) {
          break;
        }

        // In your barcode, 21 is usually followed by 17
        // but we also support other known AIs just in case
        if (isKnownAiAt(data, i)) {
          break;
        }

        i++;
      }

      serial = data.substring(start, i);

      if (i < data.length && data.codeUnitAt(i) == 29) {
        i++;
      }
      continue;
    }

    // AI 10 = Batch/Lot (variable length)
    if (ai == '10') {
      i += 2;
      final start = i;

      while (i < data.length) {
        if (data.codeUnitAt(i) == 29) {
          break;
        }

        // Batch is commonly the last field, but still support separator/next AI
        if (isKnownAiAt(data, i)) {
          break;
        }

        i++;
      }

      batch = data.substring(start, i);

      if (i < data.length && data.codeUnitAt(i) == 29) {
        i++;
      }
      continue;
    }

    // Move forward if current position is not a recognized AI
    i++;
  }

  return {
    'success': true,
    'message': 'Parsed successfully',
    'gtin': gtin,
    'serial': serial,
    'batch': batch,
    'expiry': expiry,
    'raw': rawScan,
    'normalized': data,
  };
}
