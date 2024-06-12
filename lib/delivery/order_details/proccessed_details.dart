//
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:food_delivery/const.dart';
// import 'package:food_delivery/model/orders.dart';
// import 'package:food_delivery/widgets/default_button.dart';
// import 'package:get/get.dart';
// import 'package:intl/intl.dart';
//
// class Process extends StatelessWidget {
//   final Orders orders;
//   final String userName;
//   const Process({Key? key,
//     required this.orders, required this.userName}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Padding(
//         padding: const EdgeInsets.only(left: 15.0, right: 15.0),
//         child: Container(
//           height: MediaQuery.of(context).size.height,
//           child: Column(
//             //shrinkWrap: true,
//             mainAxisAlignment: MainAxisAlignment.start,
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               SizedBox(
//                 height: 20,
//               ),
//               Padding(
//                 padding:EdgeInsets.only(left: 20,right: 20),
//                 child: Text(
//                   "Order Details".tr,
//                   style: TextStyle(
//                     color:fontColor1,
//                     fontWeight: FontWeight.w700,
//                     fontSize: 34.sp,
//                   ),
//                 ),
//               ),
//               SizedBox(
//                 height: 20,
//               ),
//               // if()
//             //  if(orders.status=="New Order")
//               buildStatusDetails(
//                   Icon(
//                     Icons.access_time_filled_rounded,
//                     color: kprimaryColor,
//                     size: 30,
//                   ),
//                   "Requested",
//                   orders.uTime),
//
//               buildStatusDetails(
//                   Icon(
//                     Icons.access_time_filled_rounded,
//                     color:  (orders.status=="Accepted")?kprimaryColor:null,
//                     size: 30,
//                   ),
//                   "In Kitchen",
//                  orders.acceptedTime),
//             //  if(orders.status=="")
//               buildDeliveryDetails(
//                   orders.status
//               ),
//               // buildStatusDetails(
//               //     Icon(
//               //       Icons.access_time_filled_rounded,
//               //       color: kprimaryColor,
//               //       size: 30,
//               //     ),
//               //     "In Delivery",
//               //     "13:01"),
//               Row(
//                 // mainAxisAlignment: MainAxisAlignment.spaceAround,
//                 //crossAxisAlignment: CrossAxisAlignment.start,
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.start,
//                     crossAxisAlignment: CrossAxisAlignment.center,
//                     children: <Widget>[
//                       Container(
//                         child: Icon(
//                             Icons.access_time_filled_rounded,
//                             color:(orders.status=="")? kprimaryColor:null, size: 30),
//                         height: 50,
//                         width: 50,
//                         decoration: BoxDecoration(
//                           border: Border.all(),
//                           borderRadius: BorderRadius.circular(50),
//                         ),
//                       ),
//                       Padding(
//                         padding: const EdgeInsets.only(left: 5.0, right: 5.0),
//                         child: Text("Arrived"),
//                       ),
//                     ],
//                   ),
//                   Text(
//                     (DateFormat('kk:mm').format(DateTime.now()).toString()),
//                   ),
//                 ],
//               ),
//               SizedBox(
//                 height: 20,
//               ),
//               Container(
//                 padding: EdgeInsets.all(5),
//                 decoration: BoxDecoration(
//                     color: (orders.status=="")?kprimaryColor:Colors.grey,
//                     borderRadius: BorderRadius.circular(25)),
//                // width: double.infinity,
//                 height: 50,
//                 child: Center(
//                   child: Text(
//                     "Confirm",
//                     style: TextStyle(
//                       fontWeight: FontWeight.bold,
//                       fontSize: 20,
//                       color: Colors.white,
//                     ),
//                   ),
//                 ),)
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// Column buildDeliveryDetails(String status){
//     return Column(
//       mainAxisAlignment: MainAxisAlignment.start,
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Row(
//           // mainAxisAlignment: MainAxisAlignment.spaceAround,
//           //crossAxisAlignment: CrossAxisAlignment.start,
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             Row(
//               mainAxisAlignment: MainAxisAlignment.start,
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: <Widget>[
//                 Container(
//                   child: Icon(Icons.access_time_filled_rounded,
//                       color: (status=="Accepted")?kprimaryColor:null, size: 30),
//                   height: 50,
//                   width: 50,
//                   decoration: BoxDecoration(
//                     border: Border.all(),
//                     borderRadius: BorderRadius.circular(50),
//                   ),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.only(left: 5.0, right: 5.0),
//                   child: Text("In Delivery"),
//                 ),
//               ],
//             ),
//
//             Icon(Icons.access_time_filled_rounded,
//                 color: kprimaryColor, size: 30),
//             // Text(
//             //   (DateFormat('kk:mm').format(DateTime.now()).toString()),
//             // ),
//           ],
//         ),
//         Padding(
//           padding: const EdgeInsets.only(left: 15.0, right: 15.0),
//           child: Container(
//               child: Text(
//                 "|",
//                 style: TextStyle(fontSize: 60),
//               )),
//         ),
//       ],
//     );
// }
//   Column buildStatusDetails(Icon icon, String status, String time) {
//     return Column(
//       mainAxisAlignment: MainAxisAlignment.start,
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: <Widget>[
//         Row(
//           // mainAxisAlignment: MainAxisAlignment.spaceAround,
//           //crossAxisAlignment: CrossAxisAlignment.start,
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             Row(
//               mainAxisAlignment: MainAxisAlignment.start,
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: <Widget>[
//                 Container(
//                   child: icon,
//                   height: 50,
//                   width: 50,
//                   decoration: BoxDecoration(
//                     border: Border.all(),
//                     borderRadius: BorderRadius.circular(50),
//                   ),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.only(left: 5.0, right: 5.0),
//                   child: Text(status),
//                 ),
//               ],
//             ),
//             Text(time),
//           ],
//         ),
//         Padding(
//           padding: const EdgeInsets.only(left: 15.0, right: 15.0),
//           child: Container(
//               child: Text(
//             "|",
//             style: TextStyle(fontSize: 60),
//           )),
//         ),
//
//         // SizedBox(height: 20,),
//         // Row(
//         //   // mainAxisAlignment: MainAxisAlignment.spaceAround,
//         //   //crossAxisAlignment: CrossAxisAlignment.start,
//         //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         //   children: [
//         //     Row(
//         //       children: [
//         //         Container(
//         //           child: Icon(Icons.access_time_filled_rounded,color: kprimaryColor,size: 30,),
//         //           height: 50,
//         //           width: 50,
//         //           decoration: BoxDecoration(
//         //             border: Border.all(),
//         //             borderRadius: BorderRadius.circular(50),
//         //           ),
//         //
//         //         ),
//         //         Padding(
//         //           padding: const EdgeInsets.only(left:5.0,right: 5.0),
//         //           child: Text("Status"),
//         //         ),
//         //       ],
//         //     ),
//         //     Text("13:01"),
//         //   ],
//         // ),
//         // Padding(
//         //   padding: const EdgeInsets.only(left:15.0,right: 15.0),
//         //   child: Container(child: Text("|",style: TextStyle(fontSize: 80),)),
//         // ),
//       ],
//     );
//   }
// }
