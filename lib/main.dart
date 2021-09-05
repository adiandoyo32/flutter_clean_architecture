import 'package:flutter/material.dart';
import 'package:flutter_getx_architecture/presentation/main_binding.dart';
import 'package:flutter_getx_architecture/presentation/routes/router.dart';
import 'package:flutter_getx_architecture/presentation/theme.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: darkTheme,
      // themeMode: lightTheme,
      initialRoute: AppRoutes.splash,
      getPages: AppPages.pages,
      initialBinding: MainBinding(),
    );
  }
}
