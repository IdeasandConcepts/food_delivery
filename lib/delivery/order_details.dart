// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:food_delivery/const.dart';
// import 'package:get/get.dart';
// import 'package:get/get_core/src/get_main.dart';
// import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
//
// import '../../controller/Controller.dart';
// import '../../themes/const.dart';
// import '../../themes/text_theme.dart';
// import '../../utils/colors.dart';
// import '../../utils/sizes.dart';
//
// class OrderDeliveryDetails extends StatelessWidget {
//   OrderDeliveryDetails({super.key});
//   // final Controller c = Get.put(Controller());
//   @override
//   Widget build(BuildContext context) {
//     double width = MediaQuery.sizeOf(context).width;
//     return SafeArea(
//       child: Scaffold(
//         body:
//         Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.start,
//             //    crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               const  SizedBox(height: TSizes.spaceBtwSection,),
//               Align(
//                 alignment: Alignment.center,
//                 child: Text("Orders Details",
//                   style: TTextTheme.lightTextThem.headlineMedium,),),
//               const  SizedBox(height: TSizes.spaceBtwSection,),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Text("Orders No1947034",
//                     style: TTextTheme.lightTextThem.titleLarge,),
//                   Text("25-04-2034      01:30 PM",
//                     style: TTextTheme.lightTextThem.titleSmall,),
//                 ],
//               ),
//               SizedBox(height: TSizes.spaceBtwItems,),
//               Align(
//                 alignment: Alignment.centerLeft,
//                 child: Text(" 3 items",
//                   style: TTextTheme.lightTextThem.titleMedium,),
//               ),
//               SizedBox(height: TSizes.spaceBtwSection,),
//               Expanded(
//                   child:
//                   ListView(
//                     children: [
//                       Card(
//                         color:Colors.white,
//                         elevation: TSizes.cardElevation,
//                         // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(TSizes.cardRadiusMd)),
//                         child: SizedBox(
//                           height: 90.h,
//                           child: Padding(
//                             padding: const EdgeInsets.all(10.0),
//                             child: Row(
//                                 mainAxisAlignment: MainAxisAlignment.start,
//                                 children: [
//                                   SizedBox(
//                                     width: width/3,
//                                     child: Image.asset("assets/food.jpeg"),
//                                   ),
//                                   Expanded(
//                                     child: Column(
//                                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                                       crossAxisAlignment: CrossAxisAlignment.start,
//                                       children: [
//                                         Text(" Beef Juicy Burger",
//                                           style: TTextTheme.lightTextThem.headlineSmall,),
//                                         Text("L",
//                                           style: TTextTheme.lightTextThem.titleMedium,),
//                                         Row(
//                                           crossAxisAlignment: CrossAxisAlignment.start,
//                                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                                           children: [
//                                             RichText(
//                                               textAlign: TextAlign.start,
//                                               text: TextSpan(children: [
//                                                 TextSpan(
//                                                     text: "Count: ",
//                                                     style:
//                                                     TTextTheme.lightTextThem.bodySmall),
//                                                 TextSpan(
//                                                     text: "1",
//                                                     style:
//                                                     TTextTheme.lightTextThem.bodyMedium),
//                                               ]),
//                                             ),
//                                             Text("43",
//                                               style: TTextTheme.lightTextThem.titleMedium,),
//                                           ],
//                                         ),
//                                       ],
//                                     ),
//                                   )
//                                 ]),),),),
//                       SizedBox(height: TSizes.spaceBtwItems,),
//                       Card(
//                         color:Colors.white,
//                         elevation: TSizes.cardElevation,
//                         // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(TSizes.cardRadiusMd)),
//                         child: SizedBox(
//                           height: 90.h,
//                           child: Padding(
//                             padding: const EdgeInsets.all(10.0),
//                             child: Row(
//                                 mainAxisAlignment: MainAxisAlignment.start,
//                                 children: [
//                                   SizedBox(
//                                     width: width/3,
//                                     child: Image.asset("assets/food.jpeg"),
//                                   ),
//                                   Expanded(
//                                     child: Column(
//                                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                                       crossAxisAlignment: CrossAxisAlignment.start,
//                                       children: [
//                                         Text(" Beef Juicy Burger",
//                                           style: TTextTheme.lightTextThem.headlineSmall,),
//                                         Text("L",
//                                           style: TTextTheme.lightTextThem.titleMedium,),
//                                         Row(
//                                           crossAxisAlignment: CrossAxisAlignment.start,
//                                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                                           children: [
//                                             RichText(
//                                               textAlign: TextAlign.start,
//                                               text: TextSpan(children: [
//                                                 TextSpan(
//                                                     text: "Count: ",
//                                                     style:
//                                                     TTextTheme.lightTextThem.bodySmall),
//                                                 TextSpan(
//                                                     text: "1",
//                                                     style:
//                                                     TTextTheme.lightTextThem.bodyMedium),
//                                               ]),
//                                             ),
//                                             Text("43",
//                                               style: TTextTheme.lightTextThem.titleMedium,),
//                                           ],
//                                         ),
//                                       ],
//                                     ),
//                                   )
//                                 ]),),),),
//                       SizedBox(height: TSizes.spaceBtwItems,),
//                       Card(
//                         color:Colors.white,
//                         elevation: TSizes.cardElevation,
//                         // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(TSizes.cardRadiusMd)),
//                         child: SizedBox(
//                           height: 90.h,
//                           child: Padding(
//                             padding: const EdgeInsets.all(10.0),
//                             child: Row(
//                                 mainAxisAlignment: MainAxisAlignment.start,
//                                 children: [
//                                   SizedBox(
//                                     width: width/3,
//                                     child: Image.asset("assets/food.jpeg"),
//                                   ),
//                                   Expanded(
//                                     child: Column(
//                                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                                       crossAxisAlignment: CrossAxisAlignment.start,
//                                       children: [
//                                         Text(" Beef Juicy Burger",
//                                           style: TTextTheme.lightTextThem.headlineSmall,),
//                                         Text("L",
//                                           style: TTextTheme.lightTextThem.titleMedium,),
//                                         Row(
//                                           crossAxisAlignment: CrossAxisAlignment.start,
//                                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                                           children: [
//                                             RichText(
//                                               textAlign: TextAlign.start,
//                                               text: TextSpan(children: [
//                                                 TextSpan(
//                                                     text: "Count: ",
//                                                     style:
//                                                     TTextTheme.lightTextThem.bodySmall),
//                                                 TextSpan(
//                                                     text: "1",
//                                                     style:
//                                                     TTextTheme.lightTextThem.bodyMedium),
//                                               ]),
//                                             ),
//                                             Text("43",
//                                               style: TTextTheme.lightTextThem.titleMedium,),
//                                           ],
//                                         ),
//                                       ],
//                                     ),
//                                   )
//                                 ]),),),),
//                     ],
//                   )
//               ),
//               SizedBox(height: TSizes.spaceBtwSection,),
//               Align(
//                 alignment: Alignment.centerLeft,
//                 child: Text("Order information ",
//                   style: TTextTheme.lightTextThem.titleLarge,),
//               ),
//               SizedBox(height: TSizes.spaceBtwItems,),
//               Text("saudi arabia dammam",
//                 style: TTextTheme.lightTextThem.bodySmall,),
//               SizedBox(height: TSizes.spaceBtwItems,),
//
//               Text("king khalid",
//                 style: TTextTheme.lightTextThem.bodySmall,),
//               SizedBox(height: TSizes.spaceBtwSection,),
//               Text("111.6",
//                 style: TTextTheme.lightTextThem.headlineSmall,),
//               SizedBox(height: TSizes.spaceBtwSection,),
//               ElevatedButton(onPressed: (){},
//                 child:  Text("    Home    ",
//                   style: TTextTheme.darkTextThem.headlineMedium,),
//                 style: ButtonStyle(
//                   backgroundColor: MaterialStatePropertyAll(kprimaryColor),
//                   elevation: MaterialStatePropertyAll(10),
//                 ),),
//               SizedBox(height: TSizes.spaceBtwItems,),
//
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }