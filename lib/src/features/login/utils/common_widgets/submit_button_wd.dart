import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../config/config.dart';
import '../../logic/logic.dart';
import '../utils.dart';

class SubmitButtonWD extends ConsumerWidget {
  const SubmitButtonWD({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SizedBox(
      width: 230,
      child: CupertinoButton.filled(
        onPressed: ref.watch(formInputStateProvider.select((value) => value.isButtonEnabled))
            ? () {
                ref.read(authenticationStateProvider.notifier).login();
              }
            : null,
        disabledColor: DesignSystem.g5,
        pressedOpacity: 0.5,
        child: Consumer(
          builder: (context, ref, child) {
            final isLoading = ref.watch(authenticationStateProvider.select((value) => value.isLoading));

            if (isLoading) {
              return const CupertinoActivityIndicator();
            }

            return const Text(
              AuthenticationMessages.signin,
            );
          },
        ),
      ),
    );
  }
}
