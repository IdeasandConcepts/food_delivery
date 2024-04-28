//
//
// import 'package:flutter/material.dart';
//
//
// class PaymentScreen extends StatefulWidget {
//   const PaymentScreen({Key? key}) : super(key: key);
//
//   @override
//   State<PaymentScreen> createState() => _PaymentScreenState();
// }
//
// class _PaymentScreenState extends State<PaymentScreen> {
//
// bool status=false;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       //resizeToAvoidBottomInset: false,
//       backgroundColor: Colors.white.withOpacity(0.9),
//       appBar: AppBar(
//         backgroundColor: Colors.white.withOpacity(0.9),
//        // title:
//        //
//
//           title:
//
//             Text(
//              "payment method".toUpperCase(),
//              style: TextStyle(
//                  fontWeight: FontWeight.bold,
//                  color: Colors.black),
//                 ),
//
//         centerTitle: true,
//
//
//       ),
//       body:   // actions: [
//       //   Icon(Icons.arrow_back_ios,color: Colors.black54,),
//       //
//       // ],
//       Column(
//         children: <Widget>[
//           SizedBox(
//             height: 40,
//           ),
//           // CreditCardWidget(
//           //   cardBgColor: ,
//           //     cardNumber: cardNumber,
//           //     expiryDate: expiryDate,
//           //     cardHolderName: cardHolderName,
//           //     cvvCode: cvvCode,
//           //     showBackView: true,
//           //     onCreditCardWidgetChange: (CreditCardBrand cardBrand){}),
//           // Expanded(
//           //     child: SingleChildScrollView(
//           //       child: Column(
//           //         children:<Widget> [
//           //           CreditCardForm(
//           //             obscureCvv: true,
//           //               obscureNumber: true,
//           //               isHolderNameVisible: true,
//           //               isCardNumberVisible: true,
//           //               isExpiryDateVisible: true,
//           //               cardNumber: cardNumber,
//           //               expiryDate: expiryDate,
//           //               cardHolderName: cardHolderName,
//           //               cvvCode: cvvCode,
//           //
//           //               onCreditCardModelChange: (){},
//           //               formKey: formKey)
//           //         ],
//           //       ),
//           //     )
//           // ),
//        // Padding(
//        //   padding: const EdgeInsets.all(8.0),
//        //   child: Container(
//        //       height: 50,
//        //       child: TextFormField()),
//        // ),
//        //    Padding(padding: EdgeInsets.all(10),
//        //    child: Container(
//        //      height: 120,
//        //      child: Row(
//        //        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//        //        children: [
//        //        Container(
//        //        height: 50,child: TextFormField()),
//        //      Container(
//        //        height: 50,
//        //          child: TextFormField())
//        //        ],
//        //      ),
//        //    ),
//        //    ),
//        //   C
//        //    Container(
//        //      child: Center(
//        //        child: Text("Pay"),
//        //      ),
//        //    )
//       Row(
//         children: [
//
//           buildCard(
//               Icon(
//                 Icons.credit_card,
//                 size: 45,
//                 color: Colors.white,
//               ),
//               "Credit Card",
//               true
//           ),
//           buildCard(
//               Icon(
//                 Icons.payment,
//                 size: 45,
//                 color: Colors.blue,
//               ),
//               "Debit",
//               false
//           ), buildCard(
//               Icon(
//                 Icons.paypal,
//                 size: 45,
//                 color: Colors.blue,
//               ),
//               "Pay",
//               false
//           ),
//
//         ],
//       ),
//           SizedBox(
//             height: 50,
//           ),
//           Padding(
//             padding:EdgeInsets.all(15.0),
//             child:
//           Container(
//             padding: EdgeInsets.all(15.0),
//             height: 80,
//             decoration: BoxDecoration(
//                 color: Colors.grey.withOpacity(0.1),
//                 borderRadius: BorderRadius.circular(25)
//             ),
//             child: Center(
//                 child:
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceAround,
//                   children:[
//                   Icon(Icons.add),
//                   Text("Add New Card")
//                   ]
//           )
//             ),
//           ))
//
//         ],
//       ),
//     );
//   }
//
//   Padding buildCard(
//       Icon icon,String title,
//       bool status
//       ) {
//     return Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Container(
//               decoration: BoxDecoration(
//                   color: (status==false)?Colors.grey.withOpacity(0.2):Colors.blueAccent,
//                   borderRadius: BorderRadius.circular(25)
//               ),
//               height: 140,
//               width: 110,
//               child: Center(
//                 child: Column(
//                   children: [
//                 Padding(
//                   padding: const EdgeInsets.all(10.0),
//                   child: Container(
//                     padding: EdgeInsets.all(8.0),
//                       decoration: (
//                           BoxDecoration(
//                             color:  (status==false)?Colors.grey.withOpacity(0.5):Colors.blueAccent,
//                         borderRadius: BorderRadius.circular(15)
//                       )),
//                       child:icon
//                      // Icon(icon,size:45,color: Colors.blue,)
//                   ),
//                 ),
//                     Padding(
//                       padding: const EdgeInsets.only(top:10.0),
//                       child: Text(title,style: TextStyle(
//                           fontSize: 18,color:  (status==false)?Colors.blue:Colors.white),),
//                     )
//               ],
//
//                 )
//                 ,),
//             ),
//           );
//   }
// }
