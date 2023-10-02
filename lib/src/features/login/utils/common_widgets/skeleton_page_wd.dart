import 'dart:ui';

import 'package:flutter/material.dart';

import '../../../../config/config.dart';
import '../utils.dart';

class SkeletonPageWD extends StatelessWidget {
  const SkeletonPageWD({required this.child, Key? key}) : super(key: key);

  final Widget child;

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
          child,
        ],
      ),
    );
  }
}
