import 'package:flutter/material.dart';

import '../../config/config.dart';

class CACFTextField extends StatelessWidget {
  const CACFTextField({
    required this.controller,
    Key? key,
    this.labelText,
    this.onChanged,
    this.onSubmitted,
    this.enabled,
    this.errorText,
    this.focusNode,
    this.onTapOutside,
    this.backgroundColor,
    this.prefixIcon,
    this.outlineInputBorder,
    this.hintText,
    this.inputTextStyle,
    this.obsecureText = false,
    this.errorTextStyle,
    this.keyboardType,
  }) : super(key: key);

  final String? labelText;
  final TextEditingController controller;
  final void Function(String? value)? onChanged;
  final void Function(String? value)? onSubmitted;
  final void Function(PointerDownEvent e)? onTapOutside;
  final bool? enabled;
  final String? errorText;
  final FocusNode? focusNode;
  final Color? backgroundColor;
  final Widget? prefixIcon;
  final OutlineInputBorder? outlineInputBorder;
  final String? hintText;
  final TextStyle? inputTextStyle;
  final bool obsecureText;
  final TextStyle? errorTextStyle;
  final TextInputType? keyboardType;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: errorText == null ? 45 : 68,
      child: TextField(
        controller: controller,
        onChanged: onChanged,
        onSubmitted: onSubmitted,
        focusNode: focusNode,
        enabled: enabled,
        maxLines: 1,
        cursorColor: DesignSystem.g5,
        cursorHeight: 15,
        onTapOutside: onTapOutside,
        style: inputTextStyle ?? TextStyles.bodyText4,
        obscureText: obsecureText,
        keyboardType: keyboardType,
        decoration: InputDecoration(
          prefixIcon: prefixIcon,
          prefixIconColor: MaterialStateColor.resolveWith(
              (states) => states.contains(MaterialState.focused) ? DesignSystem.cacfPrimary : DesignSystem.g15),
          errorText: errorText,
          errorStyle: errorTextStyle,
          filled: backgroundColor != null,
          fillColor: backgroundColor,
          focusColor: DesignSystem.cacfPrimary,
          contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 0),
          hintText: hintText,
          hintStyle: TextStyles.bodyText6.copyWith(color: DesignSystem.g18),
          labelText: labelText,
          labelStyle: TextStyles.bodyText5.copyWith(color: DesignSystem.g11),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(4),
            borderSide: BorderSide(width: 2, color: DesignSystem.cacfPrimary.withOpacity(0.2)),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(4),
            borderSide: const BorderSide(width: 2, color: DesignSystem.g9),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(4),
            borderSide: const BorderSide(width: 1, color: DesignSystem.g9),
          ),
          enabledBorder: outlineInputBorder ??
              OutlineInputBorder(
                borderRadius: BorderRadius.circular(4),
                borderSide: const BorderSide(width: 1, color: DesignSystem.g10),
              ),
        ),
      ),
    );
  }
}
