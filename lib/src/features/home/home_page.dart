import 'package:flutter/material.dart';

import '../../config/config.dart';
import 'utils/utils.dart';
import 'widgets/widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(HomeMessages.title, style: TextStyles.header5.copyWith(color: DesignSystem.g1)),
        centerTitle: true,
        actions: const [
          LogoutButtonWD(),
        ],
      ),
      body: const Center(
        child: RotatingContainerWD(),
      ),
    );
  }
}
