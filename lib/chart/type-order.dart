import 'package:flutter/material.dart';
import 'package:food_delivery/model/users.dart';
import 'package:food_delivery/payment/payment_type.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:food_delivery/chart/CreditCards.dart';
import 'package:food_delivery/model/request.dart';
import 'package:food_delivery/widgets/default_button.dart';

class OrderMethod extends StatefulWidget {
  // final int phoneNumber;
  final double totalAmount;
  final List<UserRequests> userOrdersList;
  final String user;
  final String profileImage;
  const OrderMethod(
      {Key? key,
      required this.userOrdersList,
      required this.user,
      required this.totalAmount, required this.profileImage})
      : super(key: key);

  @override
  State<OrderMethod> createState() => _OrderMethodState();
}

class _OrderMethodState extends State<OrderMethod> {
  String orderMethod = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 300.0),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                  child: DefualtButton(text: "In Restaurant"),
                  onTap: () {
                    setState(() {
                      orderMethod = "In Restaurant";
                    });
                    Get.to(() => PayMethod(
                      profileImage: widget.profileImage,
                          totalAmount: widget.totalAmount,
                          user: widget.user,
                          deliveryMethod: orderMethod,
                          userOrdersList: widget.userOrdersList,
                        ));
                  }),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                  child: DefualtButton(text: "Delivery"),
                  onTap: () {
                    setState(() {
                      orderMethod = "Delivery";
                    });
                    Get.to(() => PayMethod(
                      profileImage: widget.profileImage,
                      totalAmount: widget.totalAmount,
                      user: widget.user,
                      deliveryMethod: orderMethod,
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
