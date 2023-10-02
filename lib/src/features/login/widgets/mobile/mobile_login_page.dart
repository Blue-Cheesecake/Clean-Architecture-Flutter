import 'package:flutter/material.dart';

import '../../../../config/config.dart';
import '../../utils/common_widgets/common_widgets.dart';

class MobileLoginPage extends StatelessWidget {
  const MobileLoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SkeletonPageWD(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircleAvatar(
          minRadius: 50,
          backgroundColor: DesignSystem.g1,
          child: Icon(
            Icons.person,
            size: 70,
          ),
        ),
        SizedBox(height: 20),
        SizedBox(width: 230, child: UsernameTextFieldWd()),
        SizedBox(height: 10),
        SizedBox(width: 230, child: PasswordTextFieldWD()),
        SizedBox(height: 25),
        SubmitButtonWD(),
      ],
    ));
  }
}
