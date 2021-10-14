import 'dart:async';
import 'package:flutter_sample/routes/app_routes.dart';
import 'package:get/get.dart';

class WelcomeController extends GetxController {
  RxInt countDownTime = 5.obs;
  late Timer _countDownTimer;

  @override
  void onReady() {
    super.onReady();
    _countDownTimer = Timer.periodic(Duration(seconds: 1), (timer) {
      ///定时任务
      countDownTime.value--;
      if (countDownTime.value == 0) {
        Get.offNamed(AppRoutes.home);
      }
    });
  }

  void skipCountDown() {
    _countDownTimer.cancel();
    Get.offNamed(AppRoutes.home);
  }

  @override
  void dispose() {
    super.dispose();
    _countDownTimer.cancel();
  }
}
