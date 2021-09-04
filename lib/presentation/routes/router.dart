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
    ),
    GetPage(
      name: AppRoutes.login,
      page: () => SplashPage(),
    ),
    GetPage(
      name: AppRoutes.home,
      page: () => SplashPage(),
    ),
  ];
}
