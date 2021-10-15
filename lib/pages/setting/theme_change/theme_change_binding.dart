import 'package:get/get.dart';

import 'theme_change_controller.dart';

class ThemeChangeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ThemeChangeController());
  }
}
