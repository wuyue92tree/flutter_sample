import 'package:flutter/material.dart';
import 'package:flutter_sample/generated/l10n.dart';
import 'package:get/get.dart';

import 'home_controller.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final controller = Get.find<HomeController>();

    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).appName),
      ),
      body: Center(
        child: Text("主页"),
      ),
    );
  }
}
