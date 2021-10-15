import 'package:get/get.dart';

import 'language_change_controller.dart';

class LanguageChangeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LanguageChangeController());
  }
}
