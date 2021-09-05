import 'package:flutter_getx_architecture/presentation/pages/splash/splash_controller.dart';
import 'package:get/instance_manager.dart';

class SplashBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(
      () => SplashController(
        localRepositoryInterface: Get.find(),
        apiRepositoryInterface: Get.find(),
      ),
    );
  }
}
