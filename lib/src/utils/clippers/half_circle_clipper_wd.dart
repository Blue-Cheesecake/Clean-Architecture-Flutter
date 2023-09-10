import 'package:flutter/material.dart';

import '../utils.dart';

class HalfCircleClipper extends CustomClipper<Path> {
  HalfCircleClipper({required CircleSide circleSide, super.reclip}) : _circleSide = circleSide;

  final CircleSide _circleSide;

  @override
  Path getClip(Size size) => _circleSide.toPath(size);

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => true;
}
