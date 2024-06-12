import 'package:flutter/material.dart';
import 'package:food_delivery/controller/localization_and_theme/changelocal_and_theme_controller.dart';
import 'package:get/get.dart';


class LangAndThemeScreen extends GetView<LocaleAndThemeController> {
  const LangAndThemeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    bool isDarkMode = Get.isDarkMode;
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("CHOOSE_LANGUAGE".tr,
                  style: const TextStyle(
                      fontSize: 28, fontWeight: FontWeight.bold)),
              const SizedBox(height: 30),
              ElevatedButton(
                  onPressed: () {
                    controller.changLang("ar");
                  },
                  child: Text("AR".tr,
                      style: const TextStyle(
                          fontSize: 24, fontWeight: FontWeight.bold))),
              ElevatedButton(
                  onPressed: () {
                    controller.changLang("en");
                  },
                  child: Text("EN".tr,
                      style: const TextStyle(
                          fontSize: 24, fontWeight: FontWeight.bold))),
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Dark_Mode".tr,
                      style: const TextStyle(
                          fontSize: 28, fontWeight: FontWeight.bold)),
                  const SizedBox(width: 10),
                  StatefulBuilder(
                    builder: (context, setState) => Switch(
                      value: isDarkMode,
                      onChanged: (value) {
                        isDarkMode = value;
                        controller.changeTheme();
                        setState(() {

                        });
                      },
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
