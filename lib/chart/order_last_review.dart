import 'dart:math';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/const.dart';
import 'package:food_delivery/model/orders.dart';
import 'package:food_delivery/model/request.dart';
import 'package:food_delivery/model/user_orders.dart';
import 'package:food_delivery/model/users.dart';
import 'package:food_delivery/payment/success_screen.dart';
import 'package:food_delivery/widgets/default_button.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class OrderLastReview extends StatefulWidget {
  final double totalAmount;
  //final int phoneNumber;
  final String paymentMethod;
  final List<UserRequests> userOrdersList;
  final String user;
  final String profileImage;
  final String deliveryMethod;
  const OrderLastReview(
      {Key? key,
      required this.userOrdersList,
      required this.user,
      required this.deliveryMethod,
      required this.profileImage,
      required this.paymentMethod,
      required this.totalAmount})
      : super(key: key);

  @override
  State<OrderLastReview> createState() => _OrderLastReviewState();
}

class _OrderLastReviewState extends State<OrderLastReview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.asset(
            "assets/images/background.jpeg",
            height: 420,
          ),
          Container(
            //height: 450,
            decoration: BoxDecoration(

                //Colors.white24,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40)),
                color: Colors.white.withOpacity(0.9),
                border: Border.all()),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(left: 10, right: 10, top: 40),
                  child: Container(
                    padding: EdgeInsets.only(
                      left: 20,
                      right: 20,
                    ),
                    color: Colors.white,
                    height: 70,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "Total Amount",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "${widget.totalAmount}",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10, right: 10, top: 10),
                  child: Container(
                    padding: EdgeInsets.only(
                      left: 20,
                      right: 20,
                    ),
                    color: Colors.white,
                    height: 70,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "Total Products",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "${widget.userOrdersList.length}",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10, right: 10, top: 10),
                  child: Container(
                    padding: EdgeInsets.only(
                      left: 20,
                      right: 20,
                    ),
                    color: Colors.white,
                    height: 70,
                    child: (widget.deliveryMethod == "Delivery")
                        ? Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                "Delivery Time",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "${30}" + "\t" + "M",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              )
                            ],
                          )
                        : Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                "Cooking Time",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "${20}" + "\t" + "M",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                  ),
                ),
                Padding(
                    padding: EdgeInsets.only(left: 30, right: 30, top: 70),
                    child: MaterialButton(
                        onPressed: () async {
                          setState(() {
                            _getCurrentLocation().then((value) {
                              lat = double.parse('${value.latitude}');
                              long = double.parse('${value.longitude}');
                              currentLocation = "latitude" +
                                  ":" +
                                  "\t" +
                                  "$lat" +
                                  "\n" +
                                  "langtude" +
                                  ":" +
                                  "\t" +
                                  "${long}";
                            });
                          });
                          // read location

                          // Create order
                          //
                          if (taskDone == false)
                            createTask(Orders(
                                profileImage: widget.profileImage,
                                step: "In Waiting",
                                deliveryTime: (DateFormat('kk:mm')
                                    .format(DateTime.now())
                                    .toString()),
                                acceptedTime: (DateFormat('kk:mm')
                                    .format(DateTime.now())
                                    .toString()),
                                id: Random().nextInt(99999999).toDouble(),
                                status: "New Order",
                                orderNumber:
                                    Random().nextInt(17565777).toDouble(),
                                requests: widget.userOrdersList,
                                uTotalPrice: widget.totalAmount,
                                paymentMethod: widget.paymentMethod,
                                deliveryMethod: widget.deliveryMethod,
                                uDate: (DateFormat('yyyy-MM-dd')
                                    .format(DateTime.now())
                                    .toString()),
                                uTime: (DateFormat('kk:mm')
                                    .format(DateTime.now())
                                    .toString()),
                                user: widget.user,
                                lat: lat,
                                lan: long));
                          if (taskDone == true) {
                            // Success
                            setState(() {
                              userCartRequests = [];
                            });

                            Get.to(() => SuccessScreen());
                          }
                        },
                        child: DefualtButton(
                          text: "Confirm",
                        ))),
                Padding(
                  padding: EdgeInsets.only(left: 10, right: 10, top: 10),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Future createTask(Orders task) async {
    final taskData = FirebaseFirestore.instance.collection('Orders').doc();
    final json = task.toMap();
    await taskData.set(json);
    setState(() {
      taskDone = true;
    });

    //  final
  }

  String currentLocation = "";
  bool taskDone = false;
  double lat = 0, long = 0;

  Future<Position> _getCurrentLocation() async {
    bool serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      return Future.error("Location Services are disEnabled.");
    }

    LocationPermission permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return Future.error("Location Permissions are denied.");
      }
    }
    if (permission == LocationPermission.deniedForever) {
      return Future.error(
          "Location permissions are permanently denied , we can't request any permission");
    }

    return await Geolocator.getCurrentPosition();
  }
}
