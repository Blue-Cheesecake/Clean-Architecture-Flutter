import 'dart:ui';

import 'package:flutter/widgets.dart';

class CACFScreen {
  static final _instance = CACFScreen();
  static CACFScreen get instance => _instance;

  static final FlutterView _view = WidgetsBinding.instance.platformDispatcher.views.first;
  static final Size _size = _view.physicalSize / _view.devicePixelRatio;

  bool get isMobile => _size.width < 768;
  bool get isTablet => _size.width >= 768;
}
