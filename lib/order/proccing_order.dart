

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/const.dart';
import 'package:intl/intl.dart';

class ProcessingOrderDetails extends StatefulWidget {
  const ProcessingOrderDetails({Key? key}) : super(key: key);

  @override
  State<ProcessingOrderDetails> createState() => _ProcessingOrderDetailsState();
}

class _ProcessingOrderDetailsState extends State<ProcessingOrderDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left:15.0,right: 15.0),
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: Column(
            //shrinkWrap: true,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20,),
            // if()
             buildStatusDetails(
                 Icon(Icons.access_time_filled_rounded,color: kprimaryColor,size: 30,),
                 "Accepted",
                 "13:01"),
              buildStatusDetails(
                  Icon(Icons.access_time_filled_rounded,color: kprimaryColor,size: 30,),
                  "In Kitchen",
                  "13:01"),

        buildStatusDetails(
            Icon(Icons.access_time_filled_rounded,color: kprimaryColor,size: 30,),
            "In Delivery",
            "13:01"),
              Row(
                // mainAxisAlignment: MainAxisAlignment.spaceAround,
                //crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment:  MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children:<Widget> [
                      Container(
                        child:Icon(Icons.access_time_filled_rounded,color: kprimaryColor,size: 30),
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          border: Border.all(),
                          borderRadius: BorderRadius.circular(50),
                        ),

                      ),
                      Padding(
                        padding: const EdgeInsets.only(left:5.0,right: 5.0),
                        child: Text("Arrived"),
                      ),
                    ],
                  ),
                  Text( (DateFormat('kk:mm')
                      .format(DateTime.now())
                      .toString()),),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Column buildStatusDetails(Icon icon,String status,String time) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
             children: <Widget>[
               Row(
                 // mainAxisAlignment: MainAxisAlignment.spaceAround,
                 //crossAxisAlignment: CrossAxisAlignment.start,
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                   Row(
                     mainAxisAlignment:  MainAxisAlignment.start,
                     crossAxisAlignment: CrossAxisAlignment.center,
                     children:<Widget> [
                       Container(
                         child: icon,
                         height: 50,
                         width: 50,
                         decoration: BoxDecoration(
                           border: Border.all(),
                           borderRadius: BorderRadius.circular(50),
                         ),

                       ),
                       Padding(
                         padding: const EdgeInsets.only(left:5.0,right: 5.0),
                         child: Text(status),
                       ),
                     ],
                   ),
                   Text(time),
                 ],
               ),
               Padding(
                 padding: const EdgeInsets.only(left:15.0,right: 15.0),
                 child: Container(child: Text("|",style: TextStyle(fontSize: 60),)),
               ),

               // SizedBox(height: 20,),
               // Row(
               //   // mainAxisAlignment: MainAxisAlignment.spaceAround,
               //   //crossAxisAlignment: CrossAxisAlignment.start,
               //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
               //   children: [
               //     Row(
               //       children: [
               //         Container(
               //           child: Icon(Icons.access_time_filled_rounded,color: kprimaryColor,size: 30,),
               //           height: 50,
               //           width: 50,
               //           decoration: BoxDecoration(
               //             border: Border.all(),
               //             borderRadius: BorderRadius.circular(50),
               //           ),
               //
               //         ),
               //         Padding(
               //           padding: const EdgeInsets.only(left:5.0,right: 5.0),
               //           child: Text("Status"),
               //         ),
               //       ],
               //     ),
               //     Text("13:01"),
               //   ],
               // ),
               // Padding(
               //   padding: const EdgeInsets.only(left:15.0,right: 15.0),
               //   child: Container(child: Text("|",style: TextStyle(fontSize: 80),)),
               // ),
             ],
           );
  }
}
