import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_delivery/home/home.dart';
import 'package:food_delivery/model/users.dart';
import 'package:get/get.dart';
import 'package:food_delivery/chart/cart_item_card.dart';
import 'package:food_delivery/chart/type-order.dart';
import 'package:food_delivery/const.dart';
import 'package:food_delivery/model/request.dart';



class MyCartScreen extends StatefulWidget {
  final String user;
  final String profileImage;
  const MyCartScreen({super.key,
    required this.user,
    required this.profileImage,});

  @override
  State<MyCartScreen> createState() => _MyCartScreenState();
}

class _MyCartScreenState extends State<MyCartScreen> {
bool viewPromoCard=false;
double commission=1.0;
double totalAmount=0.0;
double spaceBetween=220.0;
//double price=0.0;
@override
  void initState() {
    // TODO: implement initState
  for(int i=0;i<userCartRequests.length;i++) {
   setState(() {
     userCartRequests[i].pPrice= userCartRequests[i].pCount*userCartRequests[i].pPrice;
     totalAmount = totalAmount + userCartRequests[i].pPrice;
   });
  }
    super.initState();
  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }
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
    //return const Placeholder();

    return Scaffold(


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
                            userCartRequests.remove(index);
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

      Padding(
        padding:  EdgeInsets.only(left:20.0,top: spaceBetween-20,right: 20.0),
        child: Row(
          // crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 36,
              width: 250,
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
            Padding(
              padding:  EdgeInsets.only(left:0.0,top:10,right: 0.0),
              child: IconButton(
                  onPressed: (){
                  setState(() {
                  viewPromoCard=!viewPromoCard;
                  if(spaceBetween==20) {
                    spaceBetween = 220;
                  }
                  else {
                    spaceBetween=20;
                  }
                });
                //return
                showBottomSheet(
                    context: context,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(34)),
                    builder: (context) => Container(
                      height: 464,
                      child: Column(children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 23 ,0,0),
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
      ),
      //),
      (viewPromoCard==true)?
      Column(
        children: <Widget>[
          Padding(  padding:  EdgeInsets.only(left:0.0,top:20,right: 0.0)),
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

       //   SizedBox(height: 8,),
        ],
      ):
      Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left:20,right: 20.0),
                child: Text("Total amount:", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Color.fromRGBO(155, 155, 155,1))),),
              Padding(
                padding: const EdgeInsets.only(left:20,right: 20.0),
                child: Text("${totalAmount}", style:  TextStyle(fontSize: 18, fontWeight: FontWeight.w900 , color: Color.fromRGBO(34, 34, 34,1))),),
            ],
          ),


          Padding(
            padding:  EdgeInsets.only(left:16,top:20,right: 16.0),
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
                      profileImage: widget.profileImage,
                      totalAmount:totalAmount,
                      user: widget.user,
                      userOrdersList: userCartRequests,
                    ));
                  },
                  child: Text("CHECK OUT", style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700, color: Color.fromRGBO(255, 255, 255, 1))),)
            ),
          ),
          Padding(
            padding:  EdgeInsets.only(left:16,top:20,right: 16.0),
            child: Container(
                height: 48,
                width: 343,
                decoration: BoxDecoration(
                    color: kprimaryColor,
                    borderRadius: BorderRadius.circular(25)
                ),
                child: TextButton(
                  onPressed: (){
                    Get.to(()=>HomeScreen(
                      profileImage: widget.profileImage,
                     // totalAmount:totalAmount,
                      // phoneNumber: widget.phoneNumber,
                      user: widget.user,
                     // userOrdersList: userCartRequests,
                    ));
                  },
                  child: Text("Add Meals", style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700, color: Color.fromRGBO(255, 255, 255, 1))),)
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
                          viewPromoCard=false;
                          totalAmount=totalAmount-totalAmount*offer/100;
                          spaceBetween=220;
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