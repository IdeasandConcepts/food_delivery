

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:food_delivery/const.dart';
import 'package:food_delivery/model/request.dart';

class CartItemCard extends StatefulWidget {
  const CartItemCard({
    Key? key,
    required this.userRequest,
    required this.index,
  }) : super(key: key);

  final UserRequests userRequest;
  final int index;

  @override
  State<CartItemCard> createState() => _CartItemCardState();
}

class _CartItemCardState extends State<CartItemCard> {

int counter=1;
double newPrice=1.0;
@override
  void initState() {
    // TODO: implement initState
  newPrice=widget.userRequest.pPrice*counter;
    super.initState();
  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90.h,
      //  width: ,
        //padding: EdgeInsets.only(left:10,bottom: 10,top: 10),
    decoration: BoxDecoration(
    color: Colors.white,
    //Colors.green,
    borderRadius: BorderRadius.circular(26)),

          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                widget.userRequest.pImageAssets,
              height: 80.h,
                width: 100.w,
              ),

              Column(
               mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Padding(
                    padding: const EdgeInsets.fromLTRB(11, 11,0,0),
                    child: Text(widget.userRequest.pTitle,
                        style:  TextStyle(fontSize: 16, fontWeight: FontWeight.w900,
                            color: Color.fromRGBO(34, 34, 34,1))),),

/////////////////////////////////////////////////////////////////////////

                  Padding(
                      padding: const EdgeInsets.only(left:10,right: 10),
                    child: Row(
                      //mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         // crossAxisAlignment: CrossAxisAlignment.center,
                          children: [

                            Padding(
                              padding: const EdgeInsets.symmetric(vertical:0,horizontal: 2),
                              child: Text("Size".tr,style:  TextStyle(fontSize: 11, fontWeight: FontWeight.w400)),
                            ),
                           // Text("\t\t\t\t"),
                            Text(widget.userRequest.pSize, style:  TextStyle(fontSize: 11, fontWeight: FontWeight.w500, color: Color.fromRGBO(34, 34, 34,1))),

                          ],
                        ),

                      ],
    ),
                  ),

////////////////////////////////////////////////////////////

                  Row(
                    children: [

                      Container(
                        child: Padding(
                          padding:EdgeInsets.only(left:8.h,right: 8.0),
  //  padding:const EdgeInsets.fromLTRB(12,12,0,0),
                          child: Row(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: kprimaryColor
                                ),
                                width: 30.w,
                                height: 30.h,
                                child: Center(
                                  child: IconButton(
                                    onPressed: (){
                                      setState(() {
                                        if(counter>1)
                                        counter--;
                                        newPrice=counter*widget.userRequest.pPrice;
                                      });
                                      // counter++;
                                    },
                                    icon:
                                    Icon(
                                      Icons.remove,
                                      color: Colors.black,
                                      //Color.fromRGBO(155, 155, 155, 1),
                                      size: 16,
                                    ),
                                  ),
                                ),
                              ),

                              Padding(
                                padding:  EdgeInsets.symmetric(horizontal: (18.5).h),
                                child: Text("${counter}"),

                              ),


                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: kprimaryColor
                                ),
                                width: 30.w,
                                height: 30.h,
                                child: Center(
                                  child: IconButton(
                                    onPressed: (){
                                      setState(() {
                                        counter++;
                                        newPrice=counter*widget.userRequest.pPrice;
                                      });
                                     // counter++;
                                    },
                                    icon:
                                  Icon(
                                    Icons.add,
                                    color: Colors.black,
                                    //Color.fromRGBO(155, 155, 155, 1),
                                    size: 16,
                                  ),
                                  ),
                                ),
                              ),

                            ],
                          ),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.fromLTRB(65, 12,0,0),
                        child: Text("${ newPrice}", style:  TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Color.fromRGBO(34, 34, 34, 1))),),





                    ],
                  ),

                ],
              ),

              Padding(
                padding: const EdgeInsets.only(top: 8),
                child: Icon(Icons.more_vert, color: Color.fromRGBO(155, 155, 155, 1), ),
              ),
            ],
          ),


        );
  }
}

