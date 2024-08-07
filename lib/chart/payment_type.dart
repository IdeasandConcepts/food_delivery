//
//
// import 'dart:math';
//
// import 'package:flutter/material.dart';
// import 'package:food_delivery/chart/order_last_review.dart';
// import 'package:food_delivery/model/orders.dart';
// import 'package:food_delivery/model/users.dart';
// import 'package:food_delivery/report/report.dart';
// import 'package:get/get.dart';
// import 'package:get/get_core/src/get_main.dart';
// import 'package:food_delivery/chart/CreditCards.dart';
// import 'package:food_delivery/model/request.dart';
// import 'package:food_delivery/widgets/default_button.dart';
// import 'package:intl/intl.dart';
//
//
// class PayMethod extends StatefulWidget {
//   final String deliveryMethod;
//   final double totalAmount;
//   final double offer;
//   //final List<UserRequests> userOrdersList;
//   final String user;
//   final String profileImage;
//   const PayMethod({Key? key,
//
//   required this.offer,
//     required this.user,
//     required this.totalAmount,
//     required this.deliveryMethod, required this.profileImage}) : super(key: key);
//
//   @override
//   State<PayMethod> createState() => _PayMethodState();
// }
//
// class _PayMethodState extends State<PayMethod> {
//   String payMethod="";
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         child: Column(
//
//           //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//           children: [
//
//             Padding(padding: const EdgeInsets.only(top:300.0),),
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: GestureDetector(
//                   child:
//                   DefualtButton(text: "Cash"),
//                   onTap: (){
//                     setState(() {
//                       payMethod="Cash";
//                     });
//                     Get.to(()=
//                         OrderLastReview(
//                           orders:   Orders(
//                               offer: widget.offer,
//                               profileImage: widget.profileImage,
//                               step: "In Waiting",
//                               deliveryTime: (DateFormat('kk:mm')
//                                   .format(DateTime.now())
//                                   .toString()),
//                               acceptedTime: (DateFormat('kk:mm')
//                                   .format(DateTime.now())
//                                   .toString()),
//                               id: Random().nextInt(99999999).toDouble(),
//                               status: "New Order",
//                               orderNumber:
//                               Random().nextInt(17565777).toDouble(),
//                               requests: userCartRequests,
//                               uTotalPrice: widget.totalAmount,
//                               paymentMethod: payMethod,
//                               deliveryMethod: widget.deliveryMethod,
//                               uDate: (DateFormat('yyyy-MM-dd')
//                                   .format(DateTime.now())
//                                   .toString()),
//                               uTime: (DateFormat('kk:mm')
//                                   .format(DateTime.now())
//                                   .toString()),
//                               user: widget.user,
//                               lat: 0.0,
//                               lan: 0.0
//                           ),
//                       profileImage: widget.profileImage,
//                       totalAmount: widget.totalAmount,
//                       paymentMethod: payMethod,
//                       offer: widget.offer,
//                       deliveryMethod: widget.deliveryMethod,
//                       user: widget.user,
//                     //  userOrdersList: widget.userOrdersList,
//                     ));
//                   }),
//             ),
//
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: GestureDetector(
//                   child:
//                   DefualtButton(text: "payment Card"),
//                   onTap: (){
//                     setState(() {
//                       payMethod="payment Card";
//                     });
//                     // Get.to(()=>CreditCardsPage(
//                     //   profileImage: widget.profileImage,
//                     //   totalAmount: widget.totalAmount,
//                     //   // phoneNumber: widget.phoneNumber,
//                     // paymentMethod:   payMethod,
//                     //   deliveryMethod: payMethod,
//                     //   user: widget.user,
//                     //   offer: widget.offer,
//                     // ));
//                   }),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
