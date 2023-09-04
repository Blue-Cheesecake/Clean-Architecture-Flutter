import 'package:go_router/go_router.dart';

import '../../core.dart';
import 'routes.dart';
import 'widgets/widgets.dart';

class CACFNavigation {
  CACFNavigation._();

  static final _instance = CACFNavigation._();
  static CACFNavigation get instance => _instance;

  final _router = GoRouter(
    initialLocation: RoutePath.login,
    navigatorKey: CACFGlobalNavigatorKeys.rootNavigator,
    routes: Routes.list(),
    errorBuilder: (context, state) => const NotFoundPage(),
  );

  GoRouter get router => _router;
}

extension CACFNavigationAction on CACFNavigation {
  Future<T?> push<T extends Object?>(String location, {Object? extra}) async {
    CACFLog.print(message: 'push to $location');
    return _router.push(location, extra: extra);
  }

  Future<void> pop<T extends Object?>([T? result]) async {
    CACFLog.print(message: 'pop');
    return _router.pop(result);
  }

  Future<void> go<T extends Object?>(String location, {Object? extra}) async {
    CACFLog.print(message: 'go to $location');
    return _router.go(location);
  }
}
