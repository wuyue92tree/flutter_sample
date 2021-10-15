import 'package:flutter/material.dart';
import 'package:flutter_sample/routes/app_routes.dart';
import 'package:get/get.dart';

import 'setting_controller.dart';

class SettingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final controller = Get.find<SettingController>();

    return Scaffold(
      appBar: AppBar(
        title: Text('Setting'.tr),
      ),
      body: Obx(() {
        return ListView(
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
            ),
            ListTile(
              title: Text('enable welcome page'.tr),
              leading: Icon(Icons.web),
              trailing: Switch(
                value: controller.enableWelcomePage.value,
                onChanged: (value) => {
                  controller.enableWelcomePage.value = value,
                  controller.welcomePageSwitchOnChanged()
                },
              ),
            )
          ],
        );
      }),
    );
  }
}
