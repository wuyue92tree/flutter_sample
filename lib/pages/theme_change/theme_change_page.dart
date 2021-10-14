import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'theme_change_controller.dart';

class ThemeChangePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final controller = Get.find<ThemeChangeController>();

    return Scaffold(
      appBar: AppBar(title: Text("themeChange".tr)),
      body: Obx(() {
        return ListView(
          children: [
            ListTile(
              title: Text("light mode".tr),
              trailing: Radio(
                value: "light",
                groupValue: controller.themeSelected.value,
                onChanged: (value) =>
                {
                  controller.themeSelected.value = value.toString(),
                  controller.themeChange(),
                },
              ),
            ),
            ListTile(
              title: Text("dark mode".tr),
              trailing: Radio(
                value: "dark",
                groupValue: controller.themeSelected.value,
                onChanged: (value) =>
                {
                  controller.themeSelected.value = value.toString(),
                  controller.themeChange(),
                },
              ),
            ),
          ],
        );
      }),
    );
  }
}
