import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import '../view/moments/moments.dart';
import '../view/chatHomePage.dart';
import '../view/messages/messages.dart';
import 'userData/userCredentials.dart';
import '../view/store/test.dart';
import 'package:get/get.dart';

class BottomNavigationBarController extends GetxController {
  bool isShow = true;
  int currentIndex = 0;
  int selectedIndex = 0;

  void changeIndex(int index) {
    currentIndex = index;
    update();
  }

  void changeShow() {
    isShow = !isShow;
    update();
  }

  List<Widget> pages = <Widget>[
    HomePage(),
    // Moments(appBar: 1),
    // Get.toNamed()
    Container(),
    if (isGuest == false && isRole == false) Messages() else Container(),
    Store(),
    // Container()
  ];

  void onItemTapped(int index) {
    selectedIndex = index;
    update();
  }
}
