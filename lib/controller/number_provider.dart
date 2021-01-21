import 'package:flutter/material.dart';

class NumberProvider with ChangeNotifier {
  int _number;

  NumberProvider() {
    _number = 0;
  }

  int get number => _number;

  increaseNumber() {
    _number++;
    notifyListeners();
  }
}
