import 'package:flutter/material.dart';

import '../../../config/config.dart';
import '../../../core/core.dart';

class LogoutButtonWD extends StatelessWidget {
  const LogoutButtonWD({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        CACFUser.instance.clearToken();
        CACFNavigation.instance.go(RoutePath.login);
      },
      icon: const Icon(Icons.logout, color: DesignSystem.g1),
    );
  }
}
