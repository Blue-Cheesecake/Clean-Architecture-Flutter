import 'package:flutter/material.dart';
import 'dart:math' show pi;

import '../../../config/config.dart';
import '../../../utils/utils.dart';
import 'widgets.dart';

class RotatingCircleWD extends StatefulWidget {
  const RotatingCircleWD({Key? key}) : super(key: key);

  @override
  State<RotatingCircleWD> createState() => _RotatingCircleWDState();
}

class _RotatingCircleWDState extends State<RotatingCircleWD> with TickerProviderStateMixin {
  late final AnimationController _counterClockwiseAnimationController;
  late Animation<double> _counterClockwiseAnimation;

  late final AnimationController _flipAnimationController;
  late Animation<double> _flipAnimation;

  @override
  void initState() {
    super.initState();

    _counterClockwiseAnimationController = AnimationController(vsync: this, duration: const Duration(seconds: 1));

    _counterClockwiseAnimation = Tween<double>(begin: 0, end: -(pi / 2)).animate(
      CurvedAnimation(parent: _counterClockwiseAnimationController, curve: Curves.bounceOut),
    );

    _flipAnimationController = AnimationController(vsync: this, duration: const Duration(seconds: 1));

    _flipAnimation = Tween<double>(begin: 0, end: pi).animate(
      CurvedAnimation(parent: _flipAnimationController, curve: Curves.bounceOut),
    );

    _counterClockwiseAnimationController.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        _flipAnimation = Tween<double>(begin: _flipAnimation.value, end: _flipAnimation.value + pi).animate(
          CurvedAnimation(parent: _flipAnimationController, curve: Curves.bounceOut),
        );

        _flipAnimationController
          ..reset()
          ..forward();
      }
    });

    _flipAnimationController.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        _counterClockwiseAnimation = Tween<double>(
          begin: _counterClockwiseAnimation.value,
          end: _counterClockwiseAnimation.value + -(pi / 2),
        ).animate(CurvedAnimation(parent: _counterClockwiseAnimationController, curve: Curves.bounceOut));

        _counterClockwiseAnimationController
          ..reset()
          ..forward();
      }
    });

    _counterClockwiseAnimationController.forward();
  }

  @override
  void dispose() {
    _counterClockwiseAnimationController.dispose();
    _flipAnimationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _counterClockwiseAnimation,
      builder: (context, child) => Transform(
        alignment: Alignment.center,
        transform: Matrix4.identity()..rotateZ(_counterClockwiseAnimation.value),
        child: child,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          AnimatedBuilder(
            animation: _flipAnimationController,
            builder: (context, child) => Transform(
              alignment: Alignment.centerRight,
              transform: Matrix4.identity()..rotateY(_flipAnimation.value),
              child: child,
            ),
            child: const HalfCircleWD(circleSide: CircleSide.left, color: DesignSystem.cacfPrimary),
          ),
          AnimatedBuilder(
            animation: _flipAnimationController,
            builder: (context, child) => Transform(
              alignment: Alignment.centerLeft,
              transform: Matrix4.identity()..rotateY(_flipAnimation.value),
              child: child,
            ),
            child: const HalfCircleWD(circleSide: CircleSide.right, color: DesignSystem.g9),
          ),
        ],
      ),
    );
  }
}
