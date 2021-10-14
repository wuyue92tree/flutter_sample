import 'package:flutter/material.dart';
import 'package:flutter_sample/common/utils/storage_utils.dart';
import 'package:get/get.dart';

class ThemeChangeController extends GetxController {
  RxString themeSelected = 'light'.obs;

  @override
  void onReady() {
    super.onReady();
    if (StorageUtils().getTheme() != null) {
      themeSelected.value = StorageUtils().getTheme().toString();
    }
  }

  void themeChange() {
    if (themeSelected.value == 'light') {
      Get.changeTheme(ThemeData.light());
    } else {
      Get.changeTheme(ThemeData.dark());
    }
    StorageUtils().saveTheme(themeSelected.value);
  }
}
