import 'package:flutter/material.dart';
import 'package:flutter_sample/generated/l10n.dart';
import 'package:get/get.dart';

import 'welcome_controller.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final controller = Get.find<WelcomeController>();

    return Scaffold(
      body: Obx(() {
        return Container(
          child: Padding(
            padding: const EdgeInsets.only(top: 200),
            child: Column(
              children: [
                Center(
                  child: Text(S.of(context).welcome +
                      controller.countDownTime.value.toString()),
                ),
                TextButton(
                  onPressed: () => {controller.skipCountDown()},
                  child: Text(S.of(context).welcomeSkipButton),
                ),
              ],
            ),
          ),
        );
      }),
    );
  }
}
