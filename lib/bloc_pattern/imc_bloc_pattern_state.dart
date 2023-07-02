// ignore_for_file: public_member_api_docs, sort_constructors_first

class ImcBlocPatternState {
  final double? imc;

  ImcBlocPatternState({
    this.imc,
  });
}

class ImcBlocPatternStateLoading extends ImcBlocPatternState {}

class ImcBlocPatternStateError extends ImcBlocPatternState {
  final String message;  
  ImcBlocPatternStateError({
    required this.message,
  });
}
