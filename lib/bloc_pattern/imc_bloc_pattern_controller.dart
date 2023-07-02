import 'dart:async';
import 'dart:math';

import 'package:calculadoraimc/bloc_pattern/imc_bloc_pattern_state.dart';

class ImcBlocPatternController {
  final _imcStreamController = StreamController<ImcBlocPatternState>.broadcast()
    ..add(ImcBlocPatternState(imc: 0));

  Stream<ImcBlocPatternState> get imcOut => _imcStreamController.stream;

  
  void dispose() {
    _imcStreamController.close();
  }

  calcularIMC({required double peso, required double altura}) async {
    try {
  var imc = peso / pow(altura, 2);
  
  _imcStreamController.add(ImcBlocPatternStateLoading());
  await Future.delayed(const Duration(milliseconds: 400));
  _imcStreamController.add(ImcBlocPatternState(imc: imc));
} on Exception {
  _imcStreamController.add(ImcBlocPatternStateError(message: 'erro'));
}
  }
}
