import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/core.dart';

class CACFStateNotifier<T> extends StateNotifier<T> {
  CACFStateNotifier(super.state);

  T? get safeState {
    if (!mounted) {
      return null;
    }
    return state;
  }

  set safeState(T? value) {
    if (!mounted || value == null) {
      CACFLog.print(message: 'Cannot set safeState of $T. Mounted: $mounted, Value: $value');
      return;
    }
    state = value;
  }
}
