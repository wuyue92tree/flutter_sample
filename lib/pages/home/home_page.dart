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
        actions: [
          IconButton(
            onPressed: () => {
              Get.toNamed(AppRoutes.setting),
            },
            icon: Icon(Icons.settings),
          ),
        ],
      ),
      body: ListView(
        children: [
          ListTile(
            leading: Icon(Icons.sensors),
            title: Text('sensors'.tr),
            onTap: () => {
              Get.toNamed(AppRoutes.sensors),
            },
          )
        ],
      ),
    );
  }
}
