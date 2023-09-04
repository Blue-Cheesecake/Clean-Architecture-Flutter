import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'app_wd.dart';
import 'flavors.dart';
import 'src/core/core.dart';

void mainRunApp() async {
  WidgetsFlutterBinding.ensureInitialized();
  AppConfig.instance.init(F.appConfigEnv);

  runApp(const ProviderScope(child: AppWD()));
}
