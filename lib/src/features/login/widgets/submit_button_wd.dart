import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../config/config.dart';
import '../logic/logic.dart';
import '../utils/utils.dart';

class SubmitButtonWD extends ConsumerWidget {
  const SubmitButtonWD({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return CupertinoButton.filled(
      onPressed: ref.watch(formInputStateProvider.select((value) => value.isButtonEnabled))
          ? () {
              ref.read(authenticationStateProvider.notifier).login();
            }
          : null,
      disabledColor: DesignSystem.g5,
      child: const Text(
        AuthenticationMessages.signin,
      ),
    );
  }
}
