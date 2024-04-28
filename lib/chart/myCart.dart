import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:food_delivery/chart/cart_item_card.dart';
import 'package:food_delivery/chart/type-order.dart';
import 'package:food_delivery/const.dart';
import 'package:food_delivery/model/request.dart';



class MyCartScreen extends StatefulWidget {
  const MyCartScreen({super.key});

  @override
  State<MyCartScreen> createState() => _MyCartScreenState();
}

class _MyCartScreenState extends State<MyCartScreen> {
bool viewPromoCard=false;
double commision=1.0;
//  int counter=0;
  
  //
  // void _incremeant(){
  //   setState(() {
  //     counter++;
  //   });
  // }
  //
  // void _decrease(){
  //   setState(() {
  //     counter--;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    final currentWidth = MediaQuery.of(context).size.width-36.4285;
    final currenheight = MediaQuery.of(context).size.height+128.571429;
    //return const Placeholder();
    bool selected =true;
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor:const Color.fromRGBO(249, 249, 249, 1),
      //   iconTheme: const IconThemeData(color: Color.fromRGBO(249, 249, 249, 1)),
      //   elevation: 0,
      //   actions: [
      //      IconButton(
      //       icon: const Icon(Icons.search,color: Color.fromRGBO(34, 34, 34, 1),size: 24,),
      //       onPressed: (){}
      //      )
      //   ],
      // ),

      body: Column(
       // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
       // mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Padding(
            padding: const EdgeInsets.fromLTRB(14, 18,0,0),
            child: Text("My Cart", style:  TextStyle(
                fontSize: 34, fontWeight: FontWeight.w700, color: Color.fromRGBO(34, 34, 34, 1))),
          ),
(userCartRequests.length>0)?
  Column(
    children: <Widget>[
      Container(
          height: MediaQuery.of(context).size.height - 500.0,
          child:
          ListView.builder(
              itemCount:   userCartRequests.length,
              itemBuilder: (context, index) {
                return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Dismissible(
                        key: Key(userCartRequests[index].toString()),
                        direction: DismissDirection.endToStart,
                        onDismissed: (direction) {
                          setState(() {
                            userCartRequests.removeAt(index);
                          });
                        },
                        background: Container(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          decoration: BoxDecoration(
                              color: Colors.grey,
                              //Color(0xFFFFF6E6),
                              borderRadius: BorderRadius.circular(15)),
                          child: Row(children: [
                            Spacer(),
                            SvgPicture.asset("assets/icons/Trash.svg")
                          ]),
                        ),
                        child: CartItemCard(
                          userRequest: userCartRequests[index],
                          index: index,
                          //userCartRequests[index]
                        )

                    ));
              }
            //    ),
          )
      ),

      Row(
        // crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(left:20.0,right: 20.0),
            child: Container(
              height: 36,
              width: 255,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.05),
                    spreadRadius: 0,
                    blurRadius: 8,
                    offset: Offset(0, 1), // changes position of shadow
                  ),
                ],
              ),
              child: Center(
                child: TextField(
                  //readOnly: true,
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      labelText: "Enter your promo code",
                      filled: true,
                      fillColor:Color.fromRGBO(255, 255, 255, 1) ,
                      labelStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Color.fromRGBO(155, 155, 155, 1))) ,


                ),
              ),


            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left:20.0,right: 20.0),
            child: IconButton(onPressed: (){

              setState(() {
                viewPromoCard=!viewPromoCard;
              });
              //return
              showBottomSheet(
                  context: context,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(34)),
                  builder: (context) => Container(
                    height: 464,
                    child: Column(children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(16, 23 ,0,0),
                        child: Container(
                          height: 36,
                          width: 343,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.05),
                                spreadRadius: 0,
                                blurRadius: 8,
                                offset: Offset(0, 1), // changes position of shadow
                              ),
                            ],
                          ),
                          child: TextField(
                            readOnly: true,
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                labelText: "Enter your promo code",
                                //suffixIcon: selected== true? Icon(Icons.arrow_circle_right_outlined,size: 36,): Icon(Icons.close,size: 36,) ,
                                filled: true,
                                fillColor:Color.fromRGBO(255, 255, 255, 1) ,
                                labelStyle:TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Color.fromRGBO(155, 155, 155, 1))) ,


                          ),
                        ),

                      ),


                      //Text("Your Promo Codes")

                    ],),
                  )
              );
            }, icon: Icon(Icons.arrow_circle_right_outlined,size: 36,)),
          ),

        ],
      ),
      //),
      (viewPromoCard==true)?
      Column(
        children: <Widget>[
          _promoCard(
              'assets/images/redOffer.png',
              "Personal offer",
              10.0,
              "2020",
              "6 days remaining"
          ),
          SizedBox(height: 8,),
          _promoCard(
              'assets/images/womenOffer.png',
              "Summer Sale",
              15.0,
              "1044",
              "23 days remaining"
          ),
          SizedBox(height: 8,),
          _promoCard(
              'assets/images/blackOffer.png',
              "Women Offer",
              22.0,
              "73656",
              "15 days remaining"
          ),

          SizedBox(height: 8,),
        ],
      ):
      Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top:28),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left:16),
                  child: Text("Total amount:", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Color.fromRGBO(155, 155, 155,1))),),
                Padding(
                  padding: const EdgeInsets.only(left: 223),
                  child: Text("112\$", style:  TextStyle(fontSize: 18, fontWeight: FontWeight.w900 , color: Color.fromRGBO(34, 34, 34,1))),),
              ],
            ),
          ),


          Padding(
            padding: const EdgeInsets.fromLTRB(16,24,0,0),
            child: Container(
                height: 48,
                width: 343,
                decoration: BoxDecoration(
                    color: kprimaryColor,
                    borderRadius: BorderRadius.circular(25)
                ),
                child: TextButton(
                  onPressed: (){
                    Get.to(()=>OrderMethod(
                      userOrdersList: userCartRequests,
                    ));
                  },
                  child: Text("CHECK OUT", style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700, color: Color.fromRGBO(255, 255, 255, 1))),)
            ),
          ),
        ],
      )
    ],
  ):Center(
  child: Padding(
    padding: const EdgeInsets.only(top:40.0),
    child: Text(
        "No Items In Cart",
          style: TextStyle(
              fontSize: 20,fontWeight: FontWeight.w700,
              color: Colors.black
          )),
  ),)


        ],
      ),
    );
  }




  Container _promoCard(
       String image,
      String codeTitle,
      double offer,
     String code,
     String dayOffer){
    return Container(
      decoration: BoxDecoration(
        color: Colors.white24,
        border: Border.all(),
        borderRadius: BorderRadius.circular(8)
      ),
      height: 85,
      
      child: Padding(
        padding: const EdgeInsets.only(left:5.0,right: 5.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
         Container(
    // color: kprimaryColor,
           height: 80,
           width: 220,
           child: ListTile(
            leading: Image.asset(image,height: 70,),
            title: _headText(healine:codeTitle ),
             subtitle:  _subText(subtext: code),
           ),
         ),

          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(children: [
              _remainingText(dayss: dayOffer),
              Container(
                  height: 36,
                  width: 93,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromRGBO(211, 38, 38, 0.25),
                          spreadRadius: 0,
                          blurRadius: 8,
                          offset: Offset(0, 1), // changes position of shadow
                        ),
                      ],
                      color: Color.fromRGBO(33, 150, 83, 1),
                      borderRadius: BorderRadius.circular(25)
                  ),
                  child: TextButton(
                      onPressed: (){
                        setState(() {
                          viewPromoCard=true;
                        });
                        //commision=
                      },
                      child: Text("Apply", style:  TextStyle(fontSize: 14,fontWeight: FontWeight.w500,
                              color: Color.fromRGBO(255, 255, 255, 1)),)
                  )
              ),
            ],),
          )
        ],),
      ),
    );
  }

  Text _subText({required String subtext}){
    return Text(subtext, style: TextStyle(
        fontSize: 11, fontWeight: FontWeight.w400,color: Color.fromRGBO(34, 34, 34, 1)),);
  }
  Text _headText({required String healine}){
    return Text('${healine}', style: TextStyle(fontSize: 14,
        fontWeight: FontWeight.w500,color: Color.fromRGBO(34, 34, 34, 1)),);
  }

  Text _remainingText({required String dayss}){
    return Text(dayss , style:TextStyle(
        fontSize: 11, fontWeight: FontWeight.w400,color: Color.fromRGBO(155, 155, 155, 1)),);
  }


}