import 'package:freezed_annotation/freezed_annotation.dart';

part 'form_input_state.abs.freezed.dart';

@freezed
class FormInputState with _$FormInputState {
  factory FormInputState({
    String? username,
    String? password,
    @Default(false) bool isButtonEnabled,
  }) = _FormInputState;
}
