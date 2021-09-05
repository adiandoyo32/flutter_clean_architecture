import 'package:flutter_getx_architecture/presentation/pages/login/login_controller.dart';
import 'package:get/instance_manager.dart';

class LoginBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(
      () => LoginController(
        localRepositoryInterface: Get.find(),
        apiRepositoryInterface: Get.find(),
      ),
    );
  }
}
