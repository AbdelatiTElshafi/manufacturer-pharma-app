import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/auth/custom_auth/auth_util.dart';

String? greetingFunction() {
  final hour = DateTime.now().hour;
  if (hour < 12) return 'Good Morning';
  if (hour < 17) return 'Good Afternoon';
  return 'Good Evening';
}

List<String> getEfentoDeviceNames(String devicesJson) {
  try {
    // جرب decode مباشرة
    dynamic decoded = json.decode(devicesJson);

    // لو جه كـ Map فيه measurementPoints
    if (decoded is Map && decoded.containsKey('measurementPoints')) {
      final List<dynamic> devices = decoded['measurementPoints'];
      return devices.map((d) => d['name'].toString()).toList();
    }

    // لو جه كـ List مباشرة
    if (decoded is List) {
      return decoded.map((d) => d['name'].toString()).toList();
    }

    return [];
  } catch (e) {
    return [];
  }
}

double getEfentoDeviceTemp(
  List<String> deviceNames,
  List<double> deviceTemps,
  String selectedDevice,
) {
  {
    try {
      int index = deviceNames.indexOf(selectedDevice);
      if (index == -1) return 0.0;
      return deviceTemps[index];
    } catch (e) {
      return 0.0;
    }
  }
}
