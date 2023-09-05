import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../logic.dart';

class FormInputStateNotifier extends StateNotifier<FormInputState> {
  FormInputStateNotifier({required final Ref ref})
      : _ref = ref,
        super(FormInputState());

  final Ref _ref;

  void _verifyForm() {
    final isValid = _ref.read(inputValidationStateProvider.notifier).isFormValid();
    state = state.copyWith(isButtonEnabled: isValid);
  }

  void updateUsername(String? value) {
    state = state.copyWith(username: value);
    _verifyForm();
  }

  void updatePassword(String? value) {
    state = state.copyWith(password: value);
    _verifyForm();
  }
}
