import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

import '../userData/userCredentials.dart';
import '../userData/variables.dart';

class CustomerServicesController extends GetxController {
  TextEditingController messageController = TextEditingController();
  StreamController messages = StreamController();
  Future getMessage() async {
    var url = Uri.parse(customerServiceMessages);

    var res = await http.post(
      url,
      body: {
        // "user_id": user_id,
        "sender": userName,
        "reciever": "CustomerService",
      },
    );

    var data = json.decode(res.body);
    update();

    messages.sink.add(data);
  }

  sendMessage(String sender) async {
    print("object");
    print(messageController.text);
    if (messageController.text.trim() != "") {
      var url = Uri.parse(customerServiceChat);
      var res = await http.post(url, body: {
        // "user_id": user_id,
        "sender": sender,
        "reciever": "CustomerService",
        "message": messageController.text,
      });
      if (res.statusCode == 200) {
        messageController.clear();
        print("sent");
      }
    }
  }
}
