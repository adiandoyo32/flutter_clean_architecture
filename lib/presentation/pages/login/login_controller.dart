import 'package:flutter/material.dart';
import 'package:flutter_getx_architecture/domain/exception/auth_exception.dart';
import 'package:flutter_getx_architecture/domain/repository/api_repository.dart';
import 'package:flutter_getx_architecture/domain/repository/local_repository.dart';
import 'package:flutter_getx_architecture/domain/request/login_request.dart';
import 'package:flutter_getx_architecture/domain/response/login_response.dart';
import 'package:get/state_manager.dart';

enum LoginState { loading, initial }

class LoginController extends GetxController {
  final LocalRepositoryInterface localRepositoryInterface;
  final ApiRepositoryInterface apiRepositoryInterface;

  LoginController({
    required this.localRepositoryInterface,
    required this.apiRepositoryInterface,
  });

  final usernameTextController = TextEditingController();
  final passwordTextController = TextEditingController();
  var loginState = LoginState.initial.obs;

  Future<bool> login() async {
    final username = usernameTextController.text;
    final password = passwordTextController.text;

    try {
      loginState(LoginState.loading);
      final LoginResponse loginResponse = await apiRepositoryInterface
          .login(LoginRequest(username: username, password: password));

      await localRepositoryInterface.setToken(loginResponse.token);
      await localRepositoryInterface.setUser(loginResponse.user);

      return true;
    } on AuthException catch (_) {
      loginState(LoginState.initial);
      return false;
    }
  }
}
