import 'package:flutter_getx_architecture/domain/repository/api_repository.dart';
import 'package:flutter_getx_architecture/domain/repository/local_repository.dart';
import 'package:flutter_getx_architecture/presentation/routes/router.dart';
import 'package:flutter_getx_architecture/presentation/theme.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  final LocalRepositoryInterface localRepositoryInterface;
  final ApiRepositoryInterface apiRepositoryInterface;

  SplashController(
      {required this.localRepositoryInterface,
      required this.apiRepositoryInterface});

  @override
  void onInit() {
    validateTheme();
    super.onInit();
  }

  @override
  void onReady() {
    checkUserToken();
    super.onReady();
  }

  void validateTheme() async {
    final isDark = await localRepositoryInterface.isDarkMode();
    if (isDark != null) {
      Get.changeTheme(isDark ? darkTheme : lightTheme);
    } else {
      Get.changeTheme(Get.isDarkMode ? darkTheme : lightTheme);
    }
  }

  void checkUserToken() async {
    final token = await localRepositoryInterface.getToken();
    if (token != null) {
      final user = await apiRepositoryInterface.getUserFromToken(token);
      await localRepositoryInterface.setUser(user);
      Get.offNamed(AppRoutes.home);
    } else {
      Get.offNamed(AppRoutes.login);
    }
  }
}
