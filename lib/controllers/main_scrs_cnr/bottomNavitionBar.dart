import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import '../../view/main_screens/chatHomePage.dart';
import '../../view/messages/messages.dart';
import '../../view/profile/profile.dart';
import '../userData/userCredentials.dart';
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
    Profile(),
    // Moments(appBar: 1),
    // Get.toNamed()
    Messages(),
    // isGuest == false && isRole == false ? Messages() : null,
    HomePage(),
    // Container()
  ];

  void onItemTapped(int index) {
    selectedIndex = index;
    update();
  }
}
