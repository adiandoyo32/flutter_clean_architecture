import 'package:flutter_getx_architecture/data/datasource/api_repository_impl.dart';
import 'package:flutter_getx_architecture/data/datasource/local_repository_impl.dart';
import 'package:flutter_getx_architecture/domain/repository/api_repository.dart';
import 'package:flutter_getx_architecture/domain/repository/local_repository.dart';
import 'package:get/instance_manager.dart';

class MainBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LocalRepositoryInterface>(() => LocalRepositoryImpl());
    Get.lazyPut<ApiRepositoryInterface>(() => ApiRepositoryImpl());
  }
}
