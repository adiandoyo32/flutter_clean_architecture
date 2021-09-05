import 'package:flutter_getx_architecture/presentation/pages/home/home_page.dart';
import 'package:flutter_getx_architecture/presentation/pages/login/login_binding.dart';
import 'package:flutter_getx_architecture/presentation/pages/login/login_page.dart';
import 'package:flutter_getx_architecture/presentation/pages/splash/splash_binding.dart';
import 'package:flutter_getx_architecture/presentation/pages/splash/splash_page.dart';
import 'package:get/get.dart';

class AppRoutes {
  static final String splash = '/splash';
  static final String login = '/login';
  static final String home = '/home';
}

class AppPages {
  static final pages = [
    GetPage(
      name: AppRoutes.splash,
      page: () => SplashPage(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: AppRoutes.login,
      page: () => LoginPage(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: AppRoutes.home,
      page: () => HomePage(),
    ),
  ];
}
