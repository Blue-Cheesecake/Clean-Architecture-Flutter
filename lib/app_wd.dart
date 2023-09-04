import 'package:flutter/material.dart';

import 'src/config/config.dart';
import 'src/core/core.dart';

class AppWD extends StatelessWidget {
  const AppWD({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: CACFNavigation.instance.router,
      theme: getCACFTheme(),
      debugShowCheckedModeBanner: false,
    );
  }
}
