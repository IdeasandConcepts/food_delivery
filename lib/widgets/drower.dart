import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_delivery/auth/auth_page.dart';
import 'package:food_delivery/const.dart';
import 'package:food_delivery/controller/localization_and_theme/changelocal_and_theme_controller.dart';
import 'package:food_delivery/controller/services/services.dart';
import 'package:food_delivery/widgets/default_button.dart';
import 'package:get/get.dart';

class UserDrawer extends StatefulWidget {
  // final int phone;
  final String name, profileImage;
  //final String branch;
  const UserDrawer({
    super.key,
    required this.name,
    // required this.market,
    required this.profileImage,
    // required this.branch,
    // required this.phone,
  });
  @override
  State<UserDrawer> createState() => _UserDrawerState();
}

class _UserDrawerState extends State<UserDrawer> {
  IconData langIcon = Icons.arrow_downward_sharp;
  bool openLang = false;
  LocaleAndThemeController controller = Get.put(LocaleAndThemeController());
  MyServices myServices = Get.find();
  String? sharedlang;
  @override
  void initState() {
    // TODO: implement initState
    sharedlang = myServices.sharedPreferences.getString("lang");
    super.initState();
  }

  //  Locale language = Locale(deviceLocale);
  bool isDarkMode = Get.isDarkMode;
  @override
  Widget build(BuildContext context) {
    return Container(
        height: (openLang == false) ? 300.h : 400.h,
        child: Column(
          //shrinkWrap: true,
          children: <Widget>[
            // SizedBox(height: 40,),
            ListTile(
              leading: ClipOval(
                clipBehavior: Clip.hardEdge,
                child: Material(
                  color: Colors.transparent,
                  child: Ink.image(
                    image: NetworkImage(widget.profileImage),
                    fit: BoxFit.cover,
                    height: 40,
                    width: 40,
                    // ),
                  ),
                ),
              ),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(widget.name),
                  const Icon(Icons.arrow_forward),
                ],
              ),
              onTap: () {
                print(widget.profileImage);
              },
            ),
            ListTile(
              leading: Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      color: kprimaryColor,
                      borderRadius: BorderRadius.circular(50)),
                  child: const Icon(
                    Icons.language,
                    color: Colors.white,
                  )),
              title: GestureDetector(
                onTap: () {
                  setState(() {
                    openLang = !openLang;
                  });
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "LANGUAGE".tr,
                    ),
                    Icon((openLang == true) ? langIcon : Icons.arrow_forward),
                  ],
                ),
              ),
            ),
            if (openLang == true)
              ListTile(
                leading: ElevatedButton(
                    onPressed: () {
                      controller.changLang("ar");
                      setState(() {
                        controller.changLang("ar");
                      });
                      //Navigator.of(context).pop();
                      Get.offAll(AndroidAuthPage());
                    },
                    child: Text("AR".tr,
                        style: const TextStyle(
                            fontSize: 12, fontWeight: FontWeight.bold))),
                title: (sharedlang == "ar")
                    ? const Icon(
                        Icons.done,
                        color: kprimaryColor,
                      )
                    : null,
              ),
            if (openLang == true)
              StatefulBuilder(
                builder: (context, setState) =>
                    //child:
                    ListTile(
                  leading: ElevatedButton(
                      onPressed: () {
                        controller.changLang("en");
                        setState(() {
                          controller.changLang("en");
                        });
                        Get.offAll(AndroidAuthPage());
                        // Navigator.of(context).pop();
                      },
                      child: Text("English".tr,
                          style: const TextStyle(
                              fontSize: 12, fontWeight: FontWeight.bold))),
                  title: (sharedlang == "en")
                      ? const Icon(
                          Icons.done,
                          color: kprimaryColor,
                        )
                      : null,
                ),
              ),
            ListTile(
              leading: StatefulBuilder(
                builder: (context, setState) => Switch(
                  value: isDarkMode,
                  onChanged: (value) {
                    isDarkMode = value;
                    controller.changeTheme();
                    setState(() {
                      controller.changeTheme();
                    });
                  },
                ),
              ),
              title: Text("Dark Mode".tr,
                  style: const TextStyle(
                      fontSize: 12, fontWeight: FontWeight.bold)),
            ),

            ListTile(
              leading: Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      color: kprimaryColor,
                      borderRadius: BorderRadius.circular(50)),
                  child: Icon(
                    Icons.logout_outlined,
                    color: Colors.white,
                  )),
              title: //
                  GestureDetector(
                child: Text("Logout".tr),
                onTap: () {
                  Get.defaultDialog(
                      title: "",
                      content: Container(
                          child: MaterialButton(
                              onPressed: () {
                                FirebaseAuth.instance.signOut();
                                Get.offAll(AndroidAuthPage());
                              },
                              child: DefualtButton(text: "Logout".tr))));
                  // FirebaseAuth.instance.signOut();
                  // Get.offAll(AndroidAuthPage());
                },
              ),

              // ),

              //   ),

              onTap: () {
                Get.defaultDialog(
                    title: "",
                    content: Container(
                        child: MaterialButton(
                            onPressed: () {
                              FirebaseAuth.instance.signOut();
                              Get.offAll(AndroidAuthPage());
                            },
                            child: DefualtButton(text: "Logout".tr))));
              },
            ),
          ],
        )
        // Container(
        //   child: buildHeader(context),
        //   decoration:
        //       BoxDecoration(borderRadius: BorderRadius.circular(30)),
        // ),
        // buildMenueItems(context),
        //   ],
        );
  }
}
