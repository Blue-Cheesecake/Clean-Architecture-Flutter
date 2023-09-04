import '../../core.dart';

class CACFUser {
  CACFUser._();

  static final CACFUser _instance = CACFUser._();
  static CACFUser get instance => _instance;
  Future<String?> get token async {
    String? token = await CACFSecureStorage.instance.read(key: 'token');
    return token;
  }

  Future<void> writeToken(String value) async {
    CACFSecureStorage.instance.write(key: 'token', value: value);
  }

  Future<void> clearToken() async {
    CACFSecureStorage.instance.delete(key: 'token');
  }
}
