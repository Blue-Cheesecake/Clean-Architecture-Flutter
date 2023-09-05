import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../utils/utils.dart';
import '../logic.dart';

class InputValidationStateNotifier extends StateNotifier<InputValidationState> {
  InputValidationStateNotifier({required final Ref ref})
      : _ref = ref,
        super(InputValidationState());

  final Ref _ref;

  bool isFormValid() {
    bool isValid = true;
    var tempState = InputValidationState();
    final String? username = _ref.read(formInputStateProvider.select((value) => value.username));
    final String? password = _ref.read(formInputStateProvider.select((value) => value.password));

    if (username == null || username.trim().isEmpty) {
      tempState = tempState.copyWith(usenameErrorText: AuthenticationMessages.usernameErrorText);
      isValid = false;
    }
    if (password == null || password.trim().isEmpty) {
      tempState = tempState.copyWith(passwordErrorText: AuthenticationMessages.passwordErrorText);
      isValid = false;
    }

    state = tempState;

    return isValid;
  }
}
