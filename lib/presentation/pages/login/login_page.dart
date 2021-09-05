import 'package:flutter/material.dart';
import 'package:flutter_getx_architecture/presentation/pages/login/login_controller.dart';
import 'package:flutter_getx_architecture/presentation/routes/router.dart';
import 'package:get/get.dart';

class LoginPage extends GetWidget<LoginController> {
  const LoginPage({Key? key}) : super(key: key);

  void login() async {
    final bool result = await controller.login();
    if (result) {
      Get.offAllNamed(AppRoutes.home);
    } else {
      Get.snackbar('Error', 'Login Failed',
          snackStyle: SnackStyle.FLOATING, snackPosition: SnackPosition.BOTTOM);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Login'),
                new Container(
                  child: new TextField(
                    controller: controller.usernameTextController,
                    decoration: new InputDecoration(labelText: 'Email'),
                  ),
                ),
                new Container(
                  child: new TextField(
                    controller: controller.passwordTextController,
                    decoration: new InputDecoration(labelText: 'Password'),
                    obscureText: true,
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(16),
                  child: ElevatedButton(
                    onPressed: login,
                    child: Text('Login'),
                  ),
                )
              ],
            ),
          ),
          Positioned.fill(
            child: Obx(() {
              if (controller.loginState.value == LoginState.loading) {
                return Container(
                  color: Colors.black26,
                  child: Center(
                    child: CircularProgressIndicator(),
                  ),
                );
              } else {
                return const SizedBox.shrink();
              }
            }),
          )
        ],
      ),
    );
  }
}
