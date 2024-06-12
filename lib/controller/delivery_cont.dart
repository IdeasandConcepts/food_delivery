// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:get/get_rx/src/rx_types/rx_types.dart';
// import 'package:get/get_state_manager/src/simple/get_controllers.dart';
//
// import '../themes/app_bar_theme.dart';
// import '../themes/elevated_button_theme.dart';
// import '../themes/outline_button_theme.dart';
// import '../themes/text_theme.dart';
// import '../utils/sizes.dart';
//
// class DeliveryController extends GetxController  {
//   // List profiLelable = ["My Order","Shipping addresses","Payment method","Promocode","My review","Setting"];
//
//   // List profiLeSublable = ["Already have 12 Orders", "3 addresses", "Visa **34", "you have special Promocodes",
//   //   "reviews for 4 items", "Notifications , password"];
//
//   RxInt isSelectSortBy= 7.obs;
//   var isClicked = true.obs;
//   RxBool dilIsOnline = true.obs;
//   RxList NafiSelected = [false,false,false].obs;
//   RxList<bool> isSelect = [false,false,false,false,false,].obs;
//   RxList<bool> isSelectSize = [false,false,false,false,false,].obs;
//   RxList<bool> isSelectCat = [false,false,false,false,false,].obs;
//   RxList<bool> isCheck =[false,false,false,false,false,false,false,false,false,false,].obs;
//
//   Rx<RangeValues> currentRange = RangeValues(30, 60).obs;
//
//
//
//   RxString outlineTitle = "Discard".obs;
//   RxString elevatedTitle = "Apply".obs;
//
//
//
//
//   // void toggle() =>NafiSelected.value =NafiSelected.value ? false :tru
//
//
//
//
//   getAppBar(String pageTitle) {
//     return AppBar(
//       backgroundColor: TAppBarTheme.lightAppBarTheme.backgroundColor,
//       surfaceTintColor: TAppBarTheme.lightAppBarTheme.surfaceTintColor,
//       centerTitle: TAppBarTheme.lightAppBarTheme.centerTitle,
//       elevation: TAppBarTheme.lightAppBarTheme.elevation,
//       toolbarHeight: TSizes.appbarHeight,
//       title: Text(
//         pageTitle,
//         style: TAppBarTheme.lightAppBarTheme.titleTextStyle,
//       ),
//       actions: [
//         IconButton(
//           onPressed: () {},
//           icon: Icon(Icons.search),
//           color: TAppBarTheme.lightAppBarTheme.actionsIconTheme?.color,
//           iconSize: TAppBarTheme.lightAppBarTheme.actionsIconTheme?.size,
//         )
//       ],
//       leading: IconButton(
//         onPressed: () {},
//         icon: Icon(Icons.arrow_back_ios_new),
//         color: TAppBarTheme.lightAppBarTheme.iconTheme?.color,
//         iconSize: TAppBarTheme.lightAppBarTheme.iconTheme?.size,
//       ),
//     );
//   }
//
//   getSelectedButton(double width, String outlineTitle, String elevatedTitle,
//       void Function()? onPressedElevated, void Function()? onPressedOutline) {
//     return Container(
//       color: Colors.white,
//       width: width,
//       height: 100.h,
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceAround,
//         children: [
//           SizedBox(
//             height: 45.h, //TSizes.buttonHeight ,
//             width: TSizes.buttonWidth,
//             child: OutlinedButton(
//               onPressed: onPressedOutline,
//               style: TOutLineButtonTheme.lightOutlinebuttonTheme.style,
//               child: Center(
//                   child: Text(
//                     outlineTitle,
//                     style: TTextTheme.lightTextThem.bodyLarge,
//                   )),
//             ),
//           ),
//           SizedBox(
//             height: 47.h, //TSizes.buttonHeight ,
//             width: TSizes.buttonWidth,
//             child: ElevatedButton(
//               onPressed: onPressedElevated,
//               style: TElevatedButtonTheme.lightElevatedButtonTheme.style,
//               child: Text(
//                 elevatedTitle,
//                 style: TTextTheme.darkTextThem.bodyLarge,
//               ),
//             ),
//           )
//
//         ],
//       ),
//     );
//   }
// }