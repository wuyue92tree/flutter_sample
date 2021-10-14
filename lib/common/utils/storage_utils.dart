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
}
