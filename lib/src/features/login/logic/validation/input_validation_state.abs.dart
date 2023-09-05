import 'package:freezed_annotation/freezed_annotation.dart';

part 'input_validation_state.abs.freezed.dart';

@freezed
class InputValidationState with _$InputValidationState {
  factory InputValidationState({
    String? usenameErrorText,
    String? passwordErrorText,
  }) = _InputValidationState;
}
