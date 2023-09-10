import 'package:flutter/material.dart';

enum CircleSide { left, right }

extension ToPath on CircleSide {
  Path toPath(Size size) {
    final path = Path();

    late final Offset offset; // Endpoint
    late final bool isClockwise;

    switch (this) {
      case CircleSide.left:
        path.moveTo(size.width, 0); // Start Point
        offset = Offset(size.width, size.height);
        isClockwise = false;
      case CircleSide.right:
        path.moveTo(0, 0); // Start Point
        offset = Offset(0, size.height);
        isClockwise = true;
    }

    path.arcToPoint(
      offset,
      clockwise: isClockwise,
      radius: Radius.elliptical(size.width / 2, size.height / 2), // The dot of radius
    );

    path.close();
    return path;
  }
}
