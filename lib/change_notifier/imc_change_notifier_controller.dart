import 'dart:math';

import 'package:flutter/material.dart';

class ImcChangeNotifierController extends ChangeNotifier {
  var imc = 0.0;

  void calcularIMC({required double peso, required double altura}) {
      imc = peso / pow(altura, 2);
      notifyListeners();
  }
}
