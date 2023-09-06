import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'input.dart';

final formInputStateProvider = StateNotifierProvider.autoDispose<FormInputStateNotifier, FormInputState>((ref) {
  return FormInputStateNotifier(ref: ref);
});
