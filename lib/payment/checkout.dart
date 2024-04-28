import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:food_delivery/auth/login.dart';




class CheckoutScreen extends StatefulWidget {
  const CheckoutScreen({super.key});

  @override
  State<CheckoutScreen> createState() => _CheckoutScreenState();
}

class _CheckoutScreenState extends State<CheckoutScreen> {
  @override
  Widget build(BuildContext context) {
    final currentWidth = MediaQuery.of(context).size.width-36.4285;
    final currenheight = MediaQuery.of(context).size.height+128.571429;
    //return const Placeholder();

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        shadowColor:Colors.white,
        iconTheme: const IconThemeData(color: Colors.black),
        title: Text("Payment methods" , 
        style:  const TextStyle(
            fontSize: 18,fontWeight: FontWeight.w900,color: Colors.black)),
        leading: IconButton(
          icon: const Icon(Icons.chevron_left),
          onPressed: (){},
        ),
      ),

      body: SingleChildScrollView(child: 
        Padding(
        padding: const EdgeInsets.only(left: 16, right: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: _headlinesText(headlines: "Shipping address"),
            ),


            Padding(
              padding: const EdgeInsets.only(top: 19),
              child: _buildAddressCard(
                name: "Jane Doe", 
                street: "3 Newbridge Court", 
                city: "Chino Hills, CA 91709, United States"
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 56),
              child: _paymentCard(cardNumber: "**** **** **** 3947"),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: _headlinesText(headlines: "Delivery method"),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              Padding(
              padding: const EdgeInsets.only(top: 19),
              child: _deliveryCard(
                image: 'assets/images/fedEx.png' , 
                days: " 2-3 days"),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 19),
              child: _deliveryCard(
                image: 'assets/images/usp.png' , 
                days: " 2-3 days"),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 19),
              child: _deliveryCard(
                image: 'assets/images/DHL.png' , 
                days: " 2-3 days"),
            ),

            ],),

            Padding(
              padding: const EdgeInsets.only(top: 52),
              child: _informationCheckout(
                order: "Order:", 
                deliv: "Delivery:", 
                orderPrice: '112\$', 
                delivPrice: '15\$', 
                summaryPrice: '127\$'
              ),
            )

            ,Padding(
              padding: const EdgeInsets.fromLTRB(16,23,0,13),
              child: Container(
                height: 48,
                width: 343,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(33, 150, 83, 1),
                  borderRadius: BorderRadius.circular(25)
                ),
                child: MaterialButton(
                onPressed: () {
                //  print("Success");
                  Get.to( () => LoginPage());
                }, 
                child: Text("SUBMIT ORDER", style:  TextStyle(fontSize: 20,fontWeight: FontWeight.w700, color: Color.fromRGBO(255, 255, 255, 1))),)
              ),
            ),


          ],
        ),
      ),


      ),);
      
  }


  Card _buildAddressCard({required String name,required String street, required String city }) {
    return Card(

      elevation: 4.0,
      //color: Color.fromRGBO(255, 255, 255, 1),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      child: Container(
        decoration: BoxDecoration(
          boxShadow: [BoxShadow(
            color: Color.fromRGBO(255, 255, 255, 1),
            spreadRadius: 0,
            blurRadius: 25,
            offset: Offset(0, 1),
          )]
        ),

        height: 108,
        width: 343,

        child: Padding(
          padding: const EdgeInsets.only(left: 28, top: 18, right: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(name, style:  TextStyle(fontSize: 14, fontWeight: FontWeight.w500 )),
                  _changeDetali(change: "Change")
                  //Text("Change", style:  TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Color.fromRGBO(219, 48, 34,1))),)
                ],
              ),

              Padding(
                padding: const EdgeInsets.only(top: 7),
                child: Text(street, style:  TextStyle(fontSize: 14, fontWeight: FontWeight.w400),),
              ),
              Text(city, style:  TextStyle(fontSize: 14, fontWeight: FontWeight.w400 ))
              
            ],
          ),
        ),
      ),

    );
  }

  Text _headlinesText({required String headlines}){
    return Text(headlines, style:  TextStyle(
        fontSize: 16, fontWeight: FontWeight.w900, color: Color.fromRGBO(34, 34, 34,1)),);
  }

  Text _changeDetali({required String change}){
    return Text(change, style:  TextStyle(
        fontSize: 14, fontWeight: FontWeight.w500, color: Color.fromRGBO(219, 48, 34,1)),);
  }

  Container _paymentCard({required String cardNumber }){
    return Container(
      height: 72,
      width: 313,
      child: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            _headlinesText(headlines: "Payment"),
            _changeDetali(change: "Change")
          ],),

          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Row(children: [
              Image.asset('assets/images/mmmasterCard.png', height: 38,width: 64,),
              Padding(
                padding: const EdgeInsets.only(left: 17),
                child: Text(cardNumber, style:  TextStyle(fontSize: 14, fontWeight: FontWeight.w400)),),
            ],),
          )

        ],),
    );
  }

  Card _deliveryCard({ required String image, required String days}){
    return Card(
      child: Container(
        height: 72,
        width: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8)
        ),
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.only(top: 17),
            child: Image.asset(image,height: 17,width: 65,),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: _dayText(
              day: days),
          )
        ],),
      ),
    );
  }

  Text _dayText({required String day}){
    return Text(day, style:  TextStyle(fontSize: 11, fontWeight: FontWeight.w400),);
  }

  Text _subText({required String subtext}){
    return Text(subtext, style:  TextStyle(
        fontSize: 14, fontWeight: FontWeight.w500,color: Color.fromRGBO(155, 155, 155, 1)),);
        
  }

  Container _informationCheckout({required String order, required String deliv, required String orderPrice, required String delivPrice,required String summaryPrice}){
    return Container(
      height: 90,
      width: 340,
      child:  Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _subText(subtext: order),
              Text(orderPrice)
          ],),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _subText(subtext: deliv),
              _headlinesText(headlines: delivPrice)
          ],),
      
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            Text("Summary", style:  TextStyle(fontSize: 16, fontWeight: FontWeight.w900, color: Color.fromRGBO(155, 155, 155, 1)),),
            _headlinesText(headlines: '$summaryPrice')
          ],)
      
        ],),
      
    );
  }



}