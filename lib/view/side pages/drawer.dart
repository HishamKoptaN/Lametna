import 'dart:js';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../controllers/userData/userCredentials.dart';
import '../favourite/favourite.dart';
import '../profile/profile.dart';

Widget homeDrawer() => Drawer(
      child: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFFFABD63),
              Color(0xFFF792F0),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: ListView(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 45.h),
              child: Image.network(
                'assets/icons/logo.png',
                height: 160.h,
              ),
            ),
            isGuest == false && isRole == false
                ? drawerItem(
                    'الملف الشخصي',
                    Icon(
                      Icons.person,
                      color: Colors.white,
                      size: 30.sp,
                    ),
                    () {
                      Get.toNamed("/profile");
                    },
                  )
                : const SizedBox(),
            isGuest == false && isRole == false
                ? drawerItem(
                    'لوحة التحكم',
                    Icon(
                      Icons.person,
                      color: Colors.white,
                      size: 30.sp,
                    ),
                    () {
                      Navigator.push(
                        context as BuildContext,
                        MaterialPageRoute(
                          builder: (context) => Profile(),
                        ),
                      );
                      // Get.toNamed('/mainControllerPanel');
                    },
                  )
                : const SizedBox(),
            drawerItem(
              'المتجر',
              Image.network(
                'assets/icons/bag.png',
                color: Colors.white,
                width: 25.w,
                height: 25.h,
              ),
              () {
                Get.toNamed("/store");
              },
            ),
            drawerItem(
              'الدعم الفني',
              Icon(
                Icons.send,
                color: Colors.white,
                size: 27.sp,
              ),
              () {
                Get.toNamed('/customerService');
              },
            ),
            drawerItem(
              'خروج',
              RotatedBox(
                quarterTurns: 2,
                child: Image.network(
                  "assets/icons/login.png",
                  color: Colors.white,
                  width: 28.w,
                  height: 28.h,
                ),
              ),
              () async {
                //   final SharedPreferences prefs =
                //       await SharedPreferences.getInstance();
                //   prefs.remove('username');
                //   prefs.remove('password');
                //   Get.offAllNamed('/choosingPage');
                //   isGuest = true;
              },
            ),
          ],
        ),
      ),
    );

Widget drawerItem(String title, Widget icon, Function? onTap) => Directionality(
      textDirection: TextDirection.rtl,
      child: ListTile(
        dense: true,
        horizontalTitleGap: 0,
        onTap: onTap as void Function()?,
        leading: icon,
        title: Text(
          title,
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'Portada',
            fontSize: 16.sp,
          ),
        ),
      ),
    );
