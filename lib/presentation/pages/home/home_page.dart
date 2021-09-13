import 'package:flutter/material.dart';
import 'package:flutter_getx_architecture/data/datasource/local_repository_impl.dart';
import 'package:flutter_getx_architecture/presentation/pages/home/home_controller.dart';
import 'package:get/get.dart';

class HomePage extends GetWidget<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          InkWell(
            onTap: () {},
            child: Obx(() {
              final user = controller.user.value;
              return Text('${user.name}');
            }),
          ),
          ElevatedButton(
            onPressed: () {
              LocalRepositoryImpl().clearAllData();
            },
            child: Text('Logout'),
          ),
        ],
      ),
    );
  }
}
