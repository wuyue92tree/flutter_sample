import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'sensors_controller.dart';

class SensorsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final controller = Get.find<SensorsController>();

    return Scaffold(
      appBar: AppBar(
        title: Text('Sensors'.tr),
      ),
      body: Column(
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
          Divider(height: 0,),
          Expanded(
            child: ListView(
              children: [
                ListTile(
                  title: Text('sensors_plus'.tr),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
