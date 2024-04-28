

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:food_delivery/chart/CreditCards.dart';
import 'package:food_delivery/model/request.dart';
import 'package:food_delivery/model/user_orders.dart';
import 'package:food_delivery/payment/payment.dart';
import 'package:food_delivery/widgets/default_button.dart';

import '../payment/CreditCards.dart';

class OrderMethod extends StatefulWidget {
  final List<UserRequests> userOrdersList;
  const OrderMethod({Key? key,required this.userOrdersList}) : super(key: key);

  @override
  State<OrderMethod> createState() => _OrderMethodState();
}

class _OrderMethodState extends State<OrderMethod> {
  String orderMethod="";

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
              DefualtButton(text: "In Restaurant"),
        onTap: (){
          setState(() {
            orderMethod="In Restaurant";
          });
          Get.to(()=>CreditCardsPage(
            userOrdersList: widget.userOrdersList,
          ));
        }),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                  child:
                  DefualtButton(text: "Delivery"),
                  onTap: (){
                    setState(() {
                      orderMethod="Delivery";
                    });
                    Get.to(()=>CreditCardsPage(
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
