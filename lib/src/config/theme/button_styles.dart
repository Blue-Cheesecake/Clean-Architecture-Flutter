import 'package:flutter/material.dart';

class ButtonStyles {
  const ButtonStyles._();

  static ButtonStyle loginButtonStyle({Color? color}) => ElevatedButton.styleFrom(
        backgroundColor: color,
        padding: const EdgeInsets.symmetric(horizontal: 23, vertical: 11),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      );
}
