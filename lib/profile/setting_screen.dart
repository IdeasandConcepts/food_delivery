import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:food_delivery/controller/Controller.dart';
import 'package:food_delivery/themes/app_bar_theme.dart';
import 'package:food_delivery/themes/elevated_button_theme.dart';
import 'package:food_delivery/themes/text_theme.dart';
import 'package:food_delivery/utils/colors.dart';
import 'package:food_delivery/utils/custom_text_field.dart';
import 'package:food_delivery/utils/sizes.dart';
import 'package:food_delivery/widgets/text_string.dart';



class Setting extends StatelessWidget {
  Setting({super.key});

 // final Controller c = Get.put(Controller());

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery
        .sizeOf(context)
        .width;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(onPressed: () {},
                      icon: Icon(Icons.arrow_back_ios_new),
                      color: context.theme.appBarTheme.actionsIconTheme?.color,// TAppBarTheme.lightAppBarTheme.actionsIconTheme?.color,
                      iconSize:  context.theme.appBarTheme.actionsIconTheme?.size,
                    ),
                    IconButton(onPressed: () {},
                      icon: Icon(Icons.search),
                      color: context.theme.appBarTheme.actionsIconTheme?.color,// TAppBarTheme.lightAppBarTheme.actionsIconTheme?.color,
                      iconSize:  context.theme.appBarTheme.actionsIconTheme?.size,
                    )
                  ],
                ),
                SizedBox(height: TSizes.spaceBtwItems,),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text("Settings",
                    style: context.theme.textTheme.headlineLarge,),
                ),
                SizedBox(height: TSizes.spaceBtwItems,),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text("Personal Information",
                    style: context.theme.textTheme.titleLarge),
                ),
                SizedBox(height: TSizes.spaceBtwItems,),
                CustomTextFormField(
                    keyBoard: TextInputType.name,hint:"ful name"),
                SizedBox(height: TSizes.spaceBtwItems,),
                CustomTextFormField(
                    keyBoard: TextInputType.datetime,hint:"12/12/1989",),
                SizedBox(height: TSizes.spaceBtwSection,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text("Password",
                        style: context.theme.textTheme.titleLarge),
                    ),
                    InkWell(
                      onTap: () {
                        return getBottomSheetPassword(width,context);
                      },
                      child: Text("Change",
                        style:context.theme.textTheme.bodySmall),
                    ),
                  ],
                ),
                // SizedBox(height: TSizes.spaceBtwItems,),
                // CustomTextFormField(
                //   keyBoard: TextInputType.visiblePassword,hint:"***********",label:   "Password",),
                // SizedBox(height: TSizes.spaceBtwSection,),
                // Align(
                //   alignment: Alignment.centerLeft,
                //   child: Text("Notifications",
                //     style: TTextTheme.lightTextThem.titleLarge,),
                // ),
                // SizedBox(height: TSizes.spaceBtwItems,),
                //getNotificationList(width)
              ],
            ),
          ),
        ),

      ),
    );
  }

  getBottomSheetPassword(double width,BuildContext context) {
    return Get.bottomSheet(
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 400,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text("Chang Password",
                    style:context.theme.textTheme.titleLarge),
                SizedBox(height: TSizes.spaceBtwItems,),
                CustomTextFormField(keyBoard: TextInputType.visiblePassword,
                  hint: "OLd Password",),
                Align(
                  alignment: Alignment.centerRight,
                  child: Text("Forget Password"),
                ),
                SizedBox(height: TSizes.spaceBtwItems,),
                CustomTextFormField(keyBoard: TextInputType.visiblePassword,
                  hint: "New Password",),
                SizedBox(height: TSizes.spaceBtwItems,),
                CustomTextFormField(keyBoard: TextInputType.visiblePassword,
                  hint: "Repeat New Password",),
                SizedBox(height: TSizes.spaceBtwItems,),
                SizedBox(
                  width: width,
                  child: ElevatedButton(

                    onPressed: () {
                      Get.back();
                    },
                    style: context.theme.elevatedButtonTheme.style,//TElevatedButtonTheme.lightElevatedButtonTheme.style,
                    child: Text(
                      "SAVE PASSWORD",
                      style: context.theme.textTheme.bodyLarge,
                    ),
                  ),
                ),

              ],

            ),
          ),
        ),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(
            topRight:Radius.circular( TSizes.buttonRadius),
            topLeft:Radius.circular( TSizes.buttonRadius) )),
     // backgroundColor: cot


    );
  }

  // getNotificationList(double width) {
  //   return SizedBox(
  //         height:200.h ,width: width,
  //     child: ListView.builder(
  //       itemBuilder: (BuildContext context, int index) {
  //         return
  //           Row(
  //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //             children: [
  //               Text(c.Notilable[index], style: TTextTheme.lightTextThem.bodyMedium),
  //               Obx(() =>
  //                   Switch(
  //                     value: c.NafiSelected[index],
  //                     onChanged: (val) => c.NafiSelected[index] = val,
  //                     activeColor: TColors.success,
  //                     trackOutlineColor: MaterialStatePropertyAll(TColors.lightGrey),
  //                     splashRadius: TSizes.buttonHeight,
  //                     inactiveThumbColor: TColors.white,
  //                     inactiveTrackColor: TColors.grey,
  //                   )),
  //
  //             ],
  //           );
  //
  //       },
  //       itemCount: c.NafiSelected.length,
  //     ),
  //   );
  // }
}
