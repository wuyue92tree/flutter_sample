import 'package:battery_plus/battery_plus.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'sensors_controller.dart';

class SensorsPage extends StatelessWidget {
  final controller = Get.find<SensorsController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sensors'.tr),
      ),
      body: Obx(() {
        return Column(
          children: [
            Container(
              height: 64.0,
              child: Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(20.0),
                    child: Icon(Icons.sensors),
                  ),
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: EdgeInsets.only(top: 10.0),
                          child: Text('Sensors'.tr),
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 10.0),
                          child: Text('Sample for sensors'.tr),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Divider(
              height: 0,
            ),
            Expanded(
              child: ListView(
                children: [
                  ListTile(
                    title: Text('battery_plus'.tr),
                    subtitle: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: buildBatteryState(),
                            style: Theme.of(context).textTheme.bodyText2,
                          ),
                          TextSpan(
                            text: ' / ',
                            style: Theme.of(context).textTheme.bodyText2,
                          ),
                          WidgetSpan(
                            child: buildIsInBatterySaveMode(context),
                          ),
                        ],
                      ),
                    ),
                    trailing: buildBatteryLevel(context),
                  ),
                  ListTile(
                    title: Text('sensors_plus'.tr),
                  ),
                ],
              ),
            )
          ],
        );
      }),
    );
  }

  String buildBatteryState() {
    switch (controller.batteryState.value) {
      case BatteryState.unknown:
        return 'unknown'.tr;
      case BatteryState.charging:
        return 'charging'.tr;
      case BatteryState.discharging:
        return 'discharging'.tr;
      case BatteryState.full:
        return 'full'.tr;
    }
  }

  buildBatteryLevel(BuildContext context) {
    return FutureBuilder<int>(
      future: controller.battery.value.batteryLevel,
      builder: (BuildContext context, AsyncSnapshot<int> snapshot) {
        return Text(snapshot.data.toString() + '%');
      },
    );
  }

  buildIsInBatterySaveMode(BuildContext context) {
    return FutureBuilder<bool>(
      future: controller.battery.value.isInBatterySaveMode,
      builder: (BuildContext context, AsyncSnapshot<bool> snapshot) {
        if (snapshot.data == true) {
          return Text('safe mode'.tr);
        } else {
          return Text('normal mode'.tr);
        }
      },
    );
  }
}
