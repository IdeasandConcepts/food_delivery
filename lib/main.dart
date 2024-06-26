import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:food_delivery/const.dart';
import 'package:food_delivery/auth/auth_page.dart';

import 'controller/services/services.dart';

void main() async {
  await WidgetsFlutterBinding.ensureInitialized();
  await initialServices();
  await Firebase.initializeApp(
      options: FirebaseOptions(
    apiKey: "AIzaSyDRqc6X92Z36U77CYgSchnxL8-7ZqkMHoA",
    appId: "1:148275058372:android:0b8f2db9a7b676377edb91",
    messagingSenderId: 'messagingSenderId',
    projectId: "tawsel-b004b",
    storageBucket: "tawsel-b004b.appspot.com",
  ));
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []

      //[ // SystemUiOverlay.bottom,// SystemUiOverlay.top]
      );
  runApp(const MyApp());
}

final navigatorKey = GlobalKey<NavigatorState>();

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: Size(
          MediaQuery.of(context).size.width,
          MediaQuery.of(context).size.height,
        ),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (_, child) {
          return GetMaterialApp(
              navigatorKey: navigatorKey,
              debugShowCheckedModeBanner: false,
              defaultGlobalState: true,
              title: 'Food',
              theme: ThemeData(
                // data: Theme.of(context).copyWith (
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                hoverColor: Colors.transparent,
                primaryColor: kprimaryColor,
              ),
              locale: Get.deviceLocale,
              home: AndroidAuthPage()
              //WidgetTree()
              //SignUpPage()
              //TabBarTest()
              // AndroidAuthPage()
              // Process()
              //SizesTest()
              // AndroidAuthPage()
              //CardStack()
              //HomeScreen()
              );
        });
  }
}
