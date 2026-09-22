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

  String _userApiKey = '';
  String get userApiKey => _userApiKey;
  set userApiKey(String value) {
    _userApiKey = value;
  }

  String _deviceGuid = '';
  String get deviceGuid => _deviceGuid;
  set deviceGuid(String value) {
    _deviceGuid = value;
  }

  String _selectedBrand = '';
  String get selectedBrand => _selectedBrand;
  set selectedBrand(String value) {
    _selectedBrand = value;
  }

  String _userPassword = '';
  String get userPassword => _userPassword;
  set userPassword(String value) {
    _userPassword = value;
  }

  String _elitechKeyId = '';
  String get elitechKeyId => _elitechKeyId;
  set elitechKeyId(String value) {
    _elitechKeyId = value;
  }

  String _elitechKeySecret = '';
  String get elitechKeySecret => _elitechKeySecret;
  set elitechKeySecret(String value) {
    _elitechKeySecret = value;
  }

  String _elitechToken = '';
  String get elitechToken => _elitechToken;
  set elitechToken(String value) {
    _elitechToken = value;
  }

  String _currentTemp = '';
  String get currentTemp => _currentTemp;
  set currentTemp(String value) {
    _currentTemp = value;
  }

  bool _Isconnected = false;
  bool get Isconnected => _Isconnected;
  set Isconnected(bool value) {
    _Isconnected = value;
  }

  String _tzoneAppId = '';
  String get tzoneAppId => _tzoneAppId;
  set tzoneAppId(String value) {
    _tzoneAppId = value;
  }

  String _tzoneAppKey = '';
  String get tzoneAppKey => _tzoneAppKey;
  set tzoneAppKey(String value) {
    _tzoneAppKey = value;
  }

  String _tzoneAppSecret = '';
  String get tzoneAppSecret => _tzoneAppSecret;
  set tzoneAppSecret(String value) {
    _tzoneAppSecret = value;
  }

  String _tzoneToken = '';
  String get tzoneToken => _tzoneToken;
  set tzoneToken(String value) {
    _tzoneToken = value;
  }

  String _efentoApiToken = '';
  String get efentoApiToken => _efentoApiToken;
  set efentoApiToken(String value) {
    _efentoApiToken = value;
  }

  String _efentoOrgId = '';
  String get efentoOrgId => _efentoOrgId;
  set efentoOrgId(String value) {
    _efentoOrgId = value;
  }

  String _efentoLocationId = '';
  String get efentoLocationId => _efentoLocationId;
  set efentoLocationId(String value) {
    _efentoLocationId = value;
  }

  String _efentoDeviceName = '';
  String get efentoDeviceName => _efentoDeviceName;
  set efentoDeviceName(String value) {
    _efentoDeviceName = value;
  }

  String _efentoDevicesRaw = '';
  String get efentoDevicesRaw => _efentoDevicesRaw;
  set efentoDevicesRaw(String value) {
    _efentoDevicesRaw = value;
  }

  String _efentoStep = 'getDevices';
  String get efentoStep => _efentoStep;
  set efentoStep(String value) {
    _efentoStep = value;
  }

  List<String> _efentoDevicesList = [];
  List<String> get efentoDevicesList => _efentoDevicesList;
  set efentoDevicesList(List<String> value) {
    _efentoDevicesList = value;
  }

  void addToEfentoDevicesList(String value) {
    efentoDevicesList.add(value);
  }

  void removeFromEfentoDevicesList(String value) {
    efentoDevicesList.remove(value);
  }

  void removeAtIndexFromEfentoDevicesList(int index) {
    efentoDevicesList.removeAt(index);
  }

  void updateEfentoDevicesListAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    efentoDevicesList[index] = updateFn(_efentoDevicesList[index]);
  }

  void insertAtIndexInEfentoDevicesList(int index, String value) {
    efentoDevicesList.insert(index, value);
  }

  List<double> _efentoDeviceTemps = [];
  List<double> get efentoDeviceTemps => _efentoDeviceTemps;
  set efentoDeviceTemps(List<double> value) {
    _efentoDeviceTemps = value;
  }

  void addToEfentoDeviceTemps(double value) {
    efentoDeviceTemps.add(value);
  }

  void removeFromEfentoDeviceTemps(double value) {
    efentoDeviceTemps.remove(value);
  }

  void removeAtIndexFromEfentoDeviceTemps(int index) {
    efentoDeviceTemps.removeAt(index);
  }

  void updateEfentoDeviceTempsAtIndex(
    int index,
    double Function(double) updateFn,
  ) {
    efentoDeviceTemps[index] = updateFn(_efentoDeviceTemps[index]);
  }

  void insertAtIndexInEfentoDeviceTemps(int index, double value) {
    efentoDeviceTemps.insert(index, value);
  }

  String _AuthToken = '';
  String get AuthToken => _AuthToken;
  set AuthToken(String value) {
    _AuthToken = value;
  }
}
