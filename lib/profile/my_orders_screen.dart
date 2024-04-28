import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:food_delivery/const.dart';
import 'package:food_delivery/controller/my_tab_controller.dart';
import 'package:food_delivery/model/model.dart';
import 'package:food_delivery/model/request.dart';
import 'package:food_delivery/model/user_orders.dart';
import 'package:food_delivery/profile/order_details.dart';
import 'package:food_delivery/themes/outline_button_theme.dart';
import 'package:food_delivery/themes/text_theme.dart';
import 'package:food_delivery/utils/colors.dart';
import 'package:food_delivery/utils/sizes.dart';
import 'package:food_delivery/widgets/text_string.dart';
import 'package:intl/intl.dart';

class MyOrders extends StatelessWidget {
   MyOrders({super.key});
  //final  MyTabController  tabController = Get.put(MyTabController());
  @override
  Widget build(BuildContext context) {
 double width = MediaQuery.sizeOf(context).width;

    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //   children: [
              //  IconButton(
              // onPressed: (){},
              //       icon: const Icon(Icons.arrow_back_ios_new)),
              //     IconButton(
              //         onPressed: (){},
              //         icon: const Icon(Icons.search)),
              //   ],
              // ),
              // SizedBox(height: TSizes.spaceBtwSection,),
              // Align(
              //   alignment: Alignment.centerLeft,
              //   child: Text(TText.onBoardingTitle1,
              //       style: TTextTheme.lightTextThem.headlineLarge),
              // ),
               SizedBox(height: TSizes.spaceBtwItems,),
              SizedBox(
                height: 50,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    InkWell(
                      onTap: (){
                        //animatedto(0);
                        },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child:
                        Container(
                          height: 50,
                          width: width/3.5,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(TSizes.buttonRadius),
                          color: TColors.darkerGrey,
                        )  ,
                         child: Center(child: Text( 'Delivered',
                         style: TextStyle(color: TColors.white) ),))
                      ),
                    ),
      //  ])

                    InkWell(
                      onTap: (){ animatedto(1);},
                      child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child:
                              Container(
                                  height: 50,
                                  width: width/3.5,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(TSizes.buttonRadius),
                                    color: TColors.darkerGrey,
                                  )  ,
                                  child: Center(child: Text( 'Processing',
                                    style:
                                    TextStyle(color: TColors.white) )),)
                      ),
                    ),
                    InkWell(
                      onTap: (){ animatedto(2);},
                      child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child:
                              Container(
                                  height: 50,
                                  width: width/3.5,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(TSizes.buttonRadius),
                                    color: TColors.darkerGrey,
                                  ) ,
                                  child: Center(child: Text( 'Cancelled',
                                    style: TextStyle(color: TColors.white))),)
                      ),
                    ),
                  ],
                ),
        ),
            //  SizedBox(height: TSizes.spaceBtwSection,),

                    // Container(
                    //   color: kprimaryColor,
                    //   height: 155,
                    //   child: Padding(
                    //     padding: const EdgeInsets.all(8.0),
                    //     child: Column(
                    //       mainAxisAlignment: MainAxisAlignment.start,
                    //       children: [
                    //         Row(
                    //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //           children: [
                    //             Text( "Order N0 1947034",style: TTextTheme.lightTextThem.bodyLarge,),
                    //             Text( "02-28-2024",style: TTextTheme.lightTextThem.bodySmall,),
                    //           ],
                    //         ),
                    //         SizedBox(height: TSizes.spaceBtwItems,),
                    //         Align(
                    //           alignment: Alignment.centerLeft,
                    //           child: RichText(
                    //               text: TextSpan(
                    //                   text: "  Tracking number:",
                    //                   style: TTextTheme.lightTextThem.bodySmall,
                    //                   children: [
                    //                     TextSpan(text:"  IW34754543455  " ,
                    //                         style: TTextTheme.lightTextThem.bodyLarge)
                    //                   ]
                    //               )),
                    //         ),
                    //         SizedBox(height: TSizes.spaceBtwItems,),
                    //         Row(
                    //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //           children: [
                    //             RichText(
                    //                 text: TextSpan(
                    //                     text: " quantity:",
                    //                     style: TTextTheme.lightTextThem.bodySmall,
                    //                     children: [
                    //                       TextSpan(text:"  3  " ,
                    //                           style: TTextTheme.lightTextThem.bodyLarge)
                    //                     ]
                    //                 )),
                    //             RichText(
                    //                 text: TextSpan(
                    //                     text: "  Total Amount:",
                    //                     style: TTextTheme.lightTextThem.bodySmall,
                    //                     children: [
                    //                       TextSpan(text:"  115\$  " ,
                    //                           style: TTextTheme.lightTextThem.bodyLarge)
                    //                     ]
                    //                 )),
                    //
                    //           ],
                    //         ),
                    //         SizedBox(height: TSizes.spaceBtwItems,),
                    //         Row(
                    //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //           children: [
                    //             OutlinedButton(
                    //               onPressed: (){},
                    //               child: Text("Details",style: TTextTheme.lightTextThem.labelLarge,),
                    //               style: TOutLineButtonTheme.lightOutlinebuttonTheme.style,),
                    //             Text("Delivery",style: TextStyle(color: TColors.success),)
                    //           ],
                    //         ),
                    //         SizedBox(height: TSizes.spaceBtwItems,),
                    //
                    //       ],
                    //     ),
                    //   ),
                    // ),

              Container(
                height: 500,
                child:  SingleChildScrollView(
                  physics:const BouncingScrollPhysics(),
                  child: StreamBuilder<List<UserOrdersList>>(
                      stream: readUserOrderList(),
                      builder: (context, snapshot) {
                        if (snapshot.hasError) {
                          return Text(' Error ya Ahmed :: ${snapshot.error}');
                        } else if (snapshot.hasData) {
                          final task = snapshot.data!;
                          return ListView(
                            shrinkWrap: true,
                            children: task.map(getOrderCard).toList(),
                          );
                        } else {
                          return Center(
                            child: CircularProgressIndicator(),
                          );
                        }
                      }),
                ),
                // child: ListView.builder(
                //     itemCount: userOrderList.length,
                //     itemBuilder: (context,index){
                //
                // return
                //   getOrderCard(
                //     userOrderList[index]);
                //     //
                //     //   userOrderList[index]["requests"],
                //     //   userOrderList[index]["user_name"],
                //     //   userOrderList[index]["location"],
                //     //
                //     //   //
                //     //   userOrderList[index]["order_number"],
                //     //   userOrderList[index]["date"],
                //     //   userOrderList[index]["quantity"],
                //     //   userOrderList[index]["driver_number"],
                //     //   userOrderList[index]["total_amount"],
                //     //   userOrderList[index]["status"]);
                // }),
              )
                  //  ]),
             // )
            ],
          ),
        ),
      ),
    );
  }
   Widget getOrderCard( UserOrdersList userOrdersList){
    return InkWell(
      onTap: (){
Get.to(()=>OrderDetails(
    userOrdersList:userOrdersList,

));
      },
      child: Card(
        color:TColors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(TSizes.cardRadiusMd)),
        child: SizedBox(
          height: 180,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text( "Order N0"+"\t"+'${userOrdersList.orderNumber}',style: TTextTheme.lightTextThem.bodyLarge,),
                    Text('${userOrdersList.order.uDate}',style: TTextTheme.lightTextThem.bodySmall,),
                  ],
                ),
                SizedBox(height: TSizes.spaceBtwItems,),
                Align(
                  alignment: Alignment.centerLeft,
                  child: RichText(
                      text: TextSpan(
                          text: " Tracking number:"+"\t",
                          style: TTextTheme.lightTextThem.bodySmall,
                          children: [
                            TextSpan(text:userOrdersList.trackingNumber,
                                style: TTextTheme.lightTextThem.bodyLarge)
                          ]
                      )),
                ),
                SizedBox(height: TSizes.spaceBtwItems,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    RichText(
                        text: TextSpan(
                            text: "quantity:"+"\t",
                            style: TTextTheme.lightTextThem.bodySmall,
                            children: [
                              TextSpan(text:"${userOrdersList.order.requests.length}" ,
                                  style: TTextTheme.lightTextThem.bodyLarge)
                            ]
                        )),
                    RichText(
                        text: TextSpan(
                            text: "Total Amount:",
                            style: TTextTheme.lightTextThem.bodySmall,
                            children: [
                              TextSpan(text:"${userOrdersList.order.requests[0]}"+"\t"+"\$" ,
                                  style: TTextTheme.lightTextThem.bodyLarge)
                            ]
                        )),

                  ],
                ),
                SizedBox(height: TSizes.spaceBtwItems,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    OutlinedButton(
                      onPressed: (){},
                      child: Text("Details",style: TTextTheme.lightTextThem.labelLarge,),
                      style: TOutLineButtonTheme.lightOutlinebuttonTheme.style,),
                    Text(userOrdersList.status,style: TextStyle(color: TColors.success),)
                  ],
                ),
                SizedBox(height: TSizes.spaceBtwItems,),

              ],
            ),
          ),
        ),

      ),
    );
  }

  void animatedto(int i) {

    // //tabController.currentIndex= i.obs;
    // //tabController.pageController.animateToPage(tabController.currentIndex.value,
    //     duration: Duration(milliseconds: 300),
    //     curve: Curves.ease);
  }


   Stream<List<UserOrdersList>> readUserOrderList() =>
       FirebaseFirestore.instance
           .collection('user orders')
           // .where("made_by", isEqualTo: widget.username)
           // .where("status", isEqualTo: "Done")
           .snapshots()
           .map((snapshot) => snapshot.docs
           .map((doc) =>  UserOrdersList.fromMap(doc.data()))
           .toList());
}
