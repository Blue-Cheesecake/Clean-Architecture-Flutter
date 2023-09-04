import 'package:network_info_plus/network_info_plus.dart';

abstract interface class ICACFNetworkInfo {
  Future<String?> getRouterIP();
}

class CACFNetworkInfo implements ICACFNetworkInfo {
  CACFNetworkInfo._();

  static final CACFNetworkInfo _instance = CACFNetworkInfo._();
  static CACFNetworkInfo get instance => _instance;
  final _info = NetworkInfo();

  @override
  Future<String?> getRouterIP() {
    return _info.getWifiGatewayIP();
  }
}
