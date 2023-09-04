import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import '../../core.dart';

class CACFSecureStorage {
  CACFSecureStorage._();

  static final _instance = CACFSecureStorage._();
  static CACFSecureStorage get instance => _instance;

  final _storage = const FlutterSecureStorage();
}

extension CACFSecureStorageAction on CACFSecureStorage {
  Future<String?> read({required String key}) {
    CACFLog.printDebug(message: '[🎁 Local Storage]: Reading value with key - $key');
    return _storage.read(key: key);
  }

  Future<void> write({required String key, required String value}) {
    CACFLog.printDebug(message: '[🎁 Local Storage]: Writing value - $value with key - $key');
    return _storage.write(key: key, value: value);
  }

  Future<void> delete({required String key}) {
    CACFLog.printDebug(message: '[🎁 Local Storage]: Deleting value with key - $key');
    return _storage.delete(key: key);
  }
}
