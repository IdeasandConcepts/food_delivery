import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_delivery/const.dart';
import 'package:food_delivery/model/orders.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class DeliveryTracking extends StatefulWidget {
  final Orders order;
  final String acceptingTime;
  const DeliveryTracking({
    super.key,
    required this.order,
    required this.acceptingTime
  });

  @override
  State<DeliveryTracking> createState() => _DeliveryTrackingState();
}

class _DeliveryTrackingState extends State<DeliveryTracking> {

  String confirmTime="";
  bool isConfirmed=false;

  @override
  Widget build(BuildContext context) {
    final currentWidth = MediaQuery.of(context).size.width-21.42;
    final currenheight = MediaQuery.of(context).size.height+160.58;
    return Scaffold(

        body:

        Container(
          decoration: BoxDecoration(
              color: Colors.white
          ),
          child: SingleChildScrollView(child: Column(

            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 60,left: 14),
                child: Text("Order Details" ,style:  TextStyle(
                    color: Color.fromRGBO(34, 34, 34, 1),
                    fontSize: 34, fontWeight: FontWeight.w700),)),

              //
              // Padding(
              //   padding: const EdgeInsets.only(top: 17, left:25 ),
              //
              //   child: Container(
              //     height: 30,
              //     width: 340,
              //
              //     child: Row(
              //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //       crossAxisAlignment: CrossAxisAlignment.center,
              //       children: [
              //         Container(
              //           height:30 ,
              //           width: 100,
              //           decoration: BoxDecoration(
              //               color: Colors.white,
              //               borderRadius: BorderRadius.circular(29)
              //           ),
              //           child: TextButton(
              //               onPressed: (){},
              //               child: Text("Delivered" , style:    TextStyle(fontSize: 14,fontWeight: FontWeight.w500, color: Colors.black)),)),
              //
              //
              //
              //         Container(
              //           height:30 ,
              //           width: 100,
              //           decoration: BoxDecoration(
              //             color: Color.fromRGBO(255, 190, 24, 1),
              //             borderRadius: BorderRadius.circular(29),
              //
              //           ),
              //           child: TextButton(
              //               onPressed: (){},
              //               child: Text("Processing" , style:    TextStyle(fontSize: 14,fontWeight: FontWeight.w500, color: Colors.white)),)),
              //
              //
              //
              //
              //         Container(
              //           height:30 ,
              //           width: 100,
              //           decoration: BoxDecoration(
              //               color: Colors.white,
              //               borderRadius: BorderRadius.circular(29)
              //           ),
              //           child: TextButton(
              //               onPressed: (){},
              //               child: Text("Canceled" , style:    TextStyle(fontSize: 14,fontWeight: FontWeight.w500, color: Colors.black)),)),
              //
              //
              //
              //       ],),
              //
              //   ),
              // ),


              Padding(
                padding: const EdgeInsets.only(left: 10.0, right:10.0,top: 20 ),
                child: Column(

                  //mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [


                    _proccesOrder(
                       // image: widget.order.requests[0].pImageAssets,
                        "Requested",
                        widget.order.uTime,
                      //  ((widget.order.uTime=="In Kitchen")?
                        kprimaryColor
                            //:Colors.grey)
                    ),
                   //  Container(
                   //   // height: 50,
                   //    width: 10,
                   //    child:Text("|")
                   // // Image.asset("assets/images/visa.png")
                   //  ),
                    //Divider(),
                   // if(step!="The order has been delivered")
                      Padding(
                        padding: const EdgeInsets.only(left: 35, right:35 ),
                        child: Image.asset("assets/images/line.jpeg",height: 60.h,
                          color:(widget.order.step=="In Kitchen")?kprimaryColor:Colors.black,),
                      ),
                    _proccesOrder(
                        //image:widget.order.requests[0].pImageAssets,
                      "in kitchen",
                         widget.order.acceptedTime,
                        (
                            widget.order.step=="In Kitchen"
                            ||
                                widget.order.step=="In Delivery"
                            ||
                                isConfirmed==true


                        )?
                        kprimaryColor
                      :Colors.grey
                    ),
                    // Container(
                    //     //height: 50,
                    //     width: 10,
                    //     child:Text("|")
                    //   // Image.asset("assets/images/visa.png")
                    // ),
                    //Divider(),
                   // if(step!="The order has been delivered")
                      Padding(
                        padding: const EdgeInsets.only(left: 35, right:35 ),
                        child: Image.asset("assets/images/line.jpeg",height: 60.h,color:(widget.order.step=="Accept")?kprimaryColor:Colors.black,),
                      ),
                    _proccesOrder(
                        //image:widget.order.requests[0].pImageAssets,
                       "In Delivery",
                       widget.acceptingTime,
                          (
                              widget.order.step=="Accept"
                              ||
                                  widget.order.step=="In Delivery"
                              ||
                                  isConfirmed==true
                                //  widget.order.step=="In Kitchen"


                          )?
                        kprimaryColor
                      :Colors.grey
                    ),

                    //Divider(),
                   // if(step!="The order has been delivered")
                      Padding(
                        padding: const EdgeInsets.only(left: 35, right:35 ),
                        child: Image.asset("assets/images/line.jpeg",height: 60.h,color:(widget.order.step=="Accept")?kprimaryColor:Colors.black,),
                      ),
                    _proccesOrder(
                       // image:widget.order.requests[0].pImageAssets,
                      "Delivered",
                         (isConfirmed==true)?confirmTime:"Not yet",
                        (isConfirmed==true)?
                            kprimaryColor:Colors.grey


                    ),





                  ],),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 97, top: 104.55),
                child: Container(
                    height: 50.55,
                    width: 190,
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(241, 21, 21, 1),
                        borderRadius: BorderRadius.circular(15)
                    ),
                    child: TextButton(
                        onPressed: (){
                          setState(() {
                            confirmTime=(DateFormat('kk:mm')
                                .format(DateTime.now())
                                .toString());
                            updateDataToAccept(widget.order.id, widget.order.status);
                            isConfirmed=true;
                          //  confirmTime=t;
                          });
                        },
                        child: Text("Delivered", style:  TextStyle(fontSize: 20,fontWeight: FontWeight.w700, color: Color.fromRGBO(255, 255, 255, 1))),)

                ),
              )


            ],
          ),),
        )
    );



  }

  Column _proccesOrder( String step, String time,Color color ){
return Column(
   mainAxisAlignment: MainAxisAlignment.start,
   crossAxisAlignment: CrossAxisAlignment.start,
  children: [
    Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
    Row(children: [
      Padding(
        padding: const EdgeInsets.only(left:10.0,right: 10),
        child: Container(
          height: 50.h,
          width: 50.h,
          decoration: BoxDecoration(
            color:color,
              borderRadius: BorderRadius.circular(25.h),

          ),
          child:


            (1==1)?
                Icon(Icons.access_time):
            (1==2)?
                  Icon(Icons.access_time):
              Icon(Icons.access_time)


          )
        ),
     // ),
    //Image.asset(image, scale:2,),

    Padding(
    padding: const EdgeInsets.only(left: 6),
    child: Text(step, style:    TextStyle(fontSize: 16.h,fontWeight: FontWeight.w600, color: Colors.black))),

    ],),

    Padding(
    padding: const EdgeInsets.only(right: 10,left: 10.0),
    child: Text(time , style:  TextStyle(fontSize: 10.h, fontWeight: FontWeight.w400, color: Colors.black),),
    )

    ],),

  ],
);
}

  @override
  updateDataToAccept(double  orderKey,String step) async {
    var user = await FirebaseFirestore.instance
        .collection("Orders")
    // .where("merchandiserList",arrayContainsAny: widget.conditionList)
   // .where('step', isEqualTo:step)
        .where('id', isEqualTo:orderKey)
        .where('status', isEqualTo: "New Order")
        .get();
    if (user.docs.isNotEmpty) {
      var doc_Id = user.docs.first.id;
      await FirebaseFirestore.instance
          .collection("Orders")
          .doc(doc_Id)
          .update({"status": "Accept"});
      //  statusstr = "done";
      print(doc_Id);
    }
    //

    //

  }

}