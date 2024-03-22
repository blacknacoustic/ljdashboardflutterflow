import 'package:flutter/material.dart';
import '/backend/backend.dart';
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

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  DateTime? _selectedDate;
  DateTime? get selectedDate => _selectedDate;
  set selectedDate(DateTime? _value) {
    _selectedDate = _value;
  }

  DateTime? _invoiceSelectedDate;
  DateTime? get invoiceSelectedDate => _invoiceSelectedDate;
  set invoiceSelectedDate(DateTime? _value) {
    _invoiceSelectedDate = _value;
  }
}
