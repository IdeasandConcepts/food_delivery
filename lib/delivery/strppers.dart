//
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:food_delivery/themes/text_theme.dart';
//
//
// import '../../utils/colors.dart';
//
// class stepperScreen extends StatelessWidget {
//   stepperScreen({super.key});
//
//   List<Map<String,dynamic>> OrderInfoList =[
//     {
//       'icon' :  Container(
//           padding: const EdgeInsets.all(8),
//           decoration: BoxDecoration(
//               borderRadius: BorderRadius.all(Radius.circular(30)),
//               border:Border.all(style: BorderStyle.solid,width: 2)
//           ),
//           child: Image.asset("assets/food.jpeg")),
//       'title':  StepperText("Confirmed Order",
//         textStyle: TTextTheme.lightTextThem.titleLarge,),
//
//     },
//     {
//       'icon' :  Container(
//           padding: const EdgeInsets.all(8),
//           decoration: BoxDecoration(
//               borderRadius: BorderRadius.all(Radius.circular(30)),
//               border:Border.all(style: BorderStyle.solid,width: 2)
//           ),
//           child: Image.asset("assets/food.jpeg")),
//
//       'title':  StepperText("In Kitchen",
//         textStyle: TTextTheme.lightTextThem.titleLarge,),
//     },
//     {
//       'icon' :   Container(
//           padding: const EdgeInsets.all(8),
//           decoration: BoxDecoration(
//               borderRadius: BorderRadius.all(Radius.circular(30)),
//               border:Border.all(style: BorderStyle.solid)
//           ),
//           child: Image.asset("assets/icons/paypall.png")),
//       'title':  StepperText("Delivery Order ",
//         textStyle: TTextTheme.lightTextThem.titleLarge,),
//
//     },
//     {
//       'icon' :   Container(
//           padding: const EdgeInsets.all(8),
//           decoration: BoxDecoration(
//               borderRadius: BorderRadius.all(Radius.circular(30)),
//               border:Border.all(style: BorderStyle.solid,width: 2)
//           ),
//           child: Image.asset("assets/food.jpeg")),
//       'title':  StepperText("The order ha been delivered",
//         textStyle: TTextTheme.lightTextThem.titleLarge,),
//
//     }
//
//   ];
//   @override
//   Widget build(BuildContext context) {
//     double width = MediaQuery.sizeOf(context).width;
//
//     List<StepperData> stepList= [
//       StepperData(
//         title: OrderInfoList[0]['title'],
//         iconWidget: OrderInfoList[0]['icon'], ),
//       StepperData(
//         title: OrderInfoList[1]['title'],
//         iconWidget: OrderInfoList[1]['icon'], ),
//       StepperData(
//         title: OrderInfoList[2]['title'],
//         iconWidget: OrderInfoList[2]['icon'], ),
//       StepperData(
//         title: OrderInfoList[3]['title'],
//         iconWidget: OrderInfoList[3]['icon'],
//       )
//     ];
//     return  Scaffold(
//       body:
//       Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: Stack(
//           children: [
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Expanded(
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       AnotherStepper(
//                         stepperList: stepList,
//                         stepperDirection: Axis.vertical,
//                         activeIndex: 4,
//                         iconHeight: 40,
//                         iconWidth: 40,
//                         activeBarColor: TColors.black,
//
//                       ),
//
//                     ],
//                   ),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.only(top: 50,bottom: 180,right: 10),
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Text("11:45 PM",style: TTextTheme.lightTextThem.bodySmall,),
//                       Text("11:50 PM",style: TTextTheme.lightTextThem.bodySmall,),
//                       Text("12:10 PM",style: TTextTheme.lightTextThem.bodySmall,),
//                       Text("12:25 PM",style: TTextTheme.lightTextThem.bodySmall,),
//                     ],
//                   ),
//                 )
//               ],
//             ),
//             Positioned(
//               bottom: 50.h,
//               right: width/3,
//               child: ElevatedButton(onPressed: (){},
//                   child: Text("  Cancel  ",
//                       style: TextStyle(color: TColors.white,
//                           fontSize: 20.sp)),
//                   style: ButtonStyle(
//                       backgroundColor: MaterialStatePropertyAll(TColors.error),
//                       shape: MaterialStatePropertyAll(RoundedRectangleBorder
//                         (borderRadius: BorderRadius.circular(10)),))),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }