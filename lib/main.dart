import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_delivery/profile/myprofile_screen.dart';
import 'package:food_delivery/test.dart';
import 'package:food_delivery/themes/themes.dart';
import 'package:get/get.dart';
import 'package:food_delivery/auth/login.dart';
import 'package:food_delivery/const.dart';
import 'package:food_delivery/home/home.dart';
import 'package:food_delivery/profile/order_tracking.dart';
import 'package:food_delivery/sizes.dart';
import 'package:food_delivery/auth/auth_page.dart';



void main() async{
  await WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  SystemChrome.setEnabledSystemUIMode(
      SystemUiMode.manual,
      overlays:[]

    //[ // SystemUiOverlay.bottom,// SystemUiOverlay.top]
  );
  runApp(const MyApp());
}

final navigatorKey = GlobalKey<NavigatorState>();

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
  return  ScreenUtilInit(
        designSize: const Size(360, 690),
    minTextAdapt: true,
    splitScreenMode: true,
    builder: (_, child) {
    return GetMaterialApp(
        navigatorKey: navigatorKey,
        debugShowCheckedModeBanner: false,
        defaultGlobalState: true,
        title: 'Food',
        darkTheme: TAppTheme.darkTheme,
        themeMode: ThemeMode.system,
        theme: TAppTheme.lightTheme,
        //ThemeData(
          // data: Theme.of(context).copyWith (
       //   splashColor: Colors.transparent,
        //  highlightColor: Colors.transparent,
        //  hoverColor: Colors.transparent,
        //  primaryColor: kprimaryColor,),
        locale: Get.deviceLocale,
      home:MyProfile()
      //TabBarTest()
   //   AndroidAuthPage()
     // Process()
      //SizesTest()
     // AndroidAuthPage()
      //CardStack()
      //HomeScreen()
    );});
  }
}

