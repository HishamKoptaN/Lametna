// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class CustomerService extends StatelessWidget {
  const CustomerService({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: GestureDetector(
            onTap: () {
              Get.back();
            },
            child: Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
              size: 25.sp,
            ),
          ),
        ),
        body: Center(
          child: Column(
            children: [
              Image.network(
                'assets/icons/logo.png',
                width: 100.w,
                height: 150.h,
              ),
              SizedBox(
                height: 20.h,
              ),
              Text(
                "الدعم الفني الخاص بلمتنا",
                style: TextStyle(
                    fontSize: 16.sp,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Portada"),
              ),
              SizedBox(
                height: 15.h,
              ),
              SizedBox(
                width: 220.w,
                child: Text("نسعى لتقديم الخدمة الأفضل والرد عليكم بأسرع وقت",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 16.sp,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Portada")),
              ),
              SizedBox(
                height: 80.h,
              ),
              _buildServices(
                "خدمة العملاء",
                Image.network(
                  'assets/icons/customerService.png',
                  width: 35.w,
                  height: 25.sp,
                ),
                "/customerServiceChat",
              ),
              _buildServices(
                "فريق المبيعات  ",
                Icon(Icons.sell, color: Colors.black, size: 25.sp),
                "/salesChat",
              ),
              _buildServices(
                "الشكاوي والمقترحات",
                Image.network(
                  'assets/icons/customerService3.png',
                  width: 35.w,
                  height: 25.sp,
                ),
                "/complaintsSuggestions",
              ),
            ],
          ),
        ));
  }

  Padding _buildServices(String text, Widget icon, String pageName) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 60.w, vertical: 7.h),
      child: ElevatedButton(
        onPressed: () {
          Get.toNamed(pageName);
        },
        style: ElevatedButton.styleFrom(
          primary: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.r),
          ),
        ),
        child: Padding(
          padding: EdgeInsets.all(8.sp),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                text,
                style: TextStyle(
                    fontSize: 16.sp,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Portada"),
              ),
              SizedBox(
                width: 28.w,
              ),
              icon,
            ],
          ),
        ),
      ),
    );
  }
}
