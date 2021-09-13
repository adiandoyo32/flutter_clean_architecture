import 'package:flutter_getx_architecture/domain/model/user.dart';
import 'package:flutter_getx_architecture/domain/repository/local_repository.dart';
import 'package:get/state_manager.dart';

class HomeController extends GetxController {
  final LocalRepositoryInterface localRepositoryInterface;

  HomeController({required this.localRepositoryInterface});
  Rx<User> user = User.empty().obs;

  @override
  void onReady() {
    loadUser();
    super.onReady();
  }

  void loadUser() {
    localRepositoryInterface.getUser().then((value) {
      user(value);
    });
  }
}
