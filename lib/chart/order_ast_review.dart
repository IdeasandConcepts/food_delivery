
import 'package:flutter/material.dart';
import 'package:food_delivery/const.dart';
import 'package:food_delivery/model/request.dart';
import 'package:food_delivery/model/user_orders.dart';
import 'package:food_delivery/payment/success_screen.dart';
import 'package:food_delivery/widgets/default_button.dart';
import 'package:get/get.dart';

class OrderLastReview extends StatelessWidget {
  final List<UserRequests> userOrdersList;
  const OrderLastReview({Key? key, required this.userOrdersList}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.asset(

            "assets/images/background.jpeg",

            height: 420,),
          Container(
            //height: 450,
            decoration:   BoxDecoration(

              //Colors.white24,
              borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40),
              topRight: Radius.circular(40)

              ),
              color: Colors.white.withOpacity(0.9),
              border: Border.all()
            ),
            child: Column(
              children: <Widget>[
                Padding(padding: EdgeInsets.only(left: 10,right: 10,top: 40),

                  child: Container(
                    padding: EdgeInsets.only(left: 20,right: 20,),
                    color: Colors.white,
                    height: 70,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text("Total Amount",
                          style: TextStyle(
                              fontSize: 16,fontWeight: FontWeight.bold
                          ),
                        ),
                        Text("${111}", style: TextStyle(
                            fontSize: 16,fontWeight: FontWeight.bold
                        ),)
                      ],
                    ),
                  ),
                ),
                Padding(padding: EdgeInsets.only(left: 10,right: 10,top: 10),

                child: Container(
                  padding: EdgeInsets.only(left: 20,right: 20,),
                  color: Colors.white,
                  height: 70,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text("Total Products",
                      style: TextStyle(
                        fontSize: 16,fontWeight: FontWeight.bold
                      ),
                      ),
                      Text("${3}", style: TextStyle(
                          fontSize: 16,fontWeight: FontWeight.bold
                      ),)
                    ],
                  ),
                ),
                ),
                Padding(padding: EdgeInsets.only(left: 10,right: 10,top: 10),

                  child: Container(
                    padding: EdgeInsets.only(left: 20,right: 20,),
                    color: Colors.white,
                    height: 70,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text("Delivery Time",
                          style: TextStyle(
                              fontSize: 16,fontWeight: FontWeight.bold
                          ),
                        ),
                        Text("${30}"+"\t"+"M", style: TextStyle(
                            fontSize: 16,fontWeight: FontWeight.bold
                        ),)
                      ],
                    ),
                  ),
                ),
                Padding(padding: EdgeInsets.only(left: 30,right: 30,top:70),

                  child: GestureDetector(
                      onTap: (){
                        Get.to(()=>SuccessScreen());
                      },
                      child: DefualtButton(text: "Confirm",))
                ),
      Padding(padding: EdgeInsets.only(left: 10,right: 10,top: 10),)
              ],
            ),
              ),
        ],
      ),
    );
  }
}
