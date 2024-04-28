import 'package:flutter/material.dart';
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
            height: 103,
            width: //180,
            double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color:  kprimaryColor,
            ),
        child: Stack(
          children: [

            Positioned(
              top: 10,
              left: MediaQuery.of(context).size.width/2.5,
              right:  MediaQuery.of(context).size.width/10,
              child: Padding(
                padding: EdgeInsets.only(top: 0),
                child: Container(
                  width: 100,
                  // margin: EdgeInsets.symmetric(horizontal: 20),
                  // padding: EdgeInsets.only(
                  //     left: 15, right: 10,),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color:  kprimaryColor,
                  ),
                  child: Text("Get 20% Discount on everything you buy this week".tr ,
                      style: TextStyle(color: Colors.black,fontSize: 14,fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            Positioned(
                //bottom: 10,
                right: MediaQuery.of(context).size.width/15,
               top: 70,
               // right:  MediaQuery.of(context).size.width/5,
                child:    Container(
              height: 25,
              width: 98,
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
                    height: 144,
                    child: Image.asset("assets/images/women.png"))),
        ]
        ),
      ),
    );
  }
}
