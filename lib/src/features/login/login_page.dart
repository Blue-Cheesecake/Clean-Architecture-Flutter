import 'package:flutter/material.dart';

import '../../config/config.dart';
import 'utils/utils.dart';
import 'widgets/widgets.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: DesignSystem.g34,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 26),
          child: Container(
            decoration: BoxDecoration(
              color: DesignSystem.g1.withOpacity(0.9),
              borderRadius: BorderRadius.circular(31),
            ),
            child: Padding(
              padding: const EdgeInsets.all(30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    AuthenticationMessages.title,
                    style: TextStyles.header4.copyWith(color: DesignSystem.g7),
                  ),
                  const SizedBox(height: 20),
                  const UsernameTextFieldWd(),
                  const SizedBox(height: 15),
                  const PasswordTextFieldWD()
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
