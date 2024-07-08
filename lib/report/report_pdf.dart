// //import 'dart:io';
// //import 'package:arrow_merchandising/models/rtv_model.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:food_delivery/model/orders.dart';
// import 'package:get/get.dart';
// import 'package:pdf/pdf.dart';
// import 'package:pdf/widgets.dart' as pw;
//
//
// import 'package:printing/printing.dart';
//
//
// class AndroidRTVPdfReports extends StatelessWidget {
// //  late
//   final Orders rtvTask;
//   final String reportMadeBy;
//
//   const AndroidRTVPdfReports(
//       {super.key, required this.rtvTask, required this.reportMadeBy});
//
//   @override
//   Widget build(BuildContext context) {
//     return PdfPreview(
//       build: (
//           //PdfPageFormat
//           format) =>
//           generateDocument(PdfPageFormat.legal
//             //  format
//           ),
//     );
//   }
//
//   // static var Font;
//   //static init() async {
//
//   // }
//
//   Future<Uint8List> generateDocument(PdfPageFormat format) async {
//     late pw.Font arFont;
//     arFont =
//         pw.Font.ttf((await rootBundle.load("assets/fonts/Cairo-Medium.ttf")));
//
//     // final doc = pw.Document(pageMode: PdfPageMode.outlines);
//
//     final doc = pw.Document(pageMode: PdfPageMode.outlines);
//     final imageByteData = await rootBundle.load('assets/images/arrow.jpg');
//     // Convert ByteData to Uint8List
//     final imageUint8List = imageByteData.buffer
//         .asUint8List(imageByteData.offsetInBytes, imageByteData.lengthInBytes);
//
//     final image = pw.MemoryImage(imageUint8List);
//
//
//     doc.addPage(pw.Page(
//       // textDirection:
//         pageTheme: pw.PageTheme(
//             textDirection: pw.TextDirection.rtl,
//             pageFormat: format.copyWith(
//                 marginBottom: 20,
//                 marginLeft: 10,
//                 marginRight: 10,
//                 marginTop: 10),
//             orientation: pw.PageOrientation.portrait,
//             theme: pw.ThemeData.withFont(
//               base: arFont,
//               // bold: arFont,
//             )),
//         build: (context) {
//           return pw.Padding(
//               padding: pw.EdgeInsets.only(left: 25, right: 25),
//               child:
//               pw.Container(
//                   padding: pw.EdgeInsets.only(left: 25, right: 25),
//                   //color:pw.Colors.amberAccent,
//                   decoration: pw.BoxDecoration(
//                     // color: Colors.amber,
//                     // borderRadius: pw.BorderRadius.circular(25),
//                     //border: pw.Border.all()
//                   ),
//                   child: pw.Center(
//                     child: pw.Column(
//                         children: [
//                           pw.Container(
//                             // height: 50,
//                             // width: 50,
//                               child: pw.Image(image)
//                           ),
//                           pw.Padding(
//                             padding: const pw.EdgeInsets.only(left:30.0,right:30,top:5.0),
//                             child: pw.Container(
//                               height: 40,
//                               //width: 280,
//                               decoration: pw.BoxDecoration(
//                                 borderRadius: pw.BorderRadius.circular(10),
//                                 //color: pw.Colors.grey.withOpacity(0.2)
//                               ),
//                               child: pw.Center(
//                                 child: pw.Text("RTV Report".tr.toUpperCase(),
//                                   style: pw.TextStyle(fontSize: 18,fontWeight: pw.FontWeight.bold),
//
//                                   //"26".tr
//                                 ),
//                               ),
//                             ),
//                           ),
//                           pw.Container(
//                               padding: pw.EdgeInsets.only(left: 25, right: 25),
//                               //color:pw.Colors.amberAccent,
//                               decoration: pw.BoxDecoration(
//                                 // color: Colors.amber,
//                                 //borderRadius: pw.BorderRadius.circular(25),
//                                 // border: pw.Border.all()
//                               ),
//                               child:pw.Column(
//                                   children: [
//                                     pw.Center(
//                                       child: pw.Text(
//                                           '${rtvTask.requests.length}' + " "+"Meal".tr,
//                                           style: pw.TextStyle(fontSize: 15,
//                                               fontWeight: pw.FontWeight.bold)),
//                                     ),
//                                     pw.Row(
//                                         mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
//                                         children: [
//                                           pw.Text(
//                                               "Date".tr,
//                                               style: pw.TextStyle(fontSize: 15)),
//                                           pw.Text(
//                                               rtvTask.uDate,
//                                               style: pw.TextStyle(fontSize: 15)),
//
//                                         ]
//                                     ),
//                                     pw.Row(
//                                         mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
//                                         children: [
//                                           pw.Text(
//                                             "Time".tr,
//                                             style: pw.TextStyle(fontSize: 15),
//                                           ),
//                                           pw.Text(
//                                             rtvTask.uTime,
//                                             style: pw.TextStyle(fontSize: 15),
//                                           ),
//                                         ]),
//                                     //pw.Divider(height: 0.1),
//                                     pw.Row(
//                                         mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
//                                         children: [
//                                           pw.Text(
//                                             "Branch".tr,
//                                             style: pw.TextStyle(fontSize: 15),
//                                           ),
//                                           pw.Text(
//                                             rtvTask.branch,
//                                             style: pw.TextStyle(fontSize: 15),
//                                           )
//                                         ]),
//                                   ]
//                               )
//                           ),
//                           pw.SizedBox(height: 20),
//                           pw.Container(
//                               padding: pw.EdgeInsets.only(left: 25, right: 25),
//                               //color:pw.Colors.amberAccent,
//                               decoration: pw.BoxDecoration(
//                                   border: pw.Border.all()
//                               ),
//                               child: pw.Column(
//                                   children: [
//                                     pw.Row(
//                                         mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
//                                         children: [
//                                           pw.Text(
//                                             'Date'.tr,
//                                             style: pw.TextStyle(fontSize: 15),
//                                           ),
//                                           pw.Text(
//                                             rtvTask.taskDate,
//                                             style: pw.TextStyle(fontSize: 15),
//                                           )
//                                         ]),
//                                     pw.Divider(height: 0.1),
//                                     pw.Row(
//                                         mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
//                                         children: [
//                                           pw.Text(
//                                             'Time'.tr,
//                                             style: pw.TextStyle(fontSize: 15),
//                                           ),
//                                           pw.Text(
//                                             rtvTask.taskTime,
//                                             style: pw.TextStyle(fontSize: 15),
//                                           )
//                                         ]),
//                                     pw.Divider(height: 0.1),
//
//                                     pw.Row(
//                                         mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
//                                         children: [
//                                           pw.Text(
//                                             'Done By'.tr,
//                                             style: pw.TextStyle(fontSize: 15),
//                                           ),
//                                           pw.Text(
//                                             rtvTask.madeBy,
//                                             style: pw.TextStyle(fontSize: 15),
//                                           )
//                                         ]),
//                                   ])
//                           ),
//                           pw.SizedBox(height: 20),
//                           pw.Text(
//                             'Returned Products'.tr,
//                             style: pw.TextStyle(fontSize: 15),
//                           ),
//                           pw.Container(
//                             padding: pw.EdgeInsets.only(left: 25, right: 25),
//                             //color:pw.Colors.amberAccent,
//                             decoration: pw.BoxDecoration(
//                               // color: Colors.amber,
//                               // borderRadius: pw.BorderRadius.circular(25),
//                               border: pw.Border.all(),
//                             ),
//                             child:
//                             pw.Row(
//                                 mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
//                                 children: [
//                                   pw.Text(
//                                     'Product'.tr,
//                                     style: pw.TextStyle(fontSize: 15),
//                                   ),
//                                   pw.Text(
//                                     'Return Quantity'.tr,
//                                     style: pw.TextStyle(fontSize: 15),
//                                   )
//                                 ]),
//                           ),
//                           pw.SizedBox(height: 10),
//                           for(int i=0;i<rtvTask.rtvProduct.length;i++)
//                           // if(rtvTask.rtvProduct[i].pType=="Piece")
//                             pw.Container(
//                               padding: pw.EdgeInsets.only(left: 25, right: 25),
//                               //color:pw.Colors.amberAccent,
//                               decoration: pw.BoxDecoration(
//                                 // color: Colors.amber,
//                                 // borderRadius: pw.BorderRadius.circular(25),
//                                 border: pw.Border.all(),
//                               ),
//                               child:
//                               pw.Row(
//                                   mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
//                                   children: [
//                                     pw.Text(
//                                       rtvTask.rtvProduct[i].product,
//                                       style: pw.TextStyle(fontSize: 15),
//                                     ),
//                                     pw.Text(
//                                       "${
//                                           rtvTask.rtvProduct[i].prAmount}",
//                                       style: pw.TextStyle(fontSize: 15),
//                                     )
//                                   ]),
//                             ),
//                           pw.SizedBox(height: 20),
//                           // pw.Text(
//                           //   'Case Product'.tr,
//                           //   style: pw.TextStyle(fontSize: 15),
//                           // ),
//                           // pw.Container(
//                           //   padding: pw.EdgeInsets.only(left: 25, right: 25),
//                           //   //color:pw.Colors.amberAccent,
//                           //   decoration: pw.BoxDecoration(
//                           //     // color: Colors.amber,
//                           //     // borderRadius: pw.BorderRadius.circular(25),
//                           //     border: pw.Border.all(),
//                           //   ),
//                           //   child:
//                           //   pw.Row(
//                           //       mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
//                           //       children: [
//                           //         pw.Text(
//                           //           'Product'.tr,
//                           //           style: pw.TextStyle(fontSize: 15),
//                           //         ),
//                           //         pw.Text(
//                           //           'Return Quantity'.tr,
//                           //           style: pw.TextStyle(fontSize: 15),
//                           //         )
//                           //       ]),
//                           // ),
//                           // pw.SizedBox(height: 10),
//                           // for(int i=0;i<rtvTask.rtvProduct.length;i++)
//                           //   if(rtvTask.rtvProduct[i].pType=="Case")
//                           //     pw.Container(
//                           //       padding: pw.EdgeInsets.only(left: 25, right: 25),
//                           //       //color:pw.Colors.amberAccent,
//                           //       decoration: pw.BoxDecoration(
//                           //         // color: Colors.amber,
//                           //         // borderRadius: pw.BorderRadius.circular(25),
//                           //         border: pw.Border.all(),
//                           //       ),
//                           //       child:
//                           //       pw.Row(
//                           //           mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
//                           //           children: [
//                           //             pw.Text(
//                           //               rtvTask.rtvProduct[i].product,
//                           //               style: pw.TextStyle(fontSize: 15),
//                           //             ),
//                           //             pw.Text(
//                           //               "${
//                           //                   rtvTask.rtvProduct[i].prAmount}",
//                           //               style: pw.TextStyle(fontSize: 15),
//                           //             )
//                           //           ]),
//                           //     ),
//                           // pw.SizedBox(height: 20),pw.Text(
//                           //   'Full Case Product'.tr,
//                           //   style: pw.TextStyle(fontSize: 15),
//                           // ),
//                           // pw.Container(
//                           //   padding: pw.EdgeInsets.only(left: 25, right: 25),
//                           //   //color:pw.Colors.amberAccent,
//                           //   decoration: pw.BoxDecoration(
//                           //     // color: Colors.amber,
//                           //     // borderRadius: pw.BorderRadius.circular(25),
//                           //     border: pw.Border.all(),
//                           //   ),
//                           //   child:
//                           //   pw.Row(
//                           //       mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
//                           //       children: [
//                           //         pw.Text(
//                           //           'Product'.tr,
//                           //           style: pw.TextStyle(fontSize: 15),
//                           //         ),
//                           //         pw.Text(
//                           //           'Return Quantity'.tr,
//                           //           style: pw.TextStyle(fontSize: 15),
//                           //         )
//                           //       ]),
//                           // ),
//                           // pw.SizedBox(height: 10),
//                           // for(int i=0;i<rtvTask.rtvProduct
//                           //     .length;i++)
//                           //   if(rtvTask.rtvProduct[i].pType=="Full Case")
//                           //     pw.Container(
//                           //       padding: pw.EdgeInsets.only(left: 25, right: 25),
//                           //       //color:pw.Colors.amberAccent,
//                           //       decoration: pw.BoxDecoration(
//                           //         // color: Colors.amber,
//                           //         // borderRadius: pw.BorderRadius.circular(25),
//                           //         border: pw.Border.all(),
//                           //       ),
//                           //       child:
//                           //       pw.Row(
//                           //           mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
//                           //           children: [
//                           //             pw.Text(
//                           //               rtvTask.rtvProduct[i].product,
//                           //               style: pw.TextStyle(fontSize: 15),
//                           //             ),
//                           //             pw.Text(
//                           //               "${
//                           //                   rtvTask.rtvProduct[i].prAmount}",
//                           //               style: pw.TextStyle(fontSize: 15),
//                           //             )
//                           //           ]),
//                           //     ),
//                           pw.Column(
//                               children: [
//
//                                 pw.SizedBox(height: 20),
//                                 pw.Container(
//                                     padding: pw.EdgeInsets.only(left: 25, right: 25),
//                                     //color:pw.Colors.amberAccent,
//                                     decoration: pw.BoxDecoration(
//                                       // color: Colors.amber,
//                                       //borderRadius: pw.BorderRadius.circular(25),
//                                         border: pw.Border.all()
//                                     ),
//                                     child: pw.Column(
//                                         children: [
//                                           pw.Row(
//                                               mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
//                                               children: [
//                                                 pw.Text(
//                                                   'Report Created By'.tr,
//                                                   style: pw.TextStyle(fontSize: 15),
//                                                 ),
//                                                 pw.Text(
//                                                   reportMadeBy,
//                                                   textAlign: pw.TextAlign.center,
//                                                   style: pw.TextStyle(fontSize: 15),
//                                                 )
//                                               ]),
//                                           pw.Divider(height: 0.1),
//                                           pw.Row(
//                                               mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
//                                               children: [
//                                                 pw.Text(
//                                                   'Report Created Day'.tr,
//                                                   style: pw.TextStyle(fontSize: 15),
//                                                 ),
//                                                 pw.Text(
//                                                   DateTime.now().day.toString()+'/'+
//                                                       DateTime.now().month.toString()+'/'+
//                                                       DateTime.now().year.toString(),
//                                                   // widget.reportMadeBy,
//                                                   textAlign: pw.TextAlign.center,
//                                                   style: pw.TextStyle(fontSize: 15),
//                                                 )
//                                               ]),
//                                           pw.Divider(height: 0.1),
//                                           pw.Row(
//                                               mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
//                                               children: [
//                                                 pw.Text(
//                                                   'Report Created Time'.tr,
//                                                   style: pw.TextStyle(fontSize: 15),
//                                                 ),
//                                                 pw.Text(
//                                                   DateTime.now().hour.toString()+':'+
//                                                       DateTime.now().minute.toString(),
//                                                   // widget.reportMadeBy,
//                                                   textAlign: pw.TextAlign.center,
//                                                   style: pw.TextStyle(fontSize: 15),
//                                                 )
//                                               ]),
//
//                                         ]
//                                     )
//                                 ),
//                               ]
//
//                           ),
//                           // pw.SizedBox(height: 20),
//
//                           // pw.SizedBox(height: 20),
//
//                         ]),
//                   )
//               ));
//         }));
//     return doc.save();
//   }
// }
