import 'dart:developer';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../config/config.dart';
import 'logic/logic.dart';
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
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CircleAvatar(
                minRadius: 50,
                backgroundColor: DesignSystem.g1,
                child: Icon(
                  Icons.person,
                  size: 70,
                ),
              ),
              const SizedBox(height: 20),
              const SizedBox(width: 230, child: UsernameTextFieldWd()),
              const SizedBox(height: 10),
              const SizedBox(width: 230, child: PasswordTextFieldWD()),
              const SizedBox(height: 25),
              const SubmitButtonWD(),
              Consumer(
                builder: (context, ref, child) {
                  final isLoading = ref.watch(authenticationStateProvider.select((value) => value.isLoading));
                  log(isLoading.toString());

                  if (isLoading) {
                    return const Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SizedBox(height: 15),
                        CupertinoActivityIndicator(),
                      ],
                    );
                  }

                  return const SizedBox.shrink();
                },
              ),
            ],
          )
        ],
      ),
    );
  }
}
