import 'dart:async';

import 'package:battery_plus/battery_plus.dart';
import 'package:get/get.dart';

class SensorsController extends GetxController {
  var battery = Battery().obs;
  var batteryState = BatteryState.unknown.obs;
  StreamSubscription<BatteryState>? batteryStateSubscription;

  @override
  void onReady() {
    super.onReady();
    batteryStateSubscription =
        battery.value.onBatteryStateChanged.listen((BatteryState state) {
      batteryState.value = state;
    });
    battery.value.batteryLevel;
    battery.value.isInBatterySaveMode;

  }
}
