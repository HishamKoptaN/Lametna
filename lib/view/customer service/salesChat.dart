// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../widgets/all_app_bar.dart';

class SalesChat extends StatelessWidget {
  const SalesChat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbarBuilder("فريق المبيعات", false),
      body: Column(
        children: [
          Expanded(child: Placeholder()),
          SizedBox(
            height: 71.h,
            // color: Colors.amber,
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15.w),
                  child: Container(
                    // width: 46.w,
                    // height: 46.h,
                    padding: EdgeInsets.all(10.sp),
                    decoration: BoxDecoration(
                      color: Color(0xffFABD63),
                      borderRadius: BorderRadius.circular(360.r),
                    ),
                    child: Image.network(
                      'assets/icons/send.png',
                      width: 26.w,
                      height: 26.h,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15.w),
                  child: SizedBox(
                    width: 320.w,
                    height: 46.h,
                    child: Directionality(
                      textDirection: TextDirection.rtl,
                      child: TextFormField(
                        cursorColor: Colors.black,

                        // textAlign: TextAlign.center,

                        style: TextStyle(
                          color: Colors.black, //Color(0xff9A8B8B),
                          fontSize: 14.sp,
                          fontFamily: "Portada",
                        ),

                        decoration: InputDecoration(
                          fillColor: Color(0xffF5F5F5),
                          filled: true,
                          contentPadding:
                              EdgeInsets.symmetric(horizontal: 19.w),
                          hintText: "اكتب رسالتك",
                          hintStyle: TextStyle(
                            color: Color(0xFFA2ACAC), //Color(0xff9A8B8B),
                            fontSize: 14.sp,
                            fontFamily: "Portada",
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(360.r),
                            borderSide: BorderSide.none,
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(360.r),
                            borderSide: BorderSide.none,
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(360.r),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
