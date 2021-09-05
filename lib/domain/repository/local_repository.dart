import 'package:flutter_getx_architecture/domain/model/user.dart';

abstract class LocalRepositoryInterface {
  Future<void> clearAllData();
  Future<String?> getToken();
  Future<String> setToken(String token);
  Future<User> getUser();
  Future<User> setUser(User user);
  Future<bool?> isDarkMode();
  Future<void> setDarkMode(bool darkMode);
}
