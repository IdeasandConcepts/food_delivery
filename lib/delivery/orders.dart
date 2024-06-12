// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:food_delivery/const.dart';
// import 'package:food_delivery/delivery/order_details.dart';
// import 'package:food_delivery/model/orders.dart';
// import 'package:get/get.dart';
// import 'package:get/get_core/src/get_main.dart';
// import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
// import 'package:food_delivery/themes/text_theme.dart';
// import 'package:food_delivery/utils/sizes.dart';
//
// import '../../controller/Controller.dart';
// import '../../controller/my_tab_controller.dart';
// import '../../utils/colors.dart';
//
// class DeliveryOrders extends StatelessWidget {
//   DeliveryOrders({super.key});
//
//   final  MyTabController  tabController = Get.put(MyTabController());
//   final Controller c = Get.put(Controller());
//
//
//   @override
//   Widget build(BuildContext context) {
//     double width = MediaQuery.sizeOf(context).width;
//     double height = MediaQuery.sizeOf(context).height;
//
//     return  SafeArea(
//       child: Scaffold(
//           body:Obx(() =>
//               Column(
//                 mainAxisAlignment: MainAxisAlignment.start,
//                 children: [
//                   const  SizedBox(height: TSizes.spaceBtwSection,),
//                   Padding(
//                     padding: const EdgeInsets.only(left:20.0,right: 20.0),
//                     child: Text("Orders",
//                       style: TTextTheme.lightTextThem.headlineLarge,),
//                   ),
//                   const  SizedBox(height: TSizes.spaceBtwItems,),
//                   SizedBox(
//                     height: 50.h,
//                     child: ListView.builder(
//                       scrollDirection: Axis.horizontal,
//                       itemCount: tabController.Dilmytab.length,
//                       itemBuilder: (BuildContext context, int index) {
//                         return  Obx(() =>
//                             InkWell(
//                               onTap: (){ animatedto(index);
//                               print(index);
//                               print(tabController.DilcurrentIndex.value);},
//                               child: Padding(
//                                 padding: const EdgeInsets.all(8.0),
//                                 child:
//                                 Container(
//                                     height: 50.h,
//                                     width: width/3.5,
//                                     decoration:tabController.DilcurrentIndex.value==index ? BoxDecoration(
//                                       borderRadius: BorderRadius.circular(TSizes.buttonRadius),
//                                       color: kprimaryColor,
//                                     ) : null ,
//                                     child: Center(child: Text( tabController.Dilmytab[index].text!,
//                                       style:tabController.DilcurrentIndex.value==index?
//                                       TextStyle(color: TColors.white) :null ,))),
//                               ),));},),),
//                   SizedBox(height: TSizes.spaceBtwSection,),
//                   Expanded(
//                     child:PageView (
//                         controller: tabController.DilpageController,
//                         onPageChanged: (value){
//                           tabController.DilcurrentIndex.value=value;
//                         },
//                         children: [
//                           // c.dilIsOnline.value ? getOrderCard():Container(),
//                           // c.dilIsOnline.value ? getOrderCard():Container(),
//                           // c.dilIsOnline.value ? getOrderCard():Container(),
//                         ]),
//                   ),
//                   Container(
//                     height: 50.h,
//                     child:  Row(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         Text("You're now online  ", style: TTextTheme.darkTextThem.titleMedium),
//                         Switch(
//                           value: c.dilIsOnline.value,
//                           onChanged: (val) => c.dilIsOnline.value = val,
//                           activeColor: TColors.success,
//                           //   trackOutlineColor: MaterialStatePropertyAll(TColors.white),
//                           trackOutlineWidth: MaterialStatePropertyAll(0) ,
//                           splashRadius: 0,// TSizes.buttonHeight,
//                           inactiveThumbColor: TColors.white,
//                           inactiveTrackColor:TColors.grey,
//                         ),
//
//                       ],
//                     ),
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.only(topLeft: Radius.circular(20),
//                           topRight: Radius.circular(20)),
//                       color: kprimaryColor,
//                     ),
//                   )
//                 ],
//               ),)
//       ),
//     );
//   }
//   void animatedto(int i) {
//     tabController.DilcurrentIndex.value= i;
//     tabController.DilpageController.animateToPage(tabController.DilcurrentIndex.value,
//         duration: Duration(milliseconds: 300),
//         curve: Curves.ease);
//   }
//
//   getOrderCard() {
//     return Obx(() =>
//         ListView(
//             children: [
//               Card(
//                 color:TColors.softGrey,
//                 elevation: TSizes.cardElevation,
//                 // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(TSizes.cardRadiusMd)),
//                 child: SizedBox(
//                   height: 120.h,
//                   child: Padding(
//                     padding: const EdgeInsets.all(10.0),
//                     child: Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           Column(
//                             mainAxisAlignment: MainAxisAlignment.start,
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               Text("Adel Kannan",
//                                 style: TTextTheme.lightTextThem.headlineSmall,),
//                               Text("25/4/2024      03:50 PM",
//                                 style: TTextTheme.lightTextThem.bodyMedium,),
//                               Text("Adress",
//                                 style: TTextTheme.lightTextThem.titleMedium,),
//                               Text("sudai arabai damam",
//                                 style: TTextTheme.lightTextThem.titleSmall,),
//                               Text("king khalid",
//                                 style: TTextTheme.lightTextThem.titleSmall,),
//                             ],
//                           ),
//                           tabController.DilcurrentIndex.value ==0 ? Column(
//                             mainAxisAlignment: MainAxisAlignment.center,
//                             children: [
//                               ElevatedButton(onPressed: (){},
//                                 child: Text("Accept",
//                                   style: TextStyle(color: TColors.white),),
//                                 style: ButtonStyle(
//                                     backgroundColor: MaterialStatePropertyAll(TColors.success),
//                                     shape: MaterialStatePropertyAll(RoundedRectangleBorder
//                                       (borderRadius: BorderRadius.circular(3)),)
//
//                                 ),
//                               ),
//                               ElevatedButton(onPressed: (){},
//                                   child: Text("Cancel",
//                                       style: TextStyle(color: TColors.white)),
//                                   style: ButtonStyle(
//                                       backgroundColor: MaterialStatePropertyAll(TColors.error),
//                                       shape: MaterialStatePropertyAll(RoundedRectangleBorder
//                                         (borderRadius: BorderRadius.circular(3)),)))
//                             ],)
//                               :tabController.DilcurrentIndex.value ==1 ? Column(
//                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                             children: [
//                               const Text("Complete",
//                                 style: TextStyle(color: TColors.success,
//                                     fontSize: 18),),
//
//                               ElevatedButton(onPressed: (){},
//                                   child: Text(" Delete ",
//                                       style: TextStyle(color: TColors.white,)),
//                                   style: ButtonStyle(
//                                       backgroundColor: MaterialStatePropertyAll(TColors.error),
//                                       shape: MaterialStatePropertyAll(RoundedRectangleBorder
//                                         (borderRadius: BorderRadius.circular(3)),)))
//                             ],)
//                               :Column(
//                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                             children: [
//                               const Text("Canceled",
//                                 style: TextStyle(color: TColors.error,
//                                     fontSize: 18),),
//
//                               ElevatedButton(onPressed: (){},
//                                   child: Text(" Delete ",
//                                       style: TextStyle(color: TColors.white)),
//                                   style: ButtonStyle(
//                                       backgroundColor: MaterialStatePropertyAll(TColors.error),
//                                       shape: MaterialStatePropertyAll(RoundedRectangleBorder
//                                         (borderRadius: BorderRadius.circular(3)),)))
//                             ],)
//                         ]),),),),
//               SizedBox(height: TSizes.spaceBtwItems,),
//               Card(
//                 color:TColors.softGrey,
//                 elevation: TSizes.cardElevation,
//                 // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(TSizes.cardRadiusMd)),
//                 child: SizedBox(
//                   height: 120.h,
//                   child: Padding(
//                     padding: const EdgeInsets.all(10.0),
//                     child: Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           Column(
//                             mainAxisAlignment: MainAxisAlignment.start,
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               Text("Adel Kannan",
//                                 style: TTextTheme.lightTextThem.headlineSmall,),
//                               Text("25/4/2024      03:50 PM",
//                                 style: TTextTheme.lightTextThem.bodyMedium,),
//                               Text("Adress",
//                                 style: TTextTheme.lightTextThem.titleMedium,),
//                               Text("sudai arabai damam",
//                                 style: TTextTheme.lightTextThem.titleSmall,),
//                               Text("king khalid",
//                                 style: TTextTheme.lightTextThem.titleSmall,),
//                             ],
//                           ),
//                           tabController.DilcurrentIndex.value ==0 ?
//                           GestureDetector(
//                             onTap: (){
//                               Get.to(()=>OrderDeliveryDetails());
//                             },
//                             child: Column(
//                               mainAxisAlignment: MainAxisAlignment.center,
//                               children: [
//                                 ElevatedButton(onPressed: (){},
//                                   child: Text("Accept",
//                                     style: TextStyle(color: TColors.white),),
//                                   style: ButtonStyle(
//                                       backgroundColor: MaterialStatePropertyAll(TColors.success),
//                                       shape: MaterialStatePropertyAll(RoundedRectangleBorder
//                                         (borderRadius: BorderRadius.circular(3)),)
//
//                                   ),
//                                 ),
//                                 ElevatedButton(onPressed: (){},
//                                     child: Text("Cancel",
//                                         style: TextStyle(color: TColors.white)),
//                                     style: ButtonStyle(
//                                         backgroundColor: MaterialStatePropertyAll(TColors.error),
//                                         shape: MaterialStatePropertyAll(RoundedRectangleBorder
//                                           (borderRadius: BorderRadius.circular(3)),)))
//                               ],),
//                           )
//                               :tabController.DilcurrentIndex.value ==1 ? GestureDetector(
//                             onTap: (){
//                               Get.to(()=>OrderDeliveryDetails());
//                             },
//                                 child: Column(
//                                                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                                                             children: [
//                                 const Text("Complete",
//                                   style: TextStyle(color: TColors.success,
//                                       fontSize: 18),),
//
//                                 ElevatedButton(onPressed: (){},
//                                     child: Text(" Delete ",
//                                         style: TextStyle(color: TColors.white,)),
//                                     style: ButtonStyle(
//                                         backgroundColor: MaterialStatePropertyAll(TColors.error),
//                                         shape: MaterialStatePropertyAll(RoundedRectangleBorder
//                                           (borderRadius: BorderRadius.circular(3)),)))
//                                                             ],),
//                               )
//                               :Column(
//                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                             children: [
//                               const Text("Canceled",
//                                 style: TextStyle(color: TColors.error,
//                                     fontSize: 18),),
//
//                               ElevatedButton(onPressed: (){},
//                                   child: Text(" Delete ",
//                                       style: TextStyle(color: TColors.white)),
//                                   style: ButtonStyle(
//                                       backgroundColor: MaterialStatePropertyAll(TColors.error),
//                                       shape: MaterialStatePropertyAll(RoundedRectangleBorder
//                                         (borderRadius: BorderRadius.circular(3)),)))
//                             ],)
//                         ]),),),),
//               SizedBox(height: TSizes.spaceBtwItems,),
//               Card(
//                 color:TColors.softGrey,
//                 elevation: TSizes.cardElevation,
//                 // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(TSizes.cardRadiusMd)),
//                 child: SizedBox(
//                   height: 120.h,
//                   child: Padding(
//                     padding: const EdgeInsets.all(10.0),
//                     child: Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                         //DeliveryOrderCard(),
//                           tabController.DilcurrentIndex.value ==0 ? Column(
//                             mainAxisAlignment: MainAxisAlignment.center,
//                             children: [
//                               ElevatedButton(onPressed: (){},
//                                 child: Text("Accept",
//                                   style: TextStyle(color: TColors.white),),
//                                 style: ButtonStyle(
//                                     backgroundColor: MaterialStatePropertyAll(TColors.success),
//                                     shape: MaterialStatePropertyAll(RoundedRectangleBorder
//                                       (borderRadius: BorderRadius.circular(3)),)
//
//                                 ),
//                               ),
//                               ElevatedButton(onPressed: (){},
//                                   child: Text("Cancel",
//                                       style: TextStyle(color: TColors.white)),
//                                   style: ButtonStyle(
//                                       backgroundColor: MaterialStatePropertyAll(TColors.error),
//                                       shape: MaterialStatePropertyAll(RoundedRectangleBorder
//                                         (borderRadius: BorderRadius.circular(3)),)))
//                             ],)
//                               :tabController.DilcurrentIndex.value ==1 ? Column(
//                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                             children: [
//                               const Text("Complete",
//                                 style: TextStyle(color: TColors.success,
//                                     fontSize: 18),),
//
//                               ElevatedButton(onPressed: (){},
//                                   child: Text(" Delete ",
//                                       style: TextStyle(color: TColors.white,)),
//                                   style: ButtonStyle(
//                                       backgroundColor: MaterialStatePropertyAll(TColors.error),
//                                       shape: MaterialStatePropertyAll(RoundedRectangleBorder
//                                         (borderRadius: BorderRadius.circular(3)),)))
//                             ],)
//                               :Column(
//                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                             children: [
//                               const Text("Canceled",
//                                 style: TextStyle(color: TColors.error,
//                                     fontSize: 18),),
//
//                               ElevatedButton(onPressed: (){},
//                                   child: Text(" Delete ",
//                                       style: TextStyle(color: TColors.white)),
//                                   style: ButtonStyle(
//                                       backgroundColor: MaterialStatePropertyAll(TColors.error),
//                                       shape: MaterialStatePropertyAll(RoundedRectangleBorder
//                                         (borderRadius: BorderRadius.circular(3)),)))
//                             ],)
//                         ]),),),),
//             ]));
//   }
// }
//
// class DeliveryOrderCard extends StatelessWidget {
//   final String userName;
//   final Orders order;
//   const DeliveryOrderCard({
//     super.key, required this.userName, required this.order,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//     onTap: (){
//                       Get.to(()=>OrderDeliveryDetails());
//                       },
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.start,
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text(order.oUser,
//               style: TTextTheme.lightTextThem.headlineSmall,),
//             Text("25/4/2024",
//               style: TTextTheme.lightTextThem.bodyMedium,),
//             Text("Adress",
//               style: TTextTheme.lightTextThem.titleMedium,),
//             Text("sudai arabai damam",
//               style: TTextTheme.lightTextThem.titleSmall,),
//             Text("king khalid",
//               style: TTextTheme.lightTextThem.titleSmall,),
//           ],
//         ),
//       );
//   }
// }