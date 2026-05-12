import 'package:flutter/material.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  bool _mainpageloadingvisible = false;
  bool get mainpageloadingvisible => _mainpageloadingvisible;
  set mainpageloadingvisible(bool value) {
    _mainpageloadingvisible = value;
  }

  String _userName = '';
  String get userName => _userName;
  set userName(String value) {
    _userName = value;
  }

  String _userRole = '';
  String get userRole => _userRole;
  set userRole(String value) {
    _userRole = value;
  }

  String _ScannedBarcode = '';
  String get ScannedBarcode => _ScannedBarcode;
  set ScannedBarcode(String value) {
    _ScannedBarcode = value;
  }
}
