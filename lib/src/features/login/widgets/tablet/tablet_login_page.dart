import 'package:flutter/material.dart';

import '../../../../config/config.dart';
import '../../utils/common_widgets/common_widgets.dart';

class TabletLoginPage extends StatelessWidget {
  const TabletLoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SkeletonPageWD(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
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
              SizedBox(width: 20),
              Column(
                children: [
                  SizedBox(width: 230, child: UsernameTextFieldWd()),
                  SizedBox(height: 10),
                  SizedBox(width: 230, child: PasswordTextFieldWD()),
                ],
              )
            ],
          ),
          SizedBox(height: 25),
          SubmitButtonWD(),
        ],
      ),
    );
  }
}
