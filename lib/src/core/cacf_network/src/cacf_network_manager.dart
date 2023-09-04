import 'package:internet_connection_checker/internet_connection_checker.dart';

abstract class ICACFNetworkManager {
  Future<bool> get isConnected;
}

class CACFNetworkManager implements ICACFNetworkManager {
  CACFNetworkManager();

  static final _internetConnectionChecker = InternetConnectionChecker();

  @override
  Future<bool> get isConnected => _internetConnectionChecker.hasConnection;
}
