import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:food_delivery/const.dart';

class DiscountBanner extends StatelessWidget {
  const DiscountBanner({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          left: 15, right: 15),
      child: Container(
           // margin: EdgeInsets.symmetric(horizontal: 20),
            // padding: EdgeInsets.only(
            //     left: 15, right: 10,top: 10),
            height: 80.h,
            width: //180,
            double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color:  kprimaryColor,
            ),
        child: Stack(
          children: [

            Positioned(
              top: 10.h,
              left: (MediaQuery.of(context).size.width/3).h,
              right:  (MediaQuery.of(context).size.width/15).h,
              child: Padding(
                padding: EdgeInsets.only(top: 0),
                child: Container(
                 // width: 150.w,
                  // margin: EdgeInsets.symmetric(horizontal: 20),
                  // padding: EdgeInsets.only(
                  //     left: 15, right: 10,),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color:  kprimaryColor,
                  ),
                  child: Text("Get 20% Discount on everything you buy this week".tr ,
                      style: TextStyle(color: Colors.black,fontSize: 12.sp,fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            Positioned(
                //bottom: 10,
                right: (MediaQuery.of(context).size.width/15).h,
               top: 50.h,
               // right:  MediaQuery.of(context).size.width/5,
                child:    Container(
              height: 25.h,
              width: 98.w,
              decoration: BoxDecoration(
                border: Border.all(),
                color: Colors.black,
                borderRadius: BorderRadius.circular(5)
              ),
              child: Center(
                child: Text("Buy Now",
                  style: TextStyle(color: Colors.white,fontSize: 12),


                ),
              ),
            )),
            Positioned(
              top: -0,
                left: -20,
                bottom: -10,
                child: Container(
                    // padding: EdgeInsets.only(
                    //     left: 15, right: 15),
                    //height: 104,
                    child: Image.asset("assets/images/women.png"))),
        ]
        ),
      ),
    );
  }
}
