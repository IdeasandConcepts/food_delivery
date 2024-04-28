import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:food_delivery/chart/order_ast_review.dart';
import 'package:food_delivery/model/request.dart';
import 'package:food_delivery/model/user_orders.dart';

class CreditCardsPage extends StatefulWidget {
  final List<UserRequests> userOrdersList;
  const CreditCardsPage({super.key,required this.userOrdersList});


  @override
  State<CreditCardsPage> createState() => _CreditCardsPageState();
}

class _CreditCardsPageState extends State<CreditCardsPage> {
bool value=false;

  @override
  Widget build(BuildContext context) {
    final currentWidth = MediaQuery.of(context).size.width-36.4285;
    final currenheight = MediaQuery.of(context).size.height+128.571429;
    //return const Placeholder();
    bool value= true;
    bool valuen=false;
    return Scaffold(

      appBar: AppBar(
        centerTitle: true,
        //backgroundColor: TabBarTheme.lightAppBarTheme ,
        backgroundColor: Colors.white,
        shadowColor:Colors.white,
        iconTheme: const IconThemeData(color: Colors.black),
        title: Text("Payment methods" ,
        style:  const TextStyle(
            fontSize: 18,fontWeight: FontWeight.w900,color: Colors.black),),
      leading: IconButton(
          icon: const Icon(Icons.chevron_left),
          onPressed: (){},
        ),

      ),

      body: SingleChildScrollView(child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 30, 0, 0),
            child: Text("Your payment cards", style:  const TextStyle(
                fontSize: 16,fontWeight: FontWeight.w900,color: Colors.black),),
          ),

          Padding(
            padding: const EdgeInsets.all(16),
            child: GestureDetector(
              onTap: (){
                Get.to(()=>OrderLastReview(
                  userOrdersList: widget.userOrdersList,
                ));
               // OrderLastReview
              },
              child: _buildCreditCard(
                    color: Color.fromRGBO(34, 34, 34, 1),
                    cardExpiration: "05/23",
                    cardHolder: "Jennyfer Doe",
                    cardNumber: "* * * *  * * * *  * * * *  3947"
                  ),
            ),
          ),

          CheckboxListTile(
            controlAffinity: ListTileControlAffinity.leading,
            activeColor: Colors.black,
            value: value,
            title: Text("Use as default payment method"),
            onChanged: (value) => setState (() =>  this.value = value!),
          ),

          Padding(
            padding: const EdgeInsets.all(16),
            child:  GestureDetector(
              onTap: (){
                Get.to(()=>OrderLastReview(
                  userOrdersList: widget.userOrdersList,
                ));
                // OrderLastReview
              },
              child: _buildVisaCard(
                    color: Color.fromRGBO(155, 155, 155, 1),
                    cardExpiration: "11/22",
                    cardHolder: "Jennyfer Doe",
                    cardNumber: "* * * *  * * * *  * * * *  4546"
                  ),
            ),
          ),

          CheckboxListTile(
            controlAffinity: ListTileControlAffinity.leading,
            activeColor: Colors.black,
            value: valuen,
            title: Text("Use as default payment method"),
            onChanged: (value) => setState (() =>  this.value = value!),
          ),

          _buildAddCardButton(
              icon: Icon(Icons.add),
              color: Color(0xFF081603),
          )





        ],
      ),)

    );

  }

    Card _buildCreditCard(
      {required Color color,
      required String cardNumber,
      required String cardHolder,
      required String cardExpiration}) {
    return Card(
      elevation: 4.0,
      color: color,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),

      ),
      child: Container(

        decoration: BoxDecoration(
          boxShadow: [BoxShadow(
            color: Color.fromRGBO(0, 0, 0, 0.34),
            spreadRadius: 0,
            blurRadius: 25,
            offset: Offset(0, 1),
          )]

        ),
        height: 226,
        padding: const EdgeInsets.only(top: 34,left: 24, right: 24, bottom: 32),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            //_buildLogosBlock(),
            Image.asset('assets/images/chip.png',height: 24,width: 32,),
            Padding(
              padding: const EdgeInsets.all(10),
               child: Text(
                '$cardNumber',
                style:  TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    ),)
              ),

            //Padding(
              //padding: const EdgeInsets.only(top: 0),
               Padding(
                 padding: const EdgeInsets.only(left: 3),
                 child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    _buildDetailsBlock(
                      label: 'Card Holder Name',
                      value: cardHolder,
                    ),
                    _buildDetailsBlock(
                      label: 'Expiry Date',
                      value: cardExpiration
                    ),
                    Image.asset('assets/images/mastercard.png', scale: 4,)
                  ],
                             ),
               ),
           // ),
          ],
        ),
      ),
    );
  }
  Column _buildDetailsBlock({required String label, required String value}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          '$label',
          style:  TextStyle(
              color: Colors.grey, fontSize: 10, fontWeight: FontWeight.w900),
    ),

        Padding(
          padding: const EdgeInsets.only(top: 3),
          child: Text(
            '$value',
            style:  TextStyle(
                color: Colors.white, fontSize: 14, fontWeight: FontWeight.w900),)
          ),

      ],
    );
  }


  Card _buildVisaCard(
      {required Color color,
      required String cardNumber,
      required String cardHolder,
      required String cardExpiration}) {
    return Card(
      elevation: 4.0,
      color: color,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),

      ),
      child: Container(

        decoration: BoxDecoration(
          boxShadow: [BoxShadow(
            color: Color.fromRGBO(34, 34, 34, 0.08),
            spreadRadius: 0,
            blurRadius: 25,
            offset: Offset(0, 1),
          )]

        ),
        height: 226,
        padding: const EdgeInsets.only(top: 19,left: 24, right: 24, bottom: 32),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            //_buildLogosBlock(),
            Padding(
              padding: const EdgeInsets.only(left: 269),
              child: Image.asset('assets/images/visa.png',height: 16,width: 50,),
            ),
            Padding(
              padding: const EdgeInsets.all( 10),
               child: Text(
                '$cardNumber',
                style:  TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    ),)

            ),
            //SizedBox(height: 10,),
            Image.asset('assets/images/chip.png',height: 24,width: 32),

               Padding(
                 padding: const EdgeInsets.only(left: 3),
                 child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    _detailLabelVisa(
                      label: 'Card Holder Name',
                      value: cardHolder,
                    ),
                    _detailLabelVisa(
                      label: 'Expiry Date',
                      value: cardExpiration
                    ),

                  ],
                             ),
               ),
           // ),
          ],
        ),
      ),
    );
  }
  Column _detailLabelVisa({required String label, required String value}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          '$label',
          style:  TextStyle(
              color: Color.fromRGBO(255, 255, 255, 1), fontSize: 10, fontWeight: FontWeight.w900),),
        Padding(
          padding: const EdgeInsets.only(top: 3),
          child: Text(
            '$value',
            style:  TextStyle(
                color: Color.fromRGBO(255, 255, 255, 1), fontSize: 14, fontWeight: FontWeight.w900),)
          ),
      ],
    );
  }

   Container _buildAddCardButton({
    required Icon icon,
    required Color color,
  }) {
    return Container(
      margin: const EdgeInsets.only(top: 2, left: 323, bottom: 13),
      alignment: Alignment.center,
      child: FloatingActionButton(
        elevation: 2.0,
        onPressed: () {
          print("Add a credit card");
        },
        backgroundColor: color,
        mini: false,
        child: icon,
      ),
    );
  }


}
