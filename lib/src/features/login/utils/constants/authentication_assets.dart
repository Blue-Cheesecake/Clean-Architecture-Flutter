import 'package:flutter/widgets.dart';

class AuthenticationAssets {
  const AuthenticationAssets._();

  static Widget get background => Image.asset(
        'assets/imgs/macos-13-ventura.jpg',
        fit: BoxFit.cover,
      );
}
