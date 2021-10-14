import 'package:flutter_sample/common/constants/constants.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class StorageUtils {
  SharedPreferences storage = Get.find();

  String? getLanguage() {
    return storage.getString(StorageConstants.language);
  }

  saveLanguage(String language) {
    return storage.setString(StorageConstants.language, language);
  }

  String? getTheme() {
    return storage.getString(StorageConstants.theme);
  }

  saveTheme(String theme) {
    return storage.setString(StorageConstants.theme, theme);
  }
}
