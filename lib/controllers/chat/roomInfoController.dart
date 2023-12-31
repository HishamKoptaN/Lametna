import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import '../userData/variables.dart';

class RoomInfoController extends GetxController {
  var guestTime;
  var memberTime;
  var adminTime;
  var superAdminTime;
  var masterTime;
  var tiers = [
    {
      "name": "زائر",
      "color": Color(0xFF7F52A3),
    },
    {
      "name": "ممبر",
      "color": Color(0xFF7F52A3),
    },
    {
      "name": "أدمن",
      "color": Color(0xFF5D00FF),
    },
    {
      "name": "سوبر أدمن",
      "color": Color(0xFF00B041),
    },
    {
      "name": "ماستر",
      "color": Color(0xFFFF0000),
    },
  ];

  Future<dynamic> getData() async {
    try {
      var url = Uri.parse(roomInfoUrl);
      var response = await http.post(url, body: {
        "roomId": Get.arguments["room_id"],
      });
      final dataBody = json.decode(response.body);
      print(dataBody);
      guestTime = dataBody["data"][0]["guestCallTime"];
      memberTime = dataBody["data"][0]["memberCallTime"];
      adminTime = dataBody["data"][0]["adminCallTime"];
      superAdminTime = dataBody["data"][0]["superAdminCallTime"];
      masterTime = dataBody["data"][0]["masterCallTime"];
      // streamController.sink.add(dataBody);
      return dataBody;
    } catch (e) {}
  }
}
