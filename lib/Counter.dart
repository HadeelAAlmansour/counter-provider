import 'package:flutter/material.dart';


class Counter extends ChangeNotifier{
  int counter = 0;

  void incrementCounter() {
    counter++;
    notifyListeners();
  }

  void decrementCounter() {
    counter--;
    notifyListeners();
  }
}
