import 'dart:async';

import 'package:battery_plus/battery_plus.dart';
import 'package:sensors_plus/sensors_plus.dart';
import 'package:get/get.dart';

class SensorsController extends GetxController {
  var battery = Battery().obs;
  var batteryState = BatteryState.unknown.obs;
  StreamSubscription<BatteryState>? batteryStateSubscription;

  var accelerometerEvent = AccelerometerEvent(0, 0, 0).obs;
  var userAccelerometerEvent = UserAccelerometerEvent(0, 0, 0).obs;
  var gyroscopeEvent = GyroscopeEvent(0, 0, 0).obs;
  StreamSubscription<AccelerometerEvent>? accelerometerEventSubscription;
  StreamSubscription<UserAccelerometerEvent>?
      userAccelerometerEventSubscription;
  StreamSubscription<GyroscopeEvent>? gyroscopeEventSubscription;

  @override
  void onReady() {
    super.onReady();
    enable_battery_plus_event();
  }

  void enable_battery_plus_event() {
    batteryStateSubscription =
        battery.value.onBatteryStateChanged.listen((BatteryState state) {
      batteryState.value = state;
    });
  }

  void disable_battery_plus_event() {
    batteryStateSubscription!.cancel();
  }

  void enable_sensors_plus_event() {
    accelerometerEventSubscription =
        accelerometerEvents.listen((AccelerometerEvent event) {
      accelerometerEvent.value = event;
    });
    // [AccelerometerEvent (x: 0.0, y: 9.8, z: 0.0)]

    userAccelerometerEventSubscription =
        userAccelerometerEvents.listen((UserAccelerometerEvent event) {
          userAccelerometerEvent.value = event;
    });
    // [UserAccelerometerEvent (x: 0.0, y: 0.0, z: 0.0)]

    gyroscopeEventSubscription = gyroscopeEvents.listen((GyroscopeEvent event) {
      gyroscopeEvent.value = event;
    });
  }

  void disable_sensors_plus_event() {
    accelerometerEventSubscription!.cancel();
    userAccelerometerEventSubscription!.cancel();
    gyroscopeEventSubscription!.cancel();
  }

  @override
  void onClose() {
    super.onClose();
    // cancel batteryStateSubscription
    disable_battery_plus_event();
    disable_sensors_plus_event();
  }
}
