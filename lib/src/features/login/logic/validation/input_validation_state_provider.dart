import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../logic.dart';

final inputValidationStateProvider =
    StateNotifierProvider.autoDispose<InputValidationStateNotifier, InputValidationState>((ref) {
  return InputValidationStateNotifier(ref: ref);
});
