import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class SecureStorageHelper {
  static const _keyEmail = 'email';
  static const _keyPassword = 'password';
  static final FlutterSecureStorage _storage = const FlutterSecureStorage();

  static Future<void> saveCredentials({required String email, required String password}) async {
    await _storage.write(key: _keyEmail, value: email);
    await _storage.write(key: _keyPassword, value: password);
  }
  static Future<void> saveDraftOrderId({required String key,required String draftOrderId}) async {
    await _storage.write(key: key, value: draftOrderId);
  }
  static Future<String?> getEmail() async {
    return await _storage.read(key: _keyEmail);
  }

  static Future<String?> getPassword() async {
    return await _storage.read(key: _keyPassword);
  }
  static Future<String?> getDraftOrderId({required String key}) async {
    return await _storage.read(key: key);
  }

  static Future<void> clearCredentials() async {
    await _storage.delete(key: _keyEmail);
    await _storage.delete(key: _keyPassword);
  }
}
