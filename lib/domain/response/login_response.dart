import 'package:flutter_getx_architecture/domain/model/user.dart';

class LoginResponse {
  final String token;
  final User user;

  LoginResponse({required this.token, required this.user});
}
