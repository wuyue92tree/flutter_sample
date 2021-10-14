import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:flutter_sample/common/services/services.dart';

class DenpendencyInjection {
  static Future<void> init() async {
    // init storage
    await Get.putAsync(() => StorageService().init());
  }
}
