import 'package:flutter/material.dart';
import 'dart:math' show pi;

import '../../../config/config.dart';

class RotatingContainerWD extends StatefulWidget {
  const RotatingContainerWD({Key? key}) : super(key: key);

  @override
  State<RotatingContainerWD> createState() => _RotatingContainerWDState();
}

class _RotatingContainerWDState extends State<RotatingContainerWD> with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(vsync: this, duration: const Duration(seconds: 2));
    _animation = Tween<double>(begin: 0.0, end: 2 * pi).animate(_animationController);

    _animationController.repeat();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animation,
      builder: (context, child) {
        return Transform(
          alignment: Alignment.center,
          transform: Matrix4.identity()..rotateZ(_animation.value),
          child: Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              color: DesignSystem.cacfPrimary,
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        );
      },
    );
  }
}
