// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../controllers/chat/room managment/roomSettingsController.dart';
import '../../../widgets/all_app_bar.dart';

class CameraSettings extends StatelessWidget {
  const CameraSettings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbarBuilder("الكاميرا", true),
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: GetBuilder<RoomSettingController>(builder: (controller) {
          return Column(
            children: [
              RadioListTile(
                title: Text(
                  "الجميع",
                  style: TextStyle(color: Colors.black),
                ),
                value: "all",
                groupValue: controller.cameraRadio,
                onChanged: (value) {
                  controller.changeCameraRadio(value.toString());
                  // setState(() {});
                },
              ),
              RadioListTile(
                title: Text(
                  "الأعضاء والمشرفين فقط",
                  style: TextStyle(color: Colors.black),
                ),
                value: "membersAndAdmins",
                groupValue: controller.cameraRadio,
                onChanged: (value) {
                  controller.changeCameraRadio(value.toString());
                  // setState(() {});
                },
              ),
              RadioListTile(
                title: Text(
                  "المشرفين فقط",
                  style: TextStyle(color: Colors.black),
                ),
                value: "adminsOnly",
                groupValue: controller.cameraRadio,
                onChanged: (value) {
                  controller.changeCameraRadio(value.toString());
                  // setState(() {});
                },
              ),
              RadioListTile(
                title: Text(
                  "لا أحد",
                  style: TextStyle(color: Colors.black),
                ),
                value: "nobody",
                groupValue: controller.cameraRadio,
                onChanged: (value) {
                  // setState(() {});
                  controller.changeCameraRadio(value.toString());
                },
              ),
            ],
          );
        }),
      ),
    );
  }
}
