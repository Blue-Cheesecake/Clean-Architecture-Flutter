import 'package:go_router/go_router.dart';

import '../../../features/home/home_page.dart';
import '../../../features/login/login_page.dart';
import 'utils/utils.dart';

class Routes {
  const Routes._();

  static dynamic list() => [
        GoRoute(
          path: RoutePath.home,
          builder: (context, state) => const HomePage(),
        ),
        GoRoute(
          path: RoutePath.login,
          builder: (context, state) => const LoginPage(),
        ),
      ];
}
