import 'package:flutter/material.dart';
import 'package:flutter_sample/commons/constats/constants.dart';
import 'package:flutter_sample/routes/app_pages.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: appName,
      initialRoute: AppPages.initialRoute,
      getPages: AppPages.routes,
      unknownRoute: AppPages.unknownRoute,
    );
  }
}