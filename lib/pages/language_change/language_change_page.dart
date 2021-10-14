import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'language_change_controller.dart';

class LanguageChangePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final controller = Get.find<LanguageChangeController>();

    return Scaffold(
      appBar: AppBar(title: Text("languageChange".tr)),
      body: Obx(() {
        return ListView(
          children: [
            ListTile(
              title: Text("chinese".tr),
              trailing: Radio(
                value: "chinese",
                groupValue: controller.languageSelected.value,
                onChanged: (value) =>
                {
                  controller.languageSelected.value = value.toString(),
                  controller.languageChange(),
                },
              ),
            ),
            ListTile(
              title: Text("english".tr),
              trailing: Radio(
                value: "english",
                groupValue: controller.languageSelected.value,
                onChanged: (value) =>
                {
                  controller.languageSelected.value = value.toString(),
                  controller.languageChange(),
                },
              ),
            ),
          ],
        );
      }),
    );
  }
}
