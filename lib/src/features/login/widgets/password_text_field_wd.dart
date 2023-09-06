import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../config/config.dart';
import '../../../utils/utils.dart';
import '../logic/logic.dart';
import '../utils/utils.dart';

class PasswordTextFieldWD extends ConsumerStatefulWidget {
  const PasswordTextFieldWD({Key? key}) : super(key: key);

  @override
  ConsumerState<PasswordTextFieldWD> createState() => _PasswordTextFieldWDState();
}

class _PasswordTextFieldWDState extends ConsumerState<PasswordTextFieldWD> {
  late final TextEditingController _passwordController;

  @override
  void initState() {
    super.initState();
    _passwordController = TextEditingController();
  }

  @override
  void dispose() {
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CACFTextField(
      controller: _passwordController,
      backgroundColor: DesignSystem.g1,
      hintText: AuthenticationMessages.passwordPlaceholder,
      obsecureText: true,
      onTapOutside: (_) => FocusScope.of(context).requestFocus(FocusNode()),
      onChanged: (value) => ref.read(formInputStateProvider.notifier).updatePassword(value),
      onSubmitted: (value) => ref.read(formInputStateProvider.notifier).updatePassword(value),
      errorText: ref.watch(inputValidationStateProvider.select((value) => value.passwordErrorText)),
      errorTextStyle: TextStyles.bodyText6Bold.copyWith(color: DesignSystem.g1),
    );
  }
}
