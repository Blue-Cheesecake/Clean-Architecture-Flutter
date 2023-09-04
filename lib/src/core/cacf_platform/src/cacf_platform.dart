import 'package:flutter/foundation.dart';

class CACFPlatform {
  CACFPlatform._();

  static final _instance = CACFPlatform._();
  static CACFPlatform get instance => _instance;

  bool get isAndroid => defaultTargetPlatform == TargetPlatform.android;
  bool get isIOS => defaultTargetPlatform == TargetPlatform.iOS;
}
