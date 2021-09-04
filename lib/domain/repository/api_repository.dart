import 'package:flutter_getx_architecture/domain/model/user.dart';
import 'package:flutter_getx_architecture/domain/request/login_request.dart';
import 'package:flutter_getx_architecture/domain/response/login_response.dart';

abstract class ApiRepositoryInterface {
  Future<User> getUserFromToken(String token);
  Future<LoginResponse> login(LoginRequest loginRequest);
  Future<void> logout(String token);
}
