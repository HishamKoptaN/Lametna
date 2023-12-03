// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';

// Widget MainAppBar(GlobalKey scaffordKey) {
//     return PreferredSize(
//       preferredSize: Size.fromHeight(300.h),
//       child: Container(
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.only(
//             bottomLeft: Radius.circular(27.r),
//             bottomRight: Radius.circular(27.r),
//           ),
//           gradient: LinearGradient(
//             colors: [
//               Color(0xFFFABD63),
//               Color(0xFFF792F0),
//             ],
//             begin: Alignment.topCenter,
//             end: Alignment.bottomCenter,
//           ),
//         ),
//         child: AppBar(
//           backgroundColor: Colors.transparent,
//           centerTitle: true,
//           elevation: 0,
//           leadingWidth: 130.w,
//           leading: Row(
//             children: [
//               IconButton(
//                 onPressed: () {},
//                 icon: const Icon(Icons.notifications),
//               ),
//               IconButton(
//                 onPressed: () {},
//                 icon: const Icon(Icons.favorite),
//               ),
//             ],
//           ),
//           title: Text(
//             "Lametna",
//             style: TextStyle(
//               fontSize: 20.sp,
//               fontWeight: FontWeight.bold,
//             ),
//           ),
//           actions: [
//             Image.network(
//               "assets/images/trophy.png",
//               width: 55.w,
//               height: 30.h,
//             ),
//             IconButton(
//                 onPressed: () {
//                   print("object");
//                   // Scaffold.of(context).openDrawer();
//                   _scaffoldKey.currentState!.openEndDrawer();
//                 },
//                 icon: Icon(Icons.menu)),
//             Image.network(
//               "assets/images/trophy.png",
//               width: 55.w,
//               height: 30.h,
//             ),
//             IconButton(
//               onPressed: () {
//                 print("object");
//                 // Scaffold.of(contex).openDrawer();
//                 _scaffoldKey.currentState!.openEndDrawer();
//               },
//               icon: Icon(Icons.menu),
//             ),
//           ],
//           bottom: PreferredSize(
//             preferredSize: Size.fromHeight(0.h),
//             child: Padding(
//               padding: EdgeInsets.symmetric(vertical: 45.h),
//               child: CarouselSlider(
//                 options: CarouselOptions(
//                   height: 150.h,
//                   enableInfiniteScroll: true,
//                   autoPlay: true,
//                   autoPlayInterval: Duration(seconds: 3),
//                   autoPlayAnimationDuration: Duration(milliseconds: 800),
//                   autoPlayCurve: Curves.fastOutSlowIn,
//                   enlargeCenterPage: true,
//                   scrollDirection: Axis.horizontal,
//                 ),
//                 items: [1, 2, 3, 4, 5].map((i) {
//                   return Builder(
//                     builder: (BuildContext context) {
//                       return Image.network(
//                         "assets/images/banner.png",
//                         // width: 100.w,
//                         // height: 100.h,
//                       );
//                     },
//                   );
//                 }).toList(),
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }