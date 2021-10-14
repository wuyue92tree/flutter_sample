import 'package:flutter/material.dart';
import 'package:flutter_sample/routes/app_routes.dart';
import 'package:get/get.dart';

import 'home_controller.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final controller = Get.find<HomeController>();

    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Sample".tr),
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text("language change".tr),
            leading: Icon(Icons.language),
            onTap: () => {
              Get.toNamed(AppRoutes.languageChange),
            },
          ),
          ListTile(
            title: Text("theme change".tr),
            leading: Icon(Icons.format_paint),
            onTap: () => {
              Get.toNamed(AppRoutes.themeChange),
            },
          )
        ],
      ),
    );
  }
}
