import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_delivery/const.dart';
import 'package:food_delivery/delivery/order_details/order_details_screen.dart';
import 'package:food_delivery/delivery/order_details/proccessed_details.dart';
import 'package:food_delivery/delivery/proccess.dart';
import 'package:food_delivery/delivery/widget/custton_buttom.dart';
import 'package:food_delivery/model/orders.dart';
import 'package:food_delivery/profile/order_tracking.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class RequestOrderCardPage extends StatefulWidget {
  final String userName;
  final String status;


  const RequestOrderCardPage({
    super.key, required this.userName, required this.status,

  });

  @override
  State<RequestOrderCardPage> createState() => _RequestOrderCardPageState();
}

class _RequestOrderCardPageState extends State<RequestOrderCardPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      child:  SingleChildScrollView(
        physics:const BouncingScrollPhysics(),
        child: StreamBuilder<List<Orders>>(
            stream: readUserOrderList(widget.status),
            builder: (context, snapshot) {
              if (snapshot.hasError) {
                return Text(' Error ya Ahmed :: ${snapshot.error}');
              } else if (snapshot.hasData) {
                final task = snapshot.data!;
                return ListView(
                  shrinkWrap: true,
                  children: task.map(buildDriverOrders).toList(),
                );
              } else {
                return Center(
                  child: CircularProgressIndicator(),
                );
              }
            }),
    ),);

  }

//  buildDriverOrders()
  Widget buildDriverOrders(Orders order) {
    return InkWell(
            onTap: (){
              if(widget.status=="Accept") {
                Get.to(() =>  DeliveryTracking(
                  acceptingTime:  (DateFormat('kk:mm')
                      .format(DateTime.now())
                      .toString()),
                  order: order,
                ));
              } else
            {
              Get.to(() => OrderDetailScreen(orderDetails:order,status:widget.status,username: widget.userName,));
            }
            },
            enableFeedback: true,
            borderRadius: BorderRadius.circular(5.r),
            child: Material(
              elevation: 5,
              borderRadius: BorderRadius.circular(5.r),
              child: Column(
                children: [
                  Container(
                    width: 335.w,
                    height: 123.h,
                    padding: EdgeInsets.all(14.dg),
                    decoration: BoxDecoration(
                        color:backgroundCard,
                        borderRadius: BorderRadius.circular(5.r)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "order.user.address",
                              style: TextStyle(
                                fontSize: 18.sp,
                                fontWeight: FontWeight.w500,
                                color: fontColor2,
                              ),
                            ),
                            Text(
                              order.uDate+"\t\t\t"+order.uTime,
                              style: TextStyle(
                                color: fontColor2,
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Text(
                              "Address",
                              style: TextStyle(
                                color:Colors.blue,
                                //fontColor2,
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w500,
                                decoration: TextDecoration.underline,
                                decorationColor: Colors.blue
                              ),
                            ),
                            SizedBox(
                              width: 160.w,
                              child: Text(
                                "saudi arabia dammam king khalid",
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  color:fontColor2,
                                  fontSize: 10.sp,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            GestureDetector(
                              onTap: (){
                               setState(() {
                               //  print("ok");
                                updateDataToAccept(order.id);
                               });
                              },
                              child: CustomBouttm(
                                title: "Accept",
                                color: green,
                              //  onTap: onTapAccept,
                              ),
                            ),
                            InkWell(
                              onTap: (){
                                if(widget.status=="Accept") {
                                   Get.to(() =>  DeliveryTracking(
                                     acceptingTime:  (DateFormat('kk:mm')
                                         .format(DateTime.now())
                                         .toString()),
                                   order: order,
                                  // orders:order,userName: widget.userName,
    ));
                                } else
                                {

                                  Get.to(() => OrderDetailScreen(orderDetails:order,status:widget.status,username: widget.userName,));


                                }
                              },
                              child: CustomBouttm(
                                title: "Details",
                                color: red,
                               // onTap: onTapCancel,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Divider()
                ],
              ),
            ),
          );
  }

  @override
  updateDataToAccept(double  orderKey) async {
    var user = await FirebaseFirestore.instance
        .collection("Orders")
    // .where("merchandiserList",arrayContainsAny: widget.conditionList)
    // .where('u_user', isEqualTo:widget.userName)
    .where('id', isEqualTo:orderKey)
        .where('status', whereIn: ["New Order","Accept"])
        .where("step",isEqualTo: "In Kitchen")
        .get();
    if (user.docs.isNotEmpty) {
      var doc_Id = user.docs.first.id;
      await FirebaseFirestore.instance
          .collection("Orders")
          .doc(doc_Id)
          .update(
          {
         "status": "Accept",
        "step":"In Delivery"}
      );

      //  statusstr = "done";
      print(doc_Id);
    }
    //

    //

  }

  Stream<List<Orders>> readUserOrderList(String status) =>
      FirebaseFirestore.instance
          .collection('Orders')
       .where("status", isEqualTo: status)
      //   .where("branch", isEqualTo:widget.branch)
          .snapshots()
          .map((snapshot) => snapshot.docs
          .map((doc) =>  Orders.fromMap(doc.data()))
          .toList());
}
