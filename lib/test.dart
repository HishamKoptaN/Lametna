// // ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_interpolation_to_compose_strings

// import 'dart:async';

// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:get/get.dart';

// import '../../controllers/side pages/messagesController.dart';
// import '../../widgets/all_app_bar.dart';

// class Messages extends StatelessWidget {
//   final MessagesController messagesController = MessagesController();

//   Messages({Key? key}) : super(key: key);
//   final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

//   var images = [
//     "https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8cGVyc29ufGVufDB8fDB8fHww&w=1000&q=80",
//     "https://engineering.unl.edu/images/staff/Kayla-Person.jpg",
//     "https://www.wilsoncenter.org/sites/default/files/styles/large/public/media/images/person/james-person-1.jpg",
//   ];
//   var users = [
//     {
//       "name": "محمد",
//       "image":
//           "https://www.wilsoncenter.org/sites/default/files/styles/large/public/media/images/person/james-person-1.jpg"
//     },
//     {
//       "name": "احمد",
//       "image": "https://engineering.unl.edu/images/staff/Kayla-Person.jpg"
//     },
//     {
//       "name": "محمود",
//       "image":
//           "https://www.wilsoncenter.org/sites/default/files/styles/large/public/media/images/person/james-person-1.jpg"
//     },
//     {
//       "name": "محمد",
//       "image": "https://engineering.unl.edu/images/staff/Kayla-Person.jpg"
//     },
//     {
//       "name": "احمد",
//       "image":
//           "https://www.wilsoncenter.org/sites/default/files/styles/large/public/media/images/person/james-person-1.jpg"
//     },
//     {
//       "name": "محمود",
//       "image":
//           "https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8cGVyc29ufGVufDB8fDB8fHww&w=1000&q=80"
//     },
//     {
//       "name": "محمد",
//       "image":
//           "https://www.wilsoncenter.org/sites/default/files/styles/large/public/media/images/person/james-person-1.jpg"
//     },
//     {
//       "name": "احمد",
//       "image":
//           "https://www.wilsoncenter.org/sites/default/files/styles/large/public/media/images/person/james-person-1.jpg"
//     },
//     {
//       "name": "محمود",
//       "image":
//           "https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8cGVyc29ufGVufDB8fDB8fHww&w=1000&q=80"
//     },
//   ];
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       key: _scaffoldKey,
//       appBar: PreferredSize(
//         preferredSize: Size.fromHeight(72.h),
//         child: Container(
//           decoration: BoxDecoration(
//             gradient: LinearGradient(
//               colors: [
//                 Color(0xFFF792F0),
//                 Color(0xFFFABD63),
//               ],
//               begin: Alignment.centerLeft,
//               end: Alignment.centerRight,
//             ),
//           ),
//           child: AppBar(
//             backgroundColor: Colors.transparent,
//             centerTitle: true,
//             elevation: 0,
//             leadingWidth: 130.w,
//             leading: Row(
//               children: [
//                 IconButton(
//                   onPressed: () {},
//                   icon: const Icon(Icons.notifications),
//                 ),
//                 IconButton(
//                   onPressed: () {},
//                   icon: const Icon(Icons.favorite),
//                 ),
//               ],
//             ),
//             title: Text(
//               "Lametna",
//               style: TextStyle(
//                 fontSize: 20.sp,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//             actions: [
//               Image.network(
//                 "assets/images/trophy.png",
//                 width: 55.w,
//                 height: 30.h,
//               ),
//               IconButton(
//                 onPressed: () {
//                   Scaffold.of(context).openDrawer();
//                   _scaffoldKey.currentState!.openEndDrawer();
//                 },
//                 icon: Icon(Icons.menu),
//               ),
//             ],
//           ),
//         ),
//       ),
//       body: ListView(
//         children: [
//           Padding(
//             padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
//             child: SizedBox(
//               height: 50.h,
//               child: GetBuilder<MessagesController>(
//                 init: messagesController,
//                 builder: (controller) {
//                   return TextFormField(
//                     controller: controller.searchController,
//                     textAlign: TextAlign.right,
//                     textAlignVertical: TextAlignVertical.center,
//                     onChanged: (value) => controller.search(),
//                     style: TextStyle(
//                       fontSize: 15.sp,
//                       color: Colors.black,
//                     ),
//                     // ... (متابعة باقي الكود)
//                   );
//                 },
//               ),
//             ),
//           ),
//           // يمكنك استخدام UserMessageContainer هنا
//           UserMessageContainer(
//             image: "image_url",
//             name: "John Doe",
//             id: "user_id",
//             lastMessage: "Hello, how are you?",
//           ),
//           // يمكنك إضافة المزيد من UserMessageContainer حسب الحاجة
//         ],
//       ),
//     );
//   }

//   Future<void> _showSuccess(BuildContext context) async {
//     return showDialog<void>(
//       context: context,

//       // barrierDismissible: false, // user must tap button!
//       builder: (BuildContext context) {
//         return AlertDialog(
//           actionsAlignment: MainAxisAlignment.center,
//           shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.all(
//               Radius.circular(20.r),
//             ),
//           ),
//           content: SingleChildScrollView(
//             child: ListBody(
//               children: [
//                 Icon(
//                   Icons.check_box_outlined,
//                   color: Colors.greenAccent,
//                   size: 50.sp,
//                 ),
//                 SizedBox(
//                   height: 10.h,
//                 ),
//                 Text(
//                   "تم حذف الدردشة بناج",
//                   textAlign: TextAlign.center,
//                   style: TextStyle(
//                       fontSize: 16.sp,
//                       fontWeight: FontWeight.bold,
//                       color: Colors.black,
//                       fontFamily: 'Portada'),
//                 ),
//               ],
//             ),
//           ),
//         );
//       },
//     );
//   }
// }

// class MessagesControllerTwo extends GetxController {
//   TextEditingController searchController = TextEditingController();

//   void search() {
//     // تنفيذ البحث
//   }
// }

// class UserMessageContainer extends StatelessWidget {
//   final String image;
//   final String name;
//   final String id;
//   final String lastMessage;

//   const UserMessageContainer({
//     super.key,
//     required this.image,
//     required this.name,
//     required this.id,
//     required this.lastMessage,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
//       child: Directionality(
//         textDirection: TextDirection.rtl,
//         child: GestureDetector(
//           onTap: () {
//             Get.toNamed("/privateMessage", arguments: [image, name, id]);
//           },
//           child: Container(
//             color: Colors.transparent,
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Row(
//                   children: [
//                     Container(
//                       width: 75.w,
//                       height: 85.h,
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.all(Radius.circular(50.0)),
//                         border: Border.all(
//                           color: Color(0xff43D0CA),
//                           width: 1.5,
//                         ),
//                       ),
//                       child: ClipRRect(
//                         borderRadius: BorderRadius.circular(360.r),
//                         child: Image.network(
//                           image,
//                           errorBuilder: (context, error, stackTrace) =>
//                               ClipRRect(
//                             borderRadius: BorderRadius.circular(360.r),
//                             child: Image.network(
//                               'https://lametnachat.com/upload/imageUser/anonymous.jpg',
//                               fit: BoxFit.cover,
//                             ),
//                           ),
//                         ),
//                       ),
//                     ),
//                     SizedBox(
//                       width: 6.w,
//                     ),
//                     Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text(
//                           name,
//                           style: TextStyle(
//                             fontWeight: FontWeight.bold,
//                             color: Colors.black,
//                             fontSize: 15.sp,
//                             fontFamily: "Portada",
//                           ),
//                         ),
//                         Text(
//                           lastMessage,
//                           style: TextStyle(
//                             fontWeight: FontWeight.bold,
//                             color: Color(0xff707070),
//                             fontSize: 11.sp,
//                             fontFamily: "Portada",
//                           ),
//                         ),
//                       ],
//                     ),
//                   ],
//                 ),
//                 Row(
//                   children: [
//                     Text(
//                       "12:00",
//                       style: TextStyle(
//                         fontWeight: FontWeight.bold,
//                         color: Color(0xff707070),
//                         fontSize: 8.sp,
//                         fontFamily: "Portada",
//                       ),
//                     ),
//                     SizedBox(
//                       width: 6.w,
//                     ),
//                     GestureDetector(
//                       onTap: () {
//                         // _showMyDialog(Get.context!);
//                       },
//                       child: Icon(
//                         Icons.more_vert,
//                         color: Colors.black,
//                       ),
//                     ),
//                   ],
//                 )
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

// class MessagesList extends StatelessWidget {
//   final List<Map<String, String>> conversations;

//   const MessagesList({super.key,});

//   @override
//   Widget build(BuildContext context) {
//     return ListView.builder(
//       itemCount: conversations.length,
//       itemBuilder: (context, index) {
//         Map<String, String> conversation = conversations[index];
//         return UserMessageContainer(
//           image: conversation['image'] ?? '',
//           name: conversation['name'] ?? '',
//           id: conversation['id'] ?? '',
//           lastMessage: conversation['lastMessage'] ?? '',
//         );
//       },
//     );
//   }
// }

// class MainScreen extends StatelessWidget {
//   final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
//   final MessagesControllerTwo messagesController =
//       Get.put(MessagesControllerTwo());

//   MainScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     List<Map<String, String>> conversations = [
//       {"image": "url1", "name": "John Doe", "id": "1", "lastMessage": "Hello"},
//       {"image": "url2", "name": "Jane Doe", "id": "2", "lastMessage": "Hi"},
//       {"image": "url2", "name": "Jane Doe", "id": "2", "lastMessage": "Hi"},
//       {"image": "url2", "name": "Jane Doe", "id": "2", "lastMessage": "Hi"},
//       // ... أكثر من محادثة حسب الحاجة
//     ];

//     return Scaffold(
//       key: _scaffoldKey,
//       appBar: PreferredSize(
//         preferredSize: Size.fromHeight(72.h),
//         child: Container(
//           decoration: BoxDecoration(
//             gradient: LinearGradient(
//               colors: [
//                 Color(0xFFF792F0),
//                 Color(0xFFFABD63),
//               ],
//               begin: Alignment.centerLeft,
//               end: Alignment.centerRight,
//             ),
//           ),
//           child: ChatAppBar(scaffoldKey: _scaffoldKey),
//         ),
//       ),
//       body: ListView(
//         children: [
//           Padding(
//             padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
//             child: SizedBox(
//               height: 50.h,
//               child: GetBuilder<MessagesControllerTwo>(
//                 init: messagesController,
//                 builder: (controller) {
//                   return TextFormField(
//                     controller: controller.searchController,
//                     textAlign: TextAlign.right,
//                     textAlignVertical: TextAlignVertical.center,
//                     onChanged: (value) => controller.search(),
//                     style: TextStyle(
//                       fontSize: 15.sp,
//                       color: Colors.black,
//                     ),
//                   );
//                 },
//               ),
//             ),
//           ),
//           // استخدام MessagesList هنا لعرض المحادثات
//           MessagesList(conversations: conversations),
//         ],
//       ),
//     );
//   }
// }

// Future<void> _showSuccess(BuildContext context) async {
//   return showDialog<void>(
//     context: context,

//     // barrierDismissible: false, // user must tap button!
//     builder: (BuildContext context) {
//       return AlertDialog(
//         actionsAlignment: MainAxisAlignment.center,
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.all(
//             Radius.circular(20.r),
//           ),
//         ),
//         content: SingleChildScrollView(
//           child: ListBody(
//             children: [
//               Icon(
//                 Icons.check_box_outlined,
//                 color: Colors.greenAccent,
//                 size: 50.sp,
//               ),
//               SizedBox(
//                 height: 10.h,
//               ),
//               Text(
//                 "تم حذف الدردشة بناج",
//                 textAlign: TextAlign.center,
//                 style: TextStyle(
//                     fontSize: 16.sp,
//                     fontWeight: FontWeight.bold,
//                     color: Colors.black,
//                     fontFamily: 'Portada'),
//               ),
//             ],
//           ),
//         ),
//       );
//     },
//   );
// }

// Future<void> _showMyDialog(BuildContext context) async {
//   return showDialog<void>(
//     context: context,

//     barrierDismissible: false, // user must tap button!
//     builder: (BuildContext context) {
//       return Padding(
//         padding: EdgeInsets.symmetric(horizontal: 20.w),
//         child: AlertDialog(
//           actionsAlignment: MainAxisAlignment.center,
//           shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.all(
//               Radius.circular(20.r),
//             ),
//           ),
//           content: Directionality(
//             textDirection: TextDirection.rtl,
//             child: SingleChildScrollView(
//               child: ListBody(
//                 children: <Widget>[
//                   RotatedBox(
//                     quarterTurns: 2,
//                     child: Icon(Icons.info_outlined,
//                         color: Colors.red, size: 50.sp),
//                   ),
//                   SizedBox(
//                     height: 10.h,
//                   ),
//                   Text(
//                     'هل تريد حدف الدردشة',
//                     textAlign: TextAlign.center,
//                     style: TextStyle(
//                       fontWeight: FontWeight.bold,
//                       color: Colors.black,
//                       fontSize: 16.sp,
//                       fontFamily: "Portada",
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//           actions: <Widget>[
//             GestureDetector(
//               onTap: () {
//                 Navigator.of(context).pop();
//               },
//               child: Container(
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(15.r),
//                   color: Color(0xffE34848),
//                 ),
//                 child: Padding(
//                   padding:
//                       EdgeInsets.symmetric(horizontal: 40.w, vertical: 5.h),
//                   child: Text(
//                     'إلغاء',
//                     textAlign: TextAlign.center,
//                     style: TextStyle(
//                       fontWeight: FontWeight.bold,
//                       color: Colors.white,
//                       fontSize: 16.sp,
//                       fontFamily: "Portada",
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//             SizedBox(
//               width: 10.w,
//             ),
//             GestureDetector(
//               onTap: () {
//                 Navigator.of(context).pop();
//                 _showSuccess(context);
//               },
//               child: Container(
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(15.r),
//                   color: Color(0xff47A6E5),
//                 ),
//                 child: Padding(
//                   padding:
//                       EdgeInsets.symmetric(horizontal: 40.w, vertical: 5.h),
//                   child: Text(
//                     'موافق',
//                     textAlign: TextAlign.center,
//                     style: TextStyle(
//                       fontWeight: FontWeight.bold,
//                       color: Colors.white,
//                       fontSize: 16.sp,
//                       fontFamily: "Portada",
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       );
//     },
//   );
// }
