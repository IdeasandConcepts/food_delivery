//import 'package:flutter/material.dart';
//import 'package:get/get.dart';
//import 'package:sahm/themes/app_bar_theme.dart';
//import 'package:sahm/themes/elevated_button_theme.dart';
//import 'package:sahm/themes/outline_button_theme.dart';
//import 'package:sahm/themes/text_theme.dart';
//import 'package:sahm/utils/colors.dart';
//import 'package:sahm/utils/sizes.dart';
//
//class NavigationBarCont extends GetxController {
//  var tabIndex =0;
//  void changeTabIndex(int index){
//    tabIndex=index;
//    update();
//  }
//}
//
//
//class Controller extends GetxController  {
//  List profiLelable = [
//    "My Order",
//    "Shipping addresses",
//    "Payment method",
//    "Promocode",
//    "My review",
//    "Setting"
//  ];
//
//  List profiLeSublable = [
//    "Already have 12 Orders",
//    "3 addresses",
//    "Visa **34",
//    "you have special Promocodes",
//    "reviews for 4 items",
//    "Notifications , password"
//  ];
//  List Notilable = [
//    "Sales",
//    "New arrivals",
//    "Delivary status changes",
//
//  ];
//
//  RxList NafiSelected = [false,false,false].obs;
//  RxList<bool> isSelect = [false,false,false,false,false,].obs;
//  RxList<bool> isSelectSize = [false,false,false,false,false,].obs;
//  RxList<bool> isSelectCat = [false,false,false,false,false,].obs;
//  Rx<RangeValues> currentRange = RangeValues(30, 60).obs;
//
//
//
//  RxString outlineTitle = "Discard".obs;
//  RxString elevatedTitle = "Apply".obs;
//
//
//
//
//  // void toggle() =>NafiSelected.value =NafiSelected.value ? false :true ;
//
//
//  getAppBar(String pageTitle) {
//    return AppBar(
//      backgroundColor: TAppBarTheme.lightAppBarTheme.backgroundColor,
//      surfaceTintColor: TAppBarTheme.lightAppBarTheme.surfaceTintColor,
//      centerTitle: TAppBarTheme.lightAppBarTheme.centerTitle,
//      elevation: TAppBarTheme.lightAppBarTheme.elevation,
//      toolbarHeight: TSizes.appbarHeight,
//      title: Text(
//        pageTitle,
//        style: TAppBarTheme.lightAppBarTheme.titleTextStyle,
//      ),
//      actions: [
//        IconButton(
//          onPressed: () {},
//          icon: Icon(Icons.search),
//          color: TAppBarTheme.lightAppBarTheme.actionsIconTheme?.color,
//          iconSize: TAppBarTheme.lightAppBarTheme.actionsIconTheme?.size,
//        )
//      ],
//      leading: IconButton(
//        onPressed: () {},
//        icon: Icon(Icons.arrow_back_ios_new),
//        color: TAppBarTheme.lightAppBarTheme.iconTheme?.color,
//        iconSize: TAppBarTheme.lightAppBarTheme.iconTheme?.size,
//      ),
//    );
//  }
//
//  getCartList(double height,double width) {
//    return Wrap(
//      children: [
//        Card(
//          color: TColors.white,
//          child: Expanded(
//            child: Row(
//              children: [
//                SizedBox(
//                  width: 130,
//                  height: height / 8,
//                  child: Image.asset(
//                    "assets/im/blouse.jpg",
//                    fit: BoxFit.cover,
//                  ),
//                ),
//                Expanded(
//                  child: Padding(
//                    padding: const EdgeInsets.all(8.0),
//                    child: Column(
//                      children: [
//                        Align(
//                          alignment: Alignment.centerLeft,
//                          child: Text("Pullover",
//                              style: TTextTheme.lightTextThem.headlineMedium),
//                        ),
//                        Align(
//                          alignment: Alignment.centerLeft,
//                          child: Text("Mango",
//                              style: TTextTheme.lightTextThem.bodySmall),
//                        ),
//                        Row(
//                          mainAxisAlignment: MainAxisAlignment.start,
//                          children: [
//                            Padding(
//                              padding: const EdgeInsets.only(right: 12.0),
//                              child: RichText(
//                                textAlign: TextAlign.start,
//                                text: TextSpan(children: [
//                                  TextSpan(
//                                      text: "Color: ",
//                                      style:
//                                      TTextTheme.lightTextThem.bodySmall),
//                                  TextSpan(
//                                      text: "Gray",
//                                      style:
//                                      TTextTheme.lightTextThem.bodyMedium),
//                                ]),
//                              ),
//                            ),
//                            RichText(
//                              textAlign: TextAlign.end,
//                              text: TextSpan(children: [
//                                TextSpan(
//                                    text: "Size: ",
//                                    style: TTextTheme.lightTextThem.bodySmall),
//                                TextSpan(
//                                    text: "M",
//                                    style: TTextTheme.lightTextThem.bodyMedium),
//                              ]),
//                            ),
//                          ],
//                        ),
//                        Align(
//                          alignment: Alignment.centerLeft,
//                          child: Row(
//                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                            children: [
//                              RichText(
//                                textAlign: TextAlign.start,
//                                text: TextSpan(children: [
//                                  TextSpan(
//                                      text: "Units: ",
//                                      style:
//                                      TTextTheme.lightTextThem.bodySmall),
//                                  TextSpan(
//                                      text: "1",
//                                      style:
//                                      TTextTheme.lightTextThem.bodyMedium),
//                                ]),
//                              ),
//                              Text("51\$")
//                            ],
//                          ),
//                        ),
//                      ],
//                    ),
//                  ),
//                ),
//              ],
//            ),
//          ),
//        ),
//        Card(
//          color: TColors.white,
//          child: Expanded(
//            child: Row(
//              children: [
//                SizedBox(
//                  width: 130,
//                  height: height / 8,
//                  child: Image.asset(
//                    "assets/im/tshirt.jpg",
//                    fit: BoxFit.cover,
//                  ),
//                ),
//                Expanded(
//                  child: Padding(
//                    padding: const EdgeInsets.all(8.0),
//                    child: Column(
//                      children: [
//                        Align(
//                          alignment: Alignment.centerLeft,
//                          child: Text("Pullover",
//                              style: TTextTheme.lightTextThem.headlineMedium),
//                        ),
//                        Align(
//                          alignment: Alignment.centerLeft,
//                          child: Text("Mango",
//                              style: TTextTheme.lightTextThem.bodySmall),
//                        ),
//                        Row(
//                          mainAxisAlignment: MainAxisAlignment.start,
//                          children: [
//                            Padding(
//                              padding: const EdgeInsets.only(right: 12.0),
//                              child: RichText(
//                                textAlign: TextAlign.start,
//                                text: TextSpan(children: [
//                                  TextSpan(
//                                      text: "Color: ",
//                                      style:
//                                      TTextTheme.lightTextThem.bodySmall),
//                                  TextSpan(
//                                      text: "Gray",
//                                      style:
//                                      TTextTheme.lightTextThem.bodyMedium),
//                                ]),
//                              ),
//                            ),
//                            RichText(
//                              textAlign: TextAlign.end,
//                              text: TextSpan(children: [
//                                TextSpan(
//                                    text: "Size: ",
//                                    style: TTextTheme.lightTextThem.bodySmall),
//                                TextSpan(
//                                    text: "M",
//                                    style: TTextTheme.lightTextThem.bodyMedium),
//                              ]),
//                            ),
//                          ],
//                        ),
//                        Align(
//                          alignment: Alignment.centerLeft,
//                          child: Row(
//                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                            children: [
//                              RichText(
//                                textAlign: TextAlign.start,
//                                text: TextSpan(children: [
//                                  TextSpan(
//                                      text: "Units: ",
//                                      style:
//                                      TTextTheme.lightTextThem.bodySmall),
//                                  TextSpan(
//                                      text: "1",
//                                      style:
//                                      TTextTheme.lightTextThem.bodyMedium),
//                                ]),
//                              ),
//                              Text("51\$")
//                            ],
//                          ),
//                        ),
//                      ],
//                    ),
//                  ),
//                ),
//              ],
//            ),
//          ),
//        ),
//        Card(
//          color: TColors.white,
//          child: Expanded(
//            child: Row(
//              children: [
//                SizedBox(
//                  width: 130,
//                  height: height / 8,
//                  child: Image.asset(
//                    "assets/im/blouse.jpg",
//                    fit: BoxFit.cover,
//                  ),
//                ),
//                Expanded(
//                  child: Padding(
//                    padding: const EdgeInsets.all(8.0),
//                    child: Column(
//                      children: [
//                        Align(
//                          alignment: Alignment.centerLeft,
//                          child: Text("Pullover",
//                              style: TTextTheme.lightTextThem.headlineMedium),
//                        ),
//                        Align(
//                          alignment: Alignment.centerLeft,
//                          child: Text("Mango",
//                              style: TTextTheme.lightTextThem.bodySmall),
//                        ),
//                        Row(
//                          mainAxisAlignment: MainAxisAlignment.start,
//                          children: [
//                            Padding(
//                              padding: const EdgeInsets.only(right: 12.0),
//                              child: RichText(
//                                textAlign: TextAlign.start,
//                                text: TextSpan(children: [
//                                  TextSpan(
//                                      text: "Color: ",
//                                      style:
//                                      TTextTheme.lightTextThem.bodySmall),
//                                  TextSpan(
//                                      text: "Gray",
//                                      style:
//                                      TTextTheme.lightTextThem.bodyMedium),
//                                ]),
//                              ),
//                            ),
//                            RichText(
//                              textAlign: TextAlign.end,
//                              text: TextSpan(children: [
//                                TextSpan(
//                                    text: "Size: ",
//                                    style: TTextTheme.lightTextThem.bodySmall),
//                                TextSpan(
//                                    text: "M",
//                                    style: TTextTheme.lightTextThem.bodyMedium),
//                              ]),
//                            ),
//                          ],
//                        ),
//                        Align(
//                          alignment: Alignment.centerLeft,
//                          child: Row(
//                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                            children: [
//                              RichText(
//                                textAlign: TextAlign.start,
//                                text: TextSpan(children: [
//                                  TextSpan(
//                                      text: "Units: ",
//                                      style:
//                                      TTextTheme.lightTextThem.bodySmall),
//                                  TextSpan(
//                                      text: "1",
//                                      style:
//                                      TTextTheme.lightTextThem.bodyMedium),
//                                ]),
//                              ),
//                              Text("51\$")
//                            ],
//                          ),
//                        ),
//                      ],
//                    ),
//                  ),
//                ),
//              ],
//            ),
//          ),
//        ),
//      ],
//    );
//  }
//
//
//  getSelectedButton(double width, String outlineTitle, String elevatedTitle,
//      void Function()? onPressedElevated, void Function()? onPressedOutline) {
//    return Container(
//      color: Colors.white,
//      width: width,
//      height: 100,
//      child: Row(
//        mainAxisAlignment: MainAxisAlignment.spaceAround,
//        children: [
//          SizedBox(
//            height: 45, //TSizes.buttonHeight ,
//            width: TSizes.buttonWidth,
//            child: OutlinedButton(
//              onPressed: onPressedOutline,
//              style: TOutLineButtonTheme.lightOutlinebuttonTheme.style,
//              child: Center(
//                  child: Text(
//                    outlineTitle,
//                    style: TTextTheme.lightTextThem.bodyLarge,
//                  )),
//            ),
//          ),
//          SizedBox(
//            height: 45, //TSizes.buttonHeight ,
//            width: TSizes.buttonWidth,
//            child: ElevatedButton(
//              onPressed: onPressedElevated,
//              style: TElevatedButtonTheme.lightElevatedButtonTheme.style,
//              child: Text(
//                elevatedTitle,
//                style: TTextTheme.darkTextThem.bodyLarge,
//              ),
//            ),
//          )
//          /*   Padding(
//                  padding: const EdgeInsets.all(8.0),
//                  child: Container(
//                    width: 130 ,
//                    height: 50,
//                    child:Center(child: Text("Discard")),
//                    decoration: BoxDecoration(
//                        color: Colors.white,
//                        borderRadius: BorderRadius.circular(10),
//                        border: Border.all(style: BorderStyle.solid)
//
//                    ),
//                  ),
//                ),
//                Padding(
//                  padding: const EdgeInsets.all(8.0),
//                  child: Container(
//                    height: 50,
//                    width: 130 ,
//                    decoration: BoxDecoration(
//                        color: Colors.green,
//                        borderRadius: BorderRadius.circular(10)
//                    ),
//                    child: Center(child: Text("Apply")),
//                  ),
//                ),*/
//        ],
//      ),
//    );
//  }
//}
