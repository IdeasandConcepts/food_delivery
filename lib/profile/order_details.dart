// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:get/get.dart';
// import 'package:get/get_core/src/get_main.dart';
// import 'package:get/get_state_manager/get_state_manager.dart';
// import 'package:sahm/controller/Controller.dart';
// import 'package:sahm/controller/controller.dart';
// import 'package:sahm/themes/text_theme.dart';
// import 'package:sahm/utils/colors.dart';
// import 'package:sahm/utils/sizes.dart';
// import 'package:sahm/widgets/text_string.dart';


import 'package:flutter_screenutil/flutter_screenutil.dart';
 import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:flutter/widgets.dart';
import 'package:food_delivery/controller/Controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:food_delivery/controller/Controller.dart';
import 'package:food_delivery/model/request.dart';
import 'package:food_delivery/model/user_orders.dart';
import 'package:food_delivery/themes/elevated_button_theme.dart';
import 'package:food_delivery/themes/outline_button_theme.dart';
import 'package:food_delivery/themes/text_theme.dart';
import 'package:food_delivery/utils/colors.dart';
import 'package:food_delivery/utils/sizes.dart';
import 'package:food_delivery/widgets/text_string.dart';


class OrderDetails extends StatelessWidget {
 final UserOrdersList userOrdersList;

  const OrderDetails({super.key,
    required this.userOrdersList
  });

  @override
  Widget build(BuildContext context) {
   var height = MediaQuery.sizeOf(context).height;
   var width = MediaQuery.sizeOf(context).width;

    //final Controller c = Get.put(Controller());

    return Scaffold(
      //appBar: c.obs("Order Details"),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: TSizes.spaceBtwItems,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                 Text( "Order N0"+"\t"+"${userOrdersList.orderNumber}",
                   style: TTextTheme.lightTextThem.bodyLarge,),
                  Text(


                    userOrdersList.order.uDate.toString(),style: TTextTheme.lightTextThem.bodySmall,),
                ],
              ),
              SizedBox(height: TSizes.spaceBtwItems,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RichText(
                      text: TextSpan(
                        text: "Tracking number"+":"+"\t",
                          style: TTextTheme.lightTextThem.bodySmall,
                        children: [
                          TextSpan(text:userOrdersList.trackingNumber ,
                          style: TTextTheme.lightTextThem.bodyLarge)
                        ]
                      )),
                  Text( TText.onBoardingTitle1,
                    style:TextStyle(color: TColors.success),),

                ],
              ),
              SizedBox(height: TSizes.spaceBtwItems,),
              Padding(
                padding: EdgeInsets.only(left: 15,right: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text( "${userOrdersList.order.requests.length}"+"\t"+"items",
                        style: TTextTheme.lightTextThem.bodyLarge,),
                      Text( userOrdersList.status,
                        style: TTextTheme.lightTextThem.bodyLarge,),

                    ],
                  )),
             // SizedBox(height: TSizes.spaceBtwItems,),

              getCartList(400,340),
            //

            //  c.getCartList(height,width),
               SizedBox(height: TSizes.spaceBtwItems,),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Text( "Order Information",style: TTextTheme.lightTextThem.bodyMedium,)),
              SizedBox(height: TSizes.spaceBtwItems,),
              SizedBox(
                height: 50,
                width: MediaQuery.sizeOf(context).width,
                child: Row(

                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Shipping Address:",
                      style: TTextTheme.lightTextThem.bodySmall,
                    //  maxLines: 2,
                      ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Text(userOrdersList.order.uAddress,
                            style: TTextTheme.lightTextThem.bodyMedium,
                            maxLines: 2,
                        ),
                      ),
                    )
                  ],
           //
                ),
              ),
              SizedBox(height: TSizes.spaceBtwItems,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: Text("Payment Method:",
                      style: TTextTheme.lightTextThem.bodySmall,),
                  ),
                  Image.asset("assets/im/paypall.png",
                    height: TSizes.iconMd,
                    width: TSizes.iconMd,),
                  Text( " **** **** **** 3457",
                        style: TTextTheme.lightTextThem.bodyMedium
                  )],),
              SizedBox(height: TSizes.spaceBtwItems,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("Delivery Method:",
                    style: TTextTheme.lightTextThem.bodySmall,),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text( userOrdersList.order.deliveryMethod,
                        style: TTextTheme.lightTextThem.bodyMedium
                    ),
                  )],),
              SizedBox(height: TSizes.spaceBtwItems,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("Discount",
                    style: TTextTheme.lightTextThem.bodySmall,),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text( "\$ ",
                        style: TTextTheme.lightTextThem.bodyMedium
                    ),
                  )],),
              SizedBox(height: TSizes.spaceBtwItems,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("Total Amount:",
                    style: TTextTheme.lightTextThem.bodySmall,),
                  Padding(
                    padding: const EdgeInsets.all(14.0),
                    child: Text("${userOrdersList.order.uTotalPrice}"+"\$",
                        style: TTextTheme.lightTextThem.bodyMedium
                    ),
                  )],),
           //
           //
           //      Text("Confirmed",style: TextStyle(
           //        fontSize: 18,
           //      color: Colors.brown ),
           //    ),
           //
           // //   Obx(() =>
              getSelectedButton(width,"Re Order", "Home",(){

              },(){
                //outlineTitle.value ="Contact me" ;
              })
            ],
          ),
        ),
      ),
    );
  }
  getCartList(double height,double width) {
    return Wrap(
      children: [
        Card(
          color: TColors.white,
          child: Expanded(
            child: Row(
              children: [
                SizedBox(
                  width: 130,
                  height: height / 8,
                  child: Image.asset(
                    "assets/im/blouse.jpg",
                    fit: BoxFit.cover,
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text("Pullover",
                              style: TTextTheme.lightTextThem.headlineMedium),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text("Mango",
                              style: TTextTheme.lightTextThem.bodySmall),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 12.0),
                              child: RichText(
                                textAlign: TextAlign.start,
                                text: TextSpan(children: [
                                  TextSpan(
                                      text: "Color: ",
                                      style:
                                      TTextTheme.lightTextThem.bodySmall),
                                  TextSpan(
                                      text: "Gray",
                                      style:
                                      TTextTheme.lightTextThem.bodyMedium),
                                ]),
                              ),
                            ),
                            RichText(
                              textAlign: TextAlign.end,
                              text: TextSpan(children: [
                                TextSpan(
                                    text: "Size: ",
                                    style: TTextTheme.lightTextThem.bodySmall),
                                TextSpan(
                                    text: "M",
                                    style: TTextTheme.lightTextThem.bodyMedium),
                              ]),
                            ),
                          ],
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              RichText(
                                textAlign: TextAlign.start,
                                text: TextSpan(children: [
                                  TextSpan(
                                      text: "Units: ",
                                      style:
                                      TTextTheme.lightTextThem.bodySmall),
                                  TextSpan(
                                      text: "1",
                                      style:
                                      TTextTheme.lightTextThem.bodyMedium),
                                ]),
                              ),
                              Text("51\$")
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Card(
          color: TColors.white,
          child: Expanded(
            child: Row(
              children: [
                SizedBox(
                  width: 130,
                  height: height / 8,
                  child: Image.asset(
                    "assets/im/tshirt.jpg",
                    fit: BoxFit.cover,
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text("Pullover",
                              style: TTextTheme.lightTextThem.headlineMedium),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text("Mango",
                              style: TTextTheme.lightTextThem.bodySmall),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 12.0),
                              child: RichText(
                                textAlign: TextAlign.start,
                                text: TextSpan(children: [
                                  TextSpan(
                                      text: "Color: ",
                                      style:
                                      TTextTheme.lightTextThem.bodySmall),
                                  TextSpan(
                                      text: "Gray",
                                      style:
                                      TTextTheme.lightTextThem.bodyMedium),
                                ]),
                              ),
                            ),
                            RichText(
                              textAlign: TextAlign.end,
                              text: TextSpan(children: [
                                TextSpan(
                                    text: "Size: ",
                                    style: TTextTheme.lightTextThem.bodySmall),
                                TextSpan(
                                    text: "M",
                                    style: TTextTheme.lightTextThem.bodyMedium),
                              ]),
                            ),
                          ],
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              RichText(
                                textAlign: TextAlign.start,
                                text: TextSpan(children: [
                                  TextSpan(
                                      text: "Units: ",
                                      style:
                                      TTextTheme.lightTextThem.bodySmall),
                                  TextSpan(
                                      text: "1",
                                      style:
                                      TTextTheme.lightTextThem.bodyMedium),
                                ]),
                              ),
                              Text("51\$")
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Card(
          color: TColors.white,
          child: Expanded(
            child: Row(
              children: [
                SizedBox(
                  width: 130,
                  height: height / 8,
                  child: Image.asset(
                    "assets/im/blouse.jpg",
                    fit: BoxFit.cover,
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text("Pullover",
                              style: TTextTheme.lightTextThem.headlineMedium),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text("Mango",
                              style: TTextTheme.lightTextThem.bodySmall),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 12.0),
                              child: RichText(
                                textAlign: TextAlign.start,
                                text: TextSpan(children: [
                                  TextSpan(
                                      text: "Color: ",
                                      style:
                                      TTextTheme.lightTextThem.bodySmall),
                                  TextSpan(
                                      text: "Gray",
                                      style:
                                      TTextTheme.lightTextThem.bodyMedium),
                                ]),
                              ),
                            ),
                            RichText(
                              textAlign: TextAlign.end,
                              text: TextSpan(children: [
                                TextSpan(
                                    text: "Size: ",
                                    style: TTextTheme.lightTextThem.bodySmall),
                                TextSpan(
                                    text: "M",
                                    style: TTextTheme.lightTextThem.bodyMedium),
                              ]),
                            ),
                          ],
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              RichText(
                                textAlign: TextAlign.start,
                                text: TextSpan(children: [
                                  TextSpan(
                                      text: "Units: ",
                                      style:
                                      TTextTheme.lightTextThem.bodySmall),
                                  TextSpan(
                                      text: "1",
                                      style:
                                      TTextTheme.lightTextThem.bodyMedium),
                                ]),
                              ),
                              Text("51\$")
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
  getSelectedButton(double width, String outlineTitle, String elevatedTitle,
      void Function()? onPressedElevated, void Function()? onPressedOutline) {
    return Container(
      color: Colors.white,
      width: width,
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SizedBox(
            height: 45, //TSizes.buttonHeight ,
            width: TSizes.buttonWidth,
            child: OutlinedButton(
              onPressed: onPressedOutline,
              style: TOutLineButtonTheme.lightOutlinebuttonTheme.style,
              child: Center(
                  child: Text(
                    outlineTitle,
                    style: TTextTheme.lightTextThem.bodyLarge,
                  )),
            ),
          ),
          SizedBox(
            height: 50, //TSizes.buttonHeight ,
            width: TSizes.buttonWidth,
            child: ElevatedButton(
              onPressed: onPressedElevated,
              style: TElevatedButtonTheme.lightElevatedButtonTheme.style,
              child: Text(
                elevatedTitle,
                style: TTextTheme.darkTextThem.bodyLarge,
              ),
            ),
          )
          /*   Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: 130 ,
                    height: 50,
                    child:Center(child: Text("Discard")),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(style: BorderStyle.solid)

                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 50,
                    width: 130 ,
                    decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: Center(child: Text("Apply")),
                  ),
                ),*/
        ],
      ),
    );
  }

}


