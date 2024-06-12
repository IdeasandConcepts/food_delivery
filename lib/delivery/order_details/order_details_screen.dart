import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_delivery/const.dart';
import 'package:food_delivery/delivery/widget/custton_buttom.dart';
import 'package:food_delivery/model/orders.dart';
import 'package:food_delivery/model/request.dart';
import 'package:get/get.dart';


class OrderDetailScreen extends StatelessWidget {
  final Orders orderDetails;
  final String username;
  final String status;
  const OrderDetailScreen({super.key,
    required this.orderDetails,
    required this.username,
    required this.status});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 21.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            SizedBox(height: 24.h),
            Text(
             "Order Details",
              style: TextStyle(
                color: fontColor1,
                fontWeight: FontWeight.w700,
                fontSize: 34.sp,
              ),
            ),
            SizedBox(height: 22.h),
            // order no and date and time
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                 "Order"+"\t"+ '${orderDetails.orderNumber}',
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w900,
                    color:  fontColor2,
                  ),
                ),
                Text(
                 orderDetails.uDate +"\t\t"+orderDetails.uTime,
                  style: TextStyle(
                    color:  fontColor2,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            SizedBox(height: 50.h),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                '${orderDetails.requests.length}'+"\t\t"+"items",
                style: TextStyle(
                  color:  fontColor2,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            SizedBox(height: 17.h),

            /// items list
            Expanded(
              child: ListView.separated(
                  separatorBuilder: (context, index) => SizedBox(height: 24.h),
                  itemCount: orderDetails.requests.length,
                  itemBuilder: (context, index) =>  ItemCardWidget(
                    order: orderDetails.requests[index],
                  )),
            ),

            /// Order information and price

            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Order information",
                style: TextStyle(
                  color:  fontColor2,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            SizedBox(height: 15.h),
            Text(
              "orderDetails.user.address",
              style: TextStyle(
                color:  fontColor2,
                fontSize: 14.sp,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(height: 20.h),
            Text(
              "${orderDetails.uTotalPrice}",
              style: TextStyle(
                color:  fontColor2,
                fontSize: 14.sp,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: 40.h),

            // /// Home Buttom
            // CustomBouttm(
            //   height: 48.h,
            //   width: 172.w,
            //   fontSize: 26.sp,
            //   radius: 15.r,
            //   fontWeight: FontWeight.w700,
            //   // onTap: () {
            //   //   Get.back();
            //   // },
            //   color:  mainColor,
            //   title: "Home",
            // ),
            // SizedBox(height: 23.h),
          ],
        ),
      )),
    );
  }
}

class ItemCardWidget extends StatelessWidget {
  final UserRequests order;
  const ItemCardWidget({

    super.key,
    required this.order,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(8.r),
      child: Container(
        height: 104.h,
        width: 343.w,
        padding: EdgeInsets.symmetric(vertical: 15.w, horizontal: 10.h),
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(8.r)),
        child: Row(children: [
          Image.asset(
            order.pImageAssets,
            width: 104.w,
            height: 96.h,
            fit: BoxFit.cover,
          ),
          SizedBox(width: 13.w),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                order.pTitle,
                style: TextStyle(
                  color:  fontColor2,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w900,
                ),
              ),
              Text(
                "Size"+"\t\t"+order.pSize,
                style: TextStyle(
                  color:  fontColor2,
                  fontSize: 11.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                "Component"+"\t\t"+order.pComponent,
                style: TextStyle(
                  color:  fontColor2,
                  fontSize: 11.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          const Spacer(),
          Align(
            alignment: Alignment.bottomRight,
            child: Text(
              "${order.pPrice}",
              style: TextStyle(
                color:  fontColor2,
                fontSize: 14.sp,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
