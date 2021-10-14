import 'dart:ui';

import 'package:flutter_sample/common/utils/storage_utils.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LanguageChangeController extends GetxController {
  RxString languageSelected = 'chinese'.obs;

  @override
  void onReady() {
    super.onReady();
    if (StorageUtils().getLanguage() != null) {
      languageSelected.value = StorageUtils().getLanguage().toString();
    }
  }

  void languageChange() {
    if (languageSelected.value == 'chinese') {
      Get.updateLocale(Locale('zh', 'CN'));
    } else {
      Get.updateLocale(Locale('en', ''));
    }
    StorageUtils().saveLanguage(languageSelected.value);
  }
}
