import 'dart:ui';

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
      body: Stack(
        children: [
          // Background
          SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: AuthenticationAssets.background,
          ),
          BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
            child: Container(
              color: Colors.white.withOpacity(0.1),
            ),
          ),
          const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                minRadius: 50,
                backgroundColor: DesignSystem.g1,
                child: Icon(
                  Icons.person,
                  size: 70,
                ),
              ),
              SizedBox(height: 20),
              SizedBox(width: 230, child: UsernameTextFieldWd()),
              SizedBox(height: 10),
              SizedBox(width: 230, child: PasswordTextFieldWD()),
              SizedBox(height: 25),
              SubmitButtonWD(),
            ],
          )
        ],
      ),
    );
  }
}
