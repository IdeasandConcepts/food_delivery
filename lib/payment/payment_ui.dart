//
//
// import 'package:flutter/material.dart';
//
// class PaymentUi extends StatefulWidget {
//   const PaymentUi({Key? key}) : super(key: key);
//
//   @override
//   State<PaymentUi> createState() => _PaymentUiState();
// }
//
// class _PaymentUiState extends State<PaymentUi> {
//   String selectedPaymentMethod="Credit Card";
//   int num=1212;
// bool checked=false;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//
//
//       appBar: AppBar(
//         backgroundColor: Colors.white,
//       title:
//       Text("Payment Method".toUpperCase(),
//         style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),
//
//       ),
//         centerTitle: true,
//       ),
//       body: Container(
//         height: MediaQuery.of(context).size.height-50,
//         child: Column(
//           children: <Widget>[
//             SizedBox(height: 30,),
//             SingleChildScrollView(
//               scrollDirection: Axis.horizontal,
//               child: Row(
//                 children: <Widget>[
//                   Padding(
//                     padding: const EdgeInsets.all(10.0),
//                     child:
//                     buildCardContainer(
//                       Icon(
//                         Icons.credit_card,
//                         color: (selectedPaymentMethod=="Credit Card")
//                             ?Colors.white:Colors.blue,
//                         size: 45,),
//                         "Credit Card",
//                         (selectedPaymentMethod=="Credit Card")?true:false
//                     ),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.all(10.0),
//                     child:
//                     buildCardContainer(
//                         Icon(
//                           Icons.calendar_today_rounded,
//                           color: (selectedPaymentMethod=="Debit")?Colors.white:Colors.blue,size: 45,),
//                         "Debit",
//                         (selectedPaymentMethod=="Debit")?true:false
//                     ),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.all(10.0),
//                     child:
//                     buildCardContainer(
//
//                         Icon(
//                           Icons.paypal,
//                           color: (selectedPaymentMethod=="PayPal")?Colors.white:Colors.blue,size: 45,),
//                         "PayPal",
//                         (selectedPaymentMethod=="PayPal")?true:false
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             SizedBox(height: 15,),
//             Padding(
//               padding: const EdgeInsets.all(10.0),
//               child: Container(
//                 height: 70,
//
//                 decoration: BoxDecoration(
//                   color: Colors.grey.withOpacity(0.5),
//                 borderRadius: BorderRadius.circular(20)
//                 ),
//                 child: Center(
//                   child: Row(
//
//                     children: <Widget>[
//                       Icon(Icons.add,size: 30,),
//                       Text("Add New Card")
//
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//
//             Padding(
//               padding: const EdgeInsets.all(10.0),
//               child: Container(
//                 height: 90  ,
//                 decoration: BoxDecoration(
//                     color: Colors.white.withOpacity(0.5),
//                     borderRadius: BorderRadius.circular(20),
//                   border: Border.all(color: Colors.blue),
//                 ),
//                 padding: EdgeInsets.all(10),
//                 child:Column(
//                   mainAxisAlignment: MainAxisAlignment.start,
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: <Widget>[
//                     Text("MasterCard"),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: <Widget>[
//                         Icon(Icons.calendar_today_rounded),
//                         Text('${num}'),
//
//                         Radio(
//                           // title: Text("Male"),
//                           value: !checked,
//                           groupValue: !checked,
//                           onChanged: (value) {
//                             setState(() {
//                               checked=!checked;
//                               //if()
//                              // secondMerchandisersRadio = true;
//                               // counter++;
//                               // value.toString();
//                               // haveacar == true;
//                             });
//                           },
//                         ),
//
//
//                       ],
//                     )
//                   ],
//                 )
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
//
//   Container buildCardContainer(
//       Icon icon,String title,bool status) {
//     return Container(
//                   padding: EdgeInsets.all(10),
//                   height: 140,
//                   width: 120,
//                   decoration: BoxDecoration(
//                     color: (status==true)?Colors.blue:Colors.grey.withOpacity(0.3),
//                     borderRadius: BorderRadius.circular(25)
//                   ),
//                   child:
//                   Center(
//                     child:
//                   Column(
//                     children: <Widget>[
//                      Container(
//                        width:70,
//                   height: 70,
//                        padding: const EdgeInsets.all(10.0),
//                   decoration: BoxDecoration(
//                     color:  (status==true)?Colors.blue:
//                        Colors.grey.withOpacity(0.8),
//                       borderRadius: BorderRadius.circular(10)),
//                        child: Center(
//                          child: icon,
//                        ),
//                      ),
//                       Padding(
//                           padding: const EdgeInsets.only(top:10.0),
//                           child: Text(title,
//                             style: TextStyle(
//                             fontSize: 20,
//                               color: (status==true)?Colors.white:Colors.blue
//                           ),),
//                         ),
//
//
//                     //  )
//                     ],
//                   ),
//                   )
//                 );
//   }
// }
