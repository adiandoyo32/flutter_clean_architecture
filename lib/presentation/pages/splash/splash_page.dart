import 'package:flutter/material.dart';
import 'package:flutter_getx_architecture/presentation/pages/splash/splash_controller.dart';
import 'package:get/get.dart';

class SplashPage extends GetWidget<SplashController> {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Splash'),
      ),
    );
  }
}
