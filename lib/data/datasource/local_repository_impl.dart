import 'package:flutter_getx_architecture/domain/model/user.dart';
import 'package:flutter_getx_architecture/domain/repository/local_repository.dart';
import 'package:shared_preferences/shared_preferences.dart';

const _pref_token = "TOKEN";
const _pref_username = "USERNAME";
const _pref_name = "NAME";
const _pref_image = "IMAGE";

class LocalRepositoryImpl extends LocalRepositoryInterface {
  @override
  Future<void> clearAllData() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.clear();
    throw UnimplementedError();
  }

  @override
  Future<String?> getToken() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    return sharedPreferences.getString(_pref_token);
  }

  @override
  Future<String> setToken(String token) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.setString(_pref_token, token);
    return token;
  }

  @override
  Future<User> getUser() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    final username = sharedPreferences.getString(_pref_username);
    final name = sharedPreferences.getString(_pref_name);
    final image = sharedPreferences.getString(_pref_image);

    final user = User(name: name ?? '', username: username ?? '', image: image);
    return user;
  }

  @override
  Future<User> setUser(User user) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.setString(_pref_name, user.name);
    sharedPreferences.setString(_pref_username, user.username);
    sharedPreferences.setString(_pref_image, user.image ?? '');

    return user;
  }
}
