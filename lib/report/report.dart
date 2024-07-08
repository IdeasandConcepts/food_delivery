


import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_delivery/const.dart';
import 'package:food_delivery/model/orders.dart';
import 'package:food_delivery/widgets/default_button.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class OrderReport extends StatefulWidget {
  // final int id, phone;
  // final String
  // //marketImage,
  // profileImage,
  //     username,role,
  //     branch,
  //     marketImage,
  //     market,
  //     nationality;
  // title,
  //marketDetails;
  final Orders rtvTasks;
  const OrderReport({
    super.key,
    required this.rtvTasks,
    // required this.role,
    // required this.profileImage,
    // required this.username,
    // required this.branch,
    // required this.market,
    // required this.id,
    // required this.phone,
    // required this.nationality,
    // required this.marketImage,
  });

  @override
  State<OrderReport> createState() => _OrderReportState();
}

class _OrderReportState extends State<OrderReport> {
  var _sellectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              // if(widget.role=="super")
              //   AndroidSuperVisorHeader(
              //       marketImage:widget.marketImage,
              //       role: widget.role,
              //       city:"Riyadh",
              //       branch: widget.branch,
              //       nationality: widget.nationality,
              //       //marketDetails:" widget.marketDetails",
              //       id: widget.id,
              //       phone: widget.phone,
              //       market: widget.market,
              //       username: widget.username,
              //       //marketimage: "widget.marketImage",
              //       profileImage: widget.profileImage),
              // if(widget.role=="manager")
              //   AndroidManagerHeader(
              //       marketImage:widget.marketImage,
              //       role: widget.role,
              //       // city:"Riyadh",
              //       branch: widget.branch,
              //       nationality: widget.nationality,
              //       //marketDetails:" widget.marketDetails",
              //       id: widget.id,
              //       phone: widget.phone,
              //       market: widget.market,
              //       username: widget.username,
              //       //marketimage: "widget.marketImage",
              //       profileImage: widget.profileImage
              //     //          market: market, username: username, profileImage: profileImage, id: id, phone: phone, nationality: nationality, branch: branch, role: role)
              //   ),
              //  const SizedBox(height: 40),
              // Image.asset(
              //   marketImage,
              //   width: 50,
              //   height: 200,
              // ),
              const SizedBox(height: 100.0),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: kprimaryColor
                ),
                height: 50.h,
                width:150.w,
                child: Center(
                  child: Text(
                    "Invoice",
                    style: TextStyle(fontSize: 13.sp,fontWeight: FontWeight.bold),


                  ),
                ),
              ),

              const SizedBox(height: 10.0),
          Container(
            width:330,

            //padding: EdgeInsets.only(top: 20),
            // decoration: BoxDecoration(
            //     color: kprimaryColor.withOpacity(0.45),
            //     borderRadius:
            //     // border: BorderRadius.circular(15)
            //     // border
            //     BorderRadius.circular(15)),

          child:  DataTable(
              dataTextStyle: TextStyle(fontSize: 13,fontWeight: FontWeight.bold,color: Colors.white),
              //showBottomBorder: true,
              //border: TableBorder.all(),
              //columnSpacing: 12,
              columns: [
                DataColumn(
                    label: Text(
                      'Restaurant'.tr.toUpperCase(),
                      style: const TextStyle(fontSize: 18,color: kprimaryColor),
                    )),
                DataColumn(
                    label: Text(
                      "Bill To".tr.toUpperCase(),
                       style: const TextStyle(fontSize: 18,color: kprimaryColor),
                    )),
              ], rows: [
                DataRow(cells: <DataCell>[
                  DataCell(Text(
                    'Branch Name'.tr.toUpperCase(),
                    style:  TextStyle(fontSize: 13.sp,color: Colors.white54),
                  )

                    // Text(merchandiserName)
                  ),

                  DataCell(Text(
                    widget.rtvTasks.user,
                    style:  TextStyle(fontSize: 13.sp,color: Colors.white54),
                  )),
                ]), DataRow(cells: <DataCell>[
                  DataCell(Text(
                    'Location'.tr.toUpperCase(),
                    style:  TextStyle(fontSize: 13.sp,color: Colors.white54),
                  )

                    // Text(merchandiserName)
                  ),

                  DataCell(Text(
                    "${widget.rtvTasks.orderNumber}",
                    style:  TextStyle(fontSize: 13.sp,color: Colors.white54),
                  )),
                ]),
              ]),
          ),
SizedBox(height: 10.h,),
              // here is our code :-
              SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.only(
                    right: 15,
                    left: 15,
                  ),
                  child: Column(
                    children: [
                      Container(
                          width:330,
                          //padding: EdgeInsets.only(top: 20),
                          decoration: BoxDecoration(
                              color: kprimaryColor.withOpacity(0.45),
                              borderRadius:
                              // border: BorderRadius.circular(15)
                              // border
                              BorderRadius.circular(15)),
                          child:
                          DataTable(
                            //dataTextStyle: TextStyle(fontSize: 13,fontWeight: FontWeight.bold),
                            //showBottomBorder: true,
                            //border: TableBorder.all(),
                            //columnSpacing: 12,
                              columns: [
                                DataColumn(
                                    label: Text(
                                      'Description'.tr.toUpperCase(),
                                      style: const TextStyle(fontSize: 5,color: Colors.black,fontWeight: FontWeight.bold),
                                    )),
                                DataColumn(
                                    label: Text(
                                      "Price".toUpperCase(),
                                      style: const TextStyle(fontSize: 5,color: Colors.black,fontWeight: FontWeight.bold),
                                    )),    DataColumn(
                                    label: Text(
                                      'Qty'.tr.toUpperCase(),
                                      style: const TextStyle(fontSize: 5,color: Colors.black,fontWeight: FontWeight.bold),
                                    )),
                                DataColumn(
                                    label: Text(
                                      "Total".toUpperCase(),
                                      style: const TextStyle(fontSize: 5,color: Colors.black,fontWeight: FontWeight.bold),
                                    )),
                              ],
                              rows: List.generate(widget.rtvTasks.requests.length, (index) =>

                                  DataRow(cells: <DataCell>[
                                    DataCell(
                                        Text(widget.rtvTasks.requests[index].pTitle.toUpperCase(),
                                          style: const TextStyle(fontSize: 5,color: Colors.white),
                                        )
                                    ),
                                    DataCell(Text(
                                      "${widget.rtvTasks.requests[index].pCount}",
                                      style: const TextStyle(fontSize: 5,color: Colors.white),
                                    )),
                                    DataCell(Text(
                                      "${widget.rtvTasks.requests[index].pPrice}",
                                      style: const TextStyle(fontSize: 5,color: Colors.white),
                                    )),   DataCell(Text(
                                      '${widget.rtvTasks.requests[index].pPrice * widget.rtvTasks.requests[index].pCount}'.tr.toUpperCase(),
                                      style: const TextStyle(fontSize: 5,color: Colors.white),
                                    )

                                      // Text(merchandiserName)
                                    ),
                                  ]
                                  ),
                              )
                          )


                      ),

                      SizedBox(height: 10,),
                      // Container(
                      //     width:330,
                      //     //padding: EdgeInsets.only(top: 20),
                      //     decoration: BoxDecoration(
                      //         color: kprimaryColor.withOpacity(0.45),
                      //         borderRadius:
                      //         // border: BorderRadius.circular(15)
                      //         // border
                      //         BorderRadius.circular(15)),
                      //     child:
                      //     DataTable(
                      //       //dataTextStyle: TextStyle(fontSize: 13,fontWeight: FontWeight.bold),
                      //       //showBottomBorder: true,
                      //       //border: TableBorder.all(),
                      //       //columnSpacing: 12,
                      //         columns: List.generate(widget.rtvTasks.requests.length, (index) =>
                      //           DataColumn(
                      //               label:
                      //                   Text(widget.rtvTasks.requests[index].pTitle.toUpperCase(),
                      //                     style: const TextStyle(fontSize: 5,color: Colors.white),
                      //                   )
                      //           ),
                      //         ),
                      //         //   DataColumn(
                      //         //       label: Text(
                      //         //         "Price".toUpperCase(),
                      //         //         style: const TextStyle(fontSize: 5,color: Colors.black,fontWeight: FontWeight.bold),
                      //         //       )),    DataColumn(
                      //         //       label: Text(
                      //         //         'Qty'.tr.toUpperCase(),
                      //         //         style: const TextStyle(fontSize: 5,color: Colors.black,fontWeight: FontWeight.bold),
                      //         //       )),
                      //         //   DataColumn(
                      //         //       label: Text(
                      //         //         "Total".toUpperCase(),
                      //         //         style: const TextStyle(fontSize: 5,color: Colors.black,fontWeight: FontWeight.bold),
                      //         //       )),
                      //         // ],
                      //         // rows: List.generate(widget.rtvTasks.requests.length, (index) =>
                      //         //
                      //         //     DataRow(cells: <DataCell>[
                      //         //       DataCell(
                      //         //           Text(widget.rtvTasks.requests[index].pTitle.toUpperCase(),
                      //         //             style: const TextStyle(fontSize: 5,color: Colors.white),
                      //         //           )
                      //         //       ),
                      //         //       DataCell(Text(
                      //         //         "${widget.rtvTasks.requests[index].pCount}",
                      //         //         style: const TextStyle(fontSize: 5,color: Colors.white),
                      //         //       )),
                      //         //       DataCell(Text(
                      //         //         "${widget.rtvTasks.requests[index].pPrice}",
                      //         //         style: const TextStyle(fontSize: 5,color: Colors.white),
                      //         //       )),   DataCell(Text(
                      //         //         '${widget.rtvTasks.requests[index].pPrice * widget.rtvTasks.requests[index].pCount}'.tr.toUpperCase(),
                      //         //         style: const TextStyle(fontSize: 5,color: Colors.white),
                      //         //       )
                      //         //
                      //         //         // Text(merchandiserName)
                      //         //       ),
                      //         //     ]
                      //         //     ),
                      //       rows: [],
                      //     //)
                      //     )
                      //
                      //
                      // ),
                      //
                      // SizedBox(height: 10,),
                     Container(width: 330,
                       child: Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: [
                           Container(
                             width: 150,
                             child: Row(
                               crossAxisAlignment: CrossAxisAlignment.start,
                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
                               children: [
                                 Column(
                                   mainAxisAlignment: MainAxisAlignment.start,
                                   crossAxisAlignment: CrossAxisAlignment.start,
                                   children: [
                                     Text("Invoice",    style: const TextStyle(fontSize: 15,color: Colors.white),),
                                     Text("Date",    style: const TextStyle(fontSize: 15,color: Colors.white),),

                                   ],
                                 ),Column(   mainAxisAlignment: MainAxisAlignment.start,
                                   crossAxisAlignment: CrossAxisAlignment.start,
                                   children: [
                                     Text("${widget.rtvTasks.orderNumber}", style: const TextStyle(fontSize: 15,color: Colors.white),),
                                     Text (DateFormat('yyyy-MM-dd')
                                         .format(DateTime.now())
                                         .toString(), style: const TextStyle(fontSize: 15,color: Colors.white),),
                                   ],
                                 )
                               ],
                             ),
                           ),
                           Container(width: 150,
                             child: Row(
                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
                               children: [
                                 Column(
                                   children: [
                                     Text("Subtotal".toUpperCase(), style: const TextStyle(fontSize: 15,color: Colors.white),),
                                     Text("Shipping".toUpperCase(), style: const TextStyle(fontSize: 15,color: Colors.white),),
                                     Text("TAX Rate".toUpperCase(), style: const TextStyle(fontSize: 15,color: Colors.white),),
                                   ],
                                 ),
                                 Column(
                                   children: [
                                     Text("${widget.rtvTasks.uTotalPrice}", style: const TextStyle(fontSize: 15,color: Colors.white),),
                                     Text("${15}", style: const TextStyle(fontSize: 15,color: Colors.white),),
                                     Text("${widget.rtvTasks.uTotalPrice*15/100}", style: const TextStyle(fontSize: 15,color: Colors.white),),
                                   ],
                                 )
                               ],
                             ),
                           ),
                         ],
                       ),
                     ),
                     SizedBox(height: 10.h,),
                     Container(width: 330,

                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [
                         Container(
                           width:170,
                           child: Text("Thank You For Your Business",
                                                  style: const TextStyle(fontSize: 12,color: kprimaryColor),
                                                ),
                         ),
                         Container(
                           height: 40,
                           decoration: BoxDecoration(
                             color: kprimaryColor
                           ),
                           padding: EdgeInsets.all(10),
                           width: 150.w,
                           child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                             children: [
                               Text("Total".toUpperCase(),),
                               Text("${widget.rtvTasks.uTotalPrice + widget.rtvTasks.uTotalPrice*15/100}",
                                 style:  TextStyle(fontSize: 15,color: Colors.white
                                   // style: const TextStyle(fontSize: 18,color: Colors.black87),
                                 ),)
                             ],
                           ),
                         )
                       ],
                     ),),
                     //  Padding(
                     //    padding: EdgeInsets.only(top:10.0),
                     //    child: Container(
                     //      child: Center(
                     //        child: Text("Meals".tr.toUpperCase(),
                     //          style:  TextStyle(
                     //              fontWeight: FontWeight.bold,
                     //              fontSize: 15,color: Colors.black87),
                     //        ),
                     //      ),
                     //    ),
                     //  ),
                     // SizedBox(height: 10,),
                      //
                      // Container(
                      //   width: 330,
                      //   //padding: EdgeInsets.only(top: 20),
                      //   decoration: BoxDecoration(
                      //       color: kprimaryColor.withOpacity(0.45),
                      //       borderRadius:
                      //       // border: BorderRadius.circular(15)
                      //       // border
                      //       BorderRadius.circular(15)),
                      //   child:
                      //   DataTable(dataTextStyle: TextStyle(
                      //
                      //       fontSize: 13,fontWeight: FontWeight.bold),
                      //       columns: [
                      //         DataColumn(
                      //             label: Text(
                      //               'Meal'.tr.toUpperCase(),
                      //               style: const TextStyle(
                      //                   fontWeight: FontWeight.bold,
                      //                   fontSize: 13,color: Colors.black87),
                      //             )),
                      //
                      //         DataColumn(
                      //             label: Text(
                      //               'Price'.tr.toUpperCase(),
                      //               style: const TextStyle(
                      //                   fontWeight: FontWeight.bold,
                      //                   fontSize: 13,color: Colors.black87),
                      //             )),
                      //
                      //       ],
                      //
                      //       rows: [
                      //
                      //       ]
                      //   ),
                      // ),


                      //SizedBox(height: 10,),
                      //  SizedBox(height: 10,),

                      // for(int i=0; i<widget.rtvTasks..length; i++)
                     // for(int i=0; i<widget.rtvTasks.rtvProduct.length; i++)
                      //  if(widget.rtvTasks.rtvProduct[i].pType=="Piece")

                      // Column(
                      //   children: [
                      //
                      //   ],
                      // ),
                      Padding(
                        padding: const EdgeInsets.only(left:30.0,right:30,top:5),
                        child: Divider(
                          color: Colors.black,
                        ),
                      ),
                      // Container(
                      //   width: 330,
                      //   //padding: EdgeInsets.only(top: 20),
                      //   decoration: BoxDecoration(
                      //       color: kprimaryColor.withOpacity(0.45),
                      //       borderRadius:
                      //       // border: BorderRadius.circular(15)
                      //       // border
                      //       BorderRadius.circular(15)),
                      //   child:
                      //   DataTable(dataTextStyle: TextStyle(
                      //
                      //       fontSize: 13,fontWeight: FontWeight.bold),
                      //
                      //       columns: [
                      //         DataColumn(
                      //             label: Text(
                      //               'Total'.tr.toUpperCase(),
                      //               //   style: const TextStyle(fontSize: 18,color: Colors.black87),
                      //             )),
                      //         DataColumn(
                      //             label: Text(
                      //              "${Text("${widget.rtvTasks.uTotalPrice - widget.rtvTasks.uTotalPrice*15/100}",
                      //                style: const TextStyle(fontSize: 15,color: Colors.white
                      //               // style: const TextStyle(fontSize: 18,color: Colors.black87),
                      //             ),
                      //       ],
                      //       rows: [
                      //
                      //
                      //       ]),
                      // ),
                      // SizedBox(height: 20,),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      floatingActionButton: Padding(
        padding: EdgeInsets.only(left: 30.w,right: 30.w),
        child:Container(
          padding: EdgeInsets.all(5),
          decoration: BoxDecoration(
              color: kprimaryColor,
              borderRadius: BorderRadius.circular(25)),
          width: double.infinity,
          height: 50,
          child: Center(
            child: Text(
              'Print Invoice',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Colors.white,
              ),
            ),
          ),
          // ),
        )
        // DefualtButton(
        //   //selected: true,
        //   text:
        // ),
      ),
    );
  }
}
