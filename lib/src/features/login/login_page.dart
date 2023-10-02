import 'package:flutter/material.dart';

import '../../core/cacf_screen/src/src.dart';
import 'widgets/widgets.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (CACFScreen.instance.isMobile) {
      return const MobileLoginPage();
    }

    return Container();
  }
}
