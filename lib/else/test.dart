// // ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unrelated_type_equality_checks, prefer_interpolation_to_compose_strings

// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:get/get.dart';
// import 'package:carousel_slider/carousel_slider.dart';
// import '../../controllers/main_scrs_cnr/bottomNavitionBar.dart';
// import '../../controllers/main_scrs_cnr/chathomePageController.dart';
// import '../controllers/messages/privateMessagesController.dart';
// import '../view/chat/In Room Widgets/messageBuilder.dart';
// import '../view/main_screens/VIPRoombuildder.dart';

// final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

// class Test extends StatelessWidget {
//   // const ChatHomePage({super.key});
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       key: scaffoldKey,
//       endDrawerEnableOpenDragGesture: false,
//       body: ListView(
//         physics: BouncingScrollPhysics(),
//         children: [
//           ListView(
//             physics: BouncingScrollPhysics(),
//             shrinkWrap: true,
//             children: [
//               SizedBox(
//                 height: 8.h,
//               ),
//               GetBuilder<ChatHomeController>(
//                   init: ChatHomeController(),
//                   builder: (controller) {
//                     return Row(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         Container(
//                           height: 50.h,
//                           decoration: controller.selectedIndex == 1
//                               ? BoxDecoration(
//                                   borderRadius: BorderRadius.circular(10.r),
//                                   gradient: LinearGradient(
//                                     begin: Alignment.topCenter,
//                                     end: Alignment.bottomCenter,
//                                     colors: [
//                                       Color(0xFFFABD63),
//                                       Color(0xFFF792F0),
//                                     ],
//                                   ),
//                                 )
//                               : BoxDecoration(
//                                   borderRadius: BorderRadius.circular(10.r),
//                                   border: Border.all(
//                                     color: Color(0xFFDADADC),
//                                   ),
//                                 ),
//                         ),
//                       ],
//                     );
//                   }),

//               // _countriesBuilder(),
//               GetBuilder<PrivateMessagesController>(builder: (controller) {
//                 return controller.vipRooms.isEmpty
//                     ? Padding(
//                         padding: EdgeInsets.only(top: 150.h),
//                         child: Center(
//                           child: CircularProgressIndicator(),
//                         ),
//                       )
//                     : controller.selectedIndex != 1
//                         ? ListView.builder(
//                             cacheExtent: 20,
//                             itemCount: controller.vipRooms.length,
//                             physics: NeverScrollableScrollPhysics(),
//                             shrinkWrap: true,
//                             itemBuilder: (context, index) {
//                               return messageBuilder(
//                                   data: controller.vipRooms[index],
//                                   controller: controller);
//                             },
//                           )
//                         : ListView.builder(
//                             cacheExtent: 20,
//                             itemCount: controller.regularRooms.length,
//                             physics: NeverScrollableScrollPhysics(),
//                             shrinkWrap: true,
//                             itemBuilder: (context, index) {
//                               return roomBuilder(
//                                 data: controller.regularRooms[index],
//                                 controller: controller,
//                                 isVIP: false,
//                               );
//                             },
//                           );
//               }),
//             ],
//           ),
//           Container(
//             color: Color(0xFFF1F1F1),
//             height: 35.h,
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.end,
//               children: [
//                 GetBuilder<ChatHomeController>(
//                   builder: (controller) => Text(
//                     "${controller.numberOfConnections} مستخدم ",
//                     textDirection: TextDirection.rtl,
//                     style: TextStyle(
//                         color: Color(0xFFA2ACAC),
//                         fontFamily: 'Portada',
//                         fontSize: 10.sp,
//                         fontWeight: FontWeight.bold),
//                   ),
//                 ),
//                 SizedBox(
//                   width: 5.w,
//                 ),
//                 Icon(Icons.person, color: Color(0xFFA2ACAC), size: 22.sp),
//                 SizedBox(
//                   width: 30.w,
//                 ),
//                 GetBuilder<ChatHomeController>(
//                   builder: (controller) => Text(
//                     "${controller.roomNumber} غرفة ",
//                     textDirection: TextDirection.rtl,
//                     style: TextStyle(
//                         color: Color(0xFFA2ACAC),
//                         fontFamily: 'Portada',
//                         fontSize: 10.sp,
//                         fontWeight: FontWeight.bold),
//                   ),
//                 ),
//                 SizedBox(
//                   width: 5.w,
//                 ),
//                 Image.asset(
//                   'assets/icons/home.png',
//                   width: 19.w,
//                   color: Color(0xFFA2ACAC),
//                   // height: 30.h,
//                 ),
//                 SizedBox(
//                   width: 35.w,
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
