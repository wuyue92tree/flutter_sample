import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'unknown_controller.dart';

class UnknownPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final controller = Get.find<UnknownController>();

    return Scaffold(
      appBar: AppBar(
        title: Text('Unknown Page'.tr),
      ),
      body: Center(
        child: Text('Unknown Page'.tr),
      ),
    );
  }
}
