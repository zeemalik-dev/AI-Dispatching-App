import 'package:flutter/material.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import '/backend/api_requests/api_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _isDispatchShow = prefs.getBool('ff_isDispatchShow') ?? _isDispatchShow;
    });
    _safeInit(() {
      _isLeadShow = prefs.getBool('ff_isLeadShow') ?? _isLeadShow;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  bool _isDispatchShow = false;
  bool get isDispatchShow => _isDispatchShow;
  set isDispatchShow(bool value) {
    _isDispatchShow = value;
    prefs.setBool('ff_isDispatchShow', value);
  }

  bool _isLeadShow = false;
  bool get isLeadShow => _isLeadShow;
  set isLeadShow(bool value) {
    _isLeadShow = value;
    prefs.setBool('ff_isLeadShow', value);
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
