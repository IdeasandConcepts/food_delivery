

import 'package:flutter/material.dart';
import 'package:food_delivery/chart/order_last_review.dart';
import 'package:food_delivery/model/users.dart';
import 'package:food_delivery/report/report.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:food_delivery/chart/CreditCards.dart';
import 'package:food_delivery/model/request.dart';
import 'package:food_delivery/widgets/default_button.dart';


class PayMethod extends StatefulWidget {
  final String deliveryMethod;
  final double totalAmount;
  final List<UserRequests> userOrdersList;
  final String user;
  final String profileImage;
  const PayMethod({Key? key,

    required this.userOrdersList,
    required this.user,
    required this.totalAmount,
    required this.deliveryMethod, required this.profileImage}) : super(key: key);

  @override
  State<PayMethod> createState() => _PayMethodState();
}

class _PayMethodState extends State<PayMethod> {
  String payMethod="";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(

          //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [

            Padding(padding: const EdgeInsets.only(top:300.0),),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                  child:
                  DefualtButton(text: "Cash"),
                  onTap: (){
                    setState(() {
                      payMethod="Cash";
                    });
                    Get.to(()=>

                        OrderLastReview(
                      profileImage: widget.profileImage,
                      totalAmount: widget.totalAmount,
                      paymentMethod: "Credit Cart",
                      //phoneNumber: widget.phoneNumber,
                      deliveryMethod: widget.deliveryMethod,
                      user: widget.user,
                      userOrdersList: widget.userOrdersList,
                    ));
                  }),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                  child:
                  DefualtButton(text: "payment Card"),
                  onTap: (){
                    setState(() {
                      payMethod="payment Card";
                    });
                    Get.to(()=>CreditCardsPage(
                      profileImage: widget.profileImage,
                      totalAmount: widget.totalAmount,
                      // phoneNumber: widget.phoneNumber,
                      deliveryMethod: "payment Card",
                      user: widget.user,
                      userOrdersList: widget.userOrdersList,
                    ));
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
