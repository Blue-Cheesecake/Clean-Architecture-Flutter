import 'package:flutter/material.dart';

import '../../../config/config.dart';
import '../../../utils/clippers/clippers.dart';
import '../../../utils/utils.dart';

class HalfCircleWD extends StatelessWidget {
  const HalfCircleWD({required this.circleSide, Key? key, this.size, this.color}) : super(key: key);

  final CircleSide circleSide;
  final Size? size;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: HalfCircleClipper(circleSide: circleSide),
      child: Container(
        height: size?.height ?? 100,
        width: size?.width ?? 100,
        decoration: BoxDecoration(
          color: color ?? DesignSystem.g0,
        ),
      ),
    );
  }
}
