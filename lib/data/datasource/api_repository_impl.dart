import 'package:flutter_getx_architecture/domain/exception/auth_exception.dart';
import 'package:flutter_getx_architecture/domain/model/product.dart';
import 'package:flutter_getx_architecture/domain/model/user.dart';
import 'package:flutter_getx_architecture/domain/repository/api_repository.dart';
import 'package:flutter_getx_architecture/domain/response/login_response.dart';
import 'package:flutter_getx_architecture/domain/request/login_request.dart';

class ApiRepositoryImpl extends ApiRepositoryInterface {
  @override
  Future<User> getUserFromToken(String token) async {
    await Future.delayed(const Duration(seconds: 3));
    if (token == '001') {
      return User(name: 'admin', username: 'admin');
    }

    throw AuthException();
  }

  @override
  Future<LoginResponse> login(LoginRequest loginRequest) async {
    await Future.delayed(const Duration(seconds: 2));
    if (loginRequest.username == 'admin' && loginRequest.password == 'admin') {
      return LoginResponse(
        token: '001',
        user: User(name: 'admin', username: 'admin'),
      );
    }

    throw AuthException();
  }

  @override
  Future<void> logout(String token) async {
    await Future.delayed(const Duration(seconds: 3));
    print('logout ...');
  }

  @override
  Future<List<Product>> getProducts() async {
    await Future.delayed(const Duration(seconds: 1));
    List<Product> products = [];
    return products;
  }
}
