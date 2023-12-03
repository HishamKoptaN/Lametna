// ignore_for_file: unused_import
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'controllers/side pages/trophy..dart';
import 'test.dart';
import 'view/ChoosingPage.dart';
import 'view/LoginPage.dart';
import 'view/chat/about.dart';
import 'view/chat/addAccount.dart';
import 'view/chat/in room chat/previousChats.dart';
import 'view/chat/in room chat/privateMessageRoom.dart';
import 'view/chat/moments/moments.dart';
import 'view/chat/moments/postMoment.dart';
import 'view/chat/moments/viewComments.dart';
import 'view/chat/room mangement/advancedSettings.dart';
import 'view/chat/room mangement/block/block.dart';
import 'view/chat/room mangement/roles/addRole.dart';
import 'view/chat/room mangement/roles/editRole.dart';
import 'view/chat/room mangement/roomSettings.dart';
import 'view/chat/room mangement/side pages/callSettings.dart';
import 'view/chat/room mangement/side pages/cameraSettings.dart';
import 'view/chat/room mangement/side pages/privateMessages.dart';
import 'view/chat/roomInfo.dart';
import 'view/chat/roomMangement.dart';
import 'view/chat/roomPageSettings.dart';
import 'view/chatHomePage.dart';
import 'view/control panel/addRoot.dart';
import 'view/control panel/changePasswordRoom.dart';
import 'view/controller panel/controlPanel.dart';
import 'view/countries.dart';
import 'view/customer service/ComplaintsSuggestions.dart';
import 'view/customer service/customerServiceChat.dart';
import 'view/customer service/customerServiceHomePage.dart';
import 'view/customer service/salesChat.dart';
import 'view/favourite/favourite.dart';
import 'view/home.dart';
import 'view/messages/privateMessages.dart';
import 'view/profile/changeBackground.dart';
import 'view/profile/editBackground.dart';
import 'view/profile/editPerson.dart';
import 'view/profile/editPersonalProfile.dart';
import 'view/profile/editProfile.dart';
import 'view/profile/profile.dart';
import 'view/side pages/search.dart';
import 'view/side pages/viewImage.dart';
import 'view/store/storeDetails.dart';
import 'view/store/test.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();
  runApp(
    DevicePreview(
      builder: (context) => const MyApp(),
      enabled: false,
    ),
    // MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Set the fit size (Find your UI design, look at the dimensions of the device screen and fill it in,unit in dp)
    return ScreenUtilInit(
      designSize: const Size(428, 926),
      // minTextAdapt: true,
      // splitScreenMode: true,
      builder: (context, child) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          getPages: [
            GetPage(
              name: '/choosingPage',
              page: () => choosingPage(),
            ),
            GetPage(
              name: '/loginPage',
              page: () => LoginPage(),
            ),

            GetPage(
              name: "/chatHomePage",
              page: () => const HomePage(),
            ),
            GetPage(
              name: "/countries",
              page: () => Countries(),
            ),
            GetPage(
              name: "/home",
              page: () => Home(),
            ),
            // GetPage(name: '/room', page: () => Room()),
            GetPage(
              name: '/customerService',
              page: () => const CustomerService(),
            ),
            GetPage(
              name: '/roomMangement',
              page: () => const RoomMangement(),
            ),
            GetPage(
              name: '/roomSettingsPage',
              page: () => RoomSettingsPage(),
            ),
            GetPage(
              name: '/customerServiceChat',
              page: () => const CustomerServiceChat(),
            ),
            GetPage(
              name: '/salesChat',
              page: () => const SalesChat(),
            ),
            GetPage(
              name: '/complaintsSuggestions',
              page: () => const ComplaintsSuggestions(),
            ),
            GetPage(
              name: '/about',
              page: () => const About(),
            ),
            GetPage(
              name: '/moments',
              page: () => Moments(),
            ),
            GetPage(
              name: '/roomInfo',
              page: () => RoomInfo(),
            ),
            GetPage(
              name: '/privateMessage',
              page: () => PrivateMessage(),
            ),
            GetPage(
              name: '/addAccount',
              page: () => const AddAccount(),
            ),
            GetPage(
              name: '/roles',
              page: () => const RolesPage(),
            ),
            GetPage(
              name: "/search",
              page: () => Search(),
            ),
            // GetPage(name: "/roomSetting", page: () => RoomSettings()),
            GetPage(
              name: "/favourite",
              page: () => const Favourite(),
            ),
            GetPage(
              name: "/trophy",
              page: () => const Trophy(),
            ),
            GetPage(
              name: "/changeBackground",
              page: () => const ChangeBackground(),
            ),
            GetPage(
              name: "/editBackground",
              page: () => const EditBackground(),
            ),
            GetPage(
              name: "/editPerson",
              page: () => const EditPerson(),
            ),
            GetPage(
              name: "/profile",
              page: () => const Profile(),
            ),
            GetPage(
              name: "/editProfile",
              page: () => const EditProfileAccount(),
            ),
            GetPage(
              name: "/mainControllerPanel",
              page: () => const ControlPanel(),
            ),
            GetPage(
              name: "/changePasswordRoom",
              page: () => const ChangePasswordRoom(),
            ),
            GetPage(
              name: "/privateMessageRoom",
              page: () => PrivateMessageRoom(),
            ),
            GetPage(
              name: "/addRoot",
              page: () => AddRoot(),
            ),
            GetPage(
              name: "/postMoment",
              page: () => const PostMoment(),
            ),
            GetPage(
              name: "/viewImage",
              page: () => const ViewImage(),
            ),
            GetPage(
              name: '/previousChat',
              page: () => const PreviosChat(),
            ),
            GetPage(
              name: "/advancedSettings",
              page: () => const AdvancedSettings(),
            ),
            GetPage(
              name: "/cameraSettings",
              page: () => const CameraSettings(),
            ),
            GetPage(
              name: "/callSettings",
              page: () => const CallSettings(),
            ),
            GetPage(
              name: "/blockPage",
              page: () => const Blocked(),
            ),
            GetPage(
              name: "/viewComments",
              page: () => const ViewComments(),
            ),
            GetPage(
              name: "/editPersonalProfile",
              page: () => const EditPersonalProfile(),
            ),
            GetPage(
              name: "/privateMessagesSettings",
              page: () => const PrivateMessages(),
            ),
            // GetPage(name: "/roomReport", page: () => RoomReport()),
            GetPage(
              name: "/storeDetails",
              page: () => const StoreDetails(),
            ),
            GetPage(
              name: "/editRole",
              page: () => const EditRole(),
            ),
          ],
          title: 'First Method',
          // You can use the library anywhere in the app even in theme
          theme: ThemeData(
            primarySwatch: Colors.blue,
            textTheme: Typography.englishLike2018.apply(fontSizeFactor: 1.sp),
          ),
          home: child,
        );
      },
      // child: SimpleRecorder(),
      // child: choosingPage(), //////////////////
      child: choosingPage(),
    );
  }
}
