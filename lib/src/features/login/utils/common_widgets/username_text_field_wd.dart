import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../config/config.dart';
import '../../../../utils/utils.dart';
import '../../logic/logic.dart';
import '../../utils/utils.dart';

class UsernameTextFieldWd extends ConsumerStatefulWidget {
  const UsernameTextFieldWd({Key? key}) : super(key: key);

  @override
  ConsumerState<UsernameTextFieldWd> createState() => _UsernameTextFieldWdState();
}

class _UsernameTextFieldWdState extends ConsumerState<UsernameTextFieldWd> {
  late final TextEditingController _usernameController;

  @override
  void initState() {
    super.initState();
    _usernameController = TextEditingController();
  }

  @override
  void dispose() {
    _usernameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CACFTextField(
      controller: _usernameController,
      backgroundColor: DesignSystem.g1,
      hintText: AuthenticationMessages.usernamePlaceholder,
      onTapOutside: (_) => FocusScope.of(context).requestFocus(FocusNode()),
      onChanged: (value) => ref.read(formInputStateProvider.notifier).updateUsername(value),
      onSubmitted: (value) => ref.read(formInputStateProvider.notifier).updateUsername(value),
      errorText: ref.watch(inputValidationStateProvider.select((value) => value.usenameErrorText)),
      errorTextStyle: TextStyles.bodyText6Bold.copyWith(color: DesignSystem.g1),
      outlineInputBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: DesignSystem.g1),
        borderRadius: BorderRadius.circular(200),
      ),
    );
  }
}
