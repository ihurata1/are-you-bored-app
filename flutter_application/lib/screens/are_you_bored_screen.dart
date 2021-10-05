import 'package:flutter/material.dart';
import 'package:flutter_application/controller/activity_controller.dart';

import 'package:flutter_application/model/activity_model.dart';
import 'package:get/get.dart';

class AreYouBoredScreen extends StatelessWidget {
  ActivityController activityController = Get.put(ActivityController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "BoredX",
          style: TextStyle(fontSize: 25, color: Colors.black),
        ),
      ),
      body: Obx(
        () => Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(activityController.yazi),
            Center(
              child: Container(
                  margin: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.teal,
                        width: 6,
                      ),
                      borderRadius: BorderRadius.circular(12)),
                  padding: EdgeInsets.all(20),
                  child: Text(
                    activityController.activityModel.value.activity != null
                        ? activityController.activityModel.value.activity
                        : "waiting for activity...",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  )),
            ),
            Column(
              children: <Widget>[
                Text(
                  "Are you bored?",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text(
                  "TAP HERE",
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                ),
                IconButton(
                    padding: EdgeInsets.zero,
                    icon: Icon(
                      Icons.adjust,
                      size: 50,
                    ),
                    onPressed: () {
                      activityController.getActivity();

                      print(activityController.activityModel.value.activity);
                    })
              ],
            ),
          ],
        ),
      ),
    );
  }
}
