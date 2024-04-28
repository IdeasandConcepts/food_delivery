
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:food_delivery/chart/myCart.dart';
import 'package:food_delivery/const.dart';
import 'package:food_delivery/model/model.dart';
import 'package:food_delivery/model/request.dart';


class DetailsScreen extends StatefulWidget {
  final String productName,productCategory,productDetails;
  final double productPrice;
  final bool isFavorite;
  final String image;

  const DetailsScreen({
    super.key,
    required this.productName,
    required this.productCategory,
    required this.productDetails,
    required this.productPrice,
    required this.isFavorite,
    required this.image,


  });

  //final Products products;

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  List<bool> componentItemsChecked = [];
  bool
      xsSizeItemsChecked =false,
      sSizeItemsChecked =false,
      mSizeItemsChecked =false,
      lSizeItemsChecked =false,
      xlSizeItemsChecked =false;

  List<String>componentItems=[];
  String selectedSize="";
  List <String> selectedComponent=[];
  @override
  void initState() {
    // TODO: implement initState
    setState(() {
      for(int i=0;i<component.length;i++)
      {
        componentItemsChecked.add(false);
        componentItems.add(component[i]["item"]);
      }
    });
    super.initState();
  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }
  // bool isBeefChecked=false;
  // bool isCheeseChecked = false;
  // bool isFriesSChecked = false;
  // bool isFriesRChecked = false;
  // bool isFriesMChecked = false;
  // bool iFriesLChecked = false;
  // bool isGrandSaladChecked = false;
  // bool isSideSaladChecked = false;
  // bool isKetchupChecked = false;
  // bool isCocaColaSChecked = false;
  // bool isCocaColaMChecked = false;



// String beef = "",
//    cheese =  "",
//    friesS =  "",
//    friesR=  "",
//    friesM =  "",
//    friesL=  "",
//    grandSalad =  "",
//    sideSalad =  "",
//    ketchup =  "",
//    cocaColaS = "",
//    cocaColaM = "";


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: kprimaryColor,
      //backgroundColor: kprimaryColor,


      body: Column(
       // shrinkWrap: true,
        children: [
          // Container(
          //   height: 402,
          //   width: MediaQuery.of(context).size.width,
          //   // color: Colors.grey,
          //   //backgroundColor: kprimaryColor,
          //   //color: kprimaryColor,
          // ),

          Container(
            height: MediaQuery.of(context).size.height * 1/ 2.299,
            //350.0,
            width: MediaQuery.of(context).size.width * 1/ 1.5,

            //     Image.asset("assets/images/ava.jpeg")
            // ),
            decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(widget.image,
                    // maxheight:
                    // //MediaQuery.of(context).size.height * 1/ 2,
                    // 350.0,
                    // width:
                    // //MediaQuery.of(context).size.width * 1/ 1.5,
                    // 120.0,
                  ),
                  //fit: BoxFit.cover
                ),
            ),

          ),


          // SizedBox(height: 10,),
          // Text(widget.productName,
          //   style: TextStyle(fontSize: 18.0,
          //       fontWeight: FontWeight.bold
          //   ),
          // ),
          // SizedBox(height: 10,),
          //   ],
          // ),
         // ),
          Container(
          //padding: EdgeInsets.only(top:10,bottom:10,left:10.0,right: 10),
          decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            //toLeft: Radius.circular(75.0),
            topRight: Radius.circular(MediaQuery.of(context).size.height * 1 / 4.5,),
          ),
          color: Colors.black
          ),
            height: MediaQuery.of(context).size.height * 1/ 1.77,
         //height: MediaQuery.of(context).size.height * 0.55,
         //   height: 550,
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding:  EdgeInsets.all(MediaQuery.of(context).size.height * 1 / 40,),
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
           // SizedBox(height: MediaQuery.of(context).size.height * 1 / 60,),
            Container(
              //margin: EdgeInsets.all(8),
              child: Text(widget.productName,
                style: TextStyle(fontSize: 24,color: Colors.white),
              ),
            ),
            Padding(
              padding:  EdgeInsets.only(top:MediaQuery.of(context).size.height * 1 / 160,),
              child: Row(
               // crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  (widget.isFavorite!=true) ?Row(

                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(Icons.star, color: kprimaryColor, size: 30,),
                      Icon(Icons.star, color: kprimaryColor, size: 30,),
                      Icon(Icons.star,color: kprimaryColor,size: 30,),
                      Icon(Icons.star,color: kprimaryColor,size: 30,),
                      Icon(Icons.star,color: kprimaryColor,size: 30,),

                    ],
                  ):
                  Row(

                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(Icons.star,color: kprimaryColor,size: 30,),
                      Icon(Icons.star,color: kprimaryColor,size: 30,),
                      Icon(Icons.star,color: kprimaryColor,size: 30,),
                      Icon(Icons.star,color: Colors.white,size: 30,),
                      Icon(Icons.star,color: Colors.white,size: 30,),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical:0.0,horizontal: 40.0),
                    child: Container(
                      //margin: EdgeInsets.all(8),
                      child: Text("${widget.productPrice}\$",
                        style: TextStyle(fontSize: 40,color: Colors.white),
                      ),
                    ),
                  ),

                ],
              ),
            ),

            Padding(
              padding:  EdgeInsets.only(top:MediaQuery.of(context).size.height * 1 / 160,),
              child: Row(
                children: [
                  Container(
                     padding:  EdgeInsets.only(
                       left:MediaQuery.of(context).size.height * 1/ 90,
                         right: MediaQuery.of(context).size.height * 1/ 90.0,
                       //  top:MediaQuery.of(context).size.height * 1/ 40
                    ),
                    height:MediaQuery.of(context).size.height * 1 / 20,
                    // margin:   EdgeInsets.only(left:12.0,right:12.0),
                    // height: 40,
                      width: MediaQuery.of(context).size.width
                          *33/100,
                    //2.28,
                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(8),
                       color: Colors.white
                     ),

                     //margin: EdgeInsets.all(8),
                     child: Center(
                       child: Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                           //crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                           Text("Size",
                           style: TextStyle(fontSize: 14,color: Colors.black,
                             //decoration: TextDecoration.lineThrough,
                             //decorationThickness: 3,

                             // decorationStyle:
                           ),
                         ),
                           IconButton(
                             onPressed: (){
                               setState(() {
                                 //  return
                                 Get.defaultDialog(
                                     title: "_",
                                     titleStyle: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),
                                     content: Container(
                                       width: MediaQuery
                                           .of(context)
                                           .size
                                           .width,
                                       height:
                                       // MediaQuery
                                       //     .of(context)
                                       //     .size
                                       //     .height -
                                           450,
                                       child: Column(
                                         //shrinkWrap: true,
                                           children:[
                                               Padding(
                                                   padding: EdgeInsets
                                                       .only(
                                                       left: MediaQuery
                                                           .of(context)
                                                           .size
                                                           .height *
                                                           1 / 130,
                                                       right: MediaQuery
                                                           .of(context)
                                                           .size
                                                           .height *
                                                           1 / 130,
                                                       top: MediaQuery
                                                           .of(context)
                                                           .size
                                                           .height *
                                                           1 / 210),
                                                   child: Row(
                                                     mainAxisAlignment: MainAxisAlignment
                                                         .spaceBetween,
                                                     //crossAxisAlignment: CrossAxisAlignment.start,
                                                     children: [

                                   InkWell(
                                     onTap: (){
                                       xsSizeItemsChecked=true;
                                       selectedSize="XS";

                                     },
                                     child: Container(
                                       height: 35,
                                       width: 80,
                                       decoration: BoxDecoration(
                                           borderRadius: BorderRadius.circular(10),
                                           color: (xsSizeItemsChecked==true)
                                           ? kprimaryColor
                                           : Colors
                                           .white
                                       ),
                                       child: Center(
                                         child:
                                                         Text(
                                                          "XS",
                                                           style: TextStyle(
                                                               color:Colors
                                                                   .black),),
                                       )
                                                 ),
                                   ),
                                 InkWell(
                                 onTap: (){
                                 sSizeItemsChecked=true;
                                 selectedSize="S";

                                 },
                                               child: Container(
                                                   height: 35,
                                                   width: 80,
                                                   decoration: BoxDecoration(
                                                       borderRadius: BorderRadius.circular(10),
                                                       color:  (sSizeItemsChecked)
                                                           ? kprimaryColor
                                                           : Colors
                                                           .white
                                                   ),
                                                   child: Center(
                                                     child:
                                                         Text(
                                                           "S",
                                                           style: TextStyle(
                                                               color: Colors
                                                                   .black),),

                                                 )),
                                             ),
                                 InkWell(
                                 onTap: (){
                                 mSizeItemsChecked=true;
                                 selectedSize="XS";

                                 },
                                                         child: Container(
                                                           height: 35,
                                                           width: 80,
                                                           decoration: BoxDecoration(
                                                             borderRadius: BorderRadius.circular(10),
                                                           color: (mSizeItemsChecked)
                                                               ? kprimaryColor
                                                               : Colors.white
                                                           ),
                                                           child: Center(
                                                             child: Text(
                                                               "M",
                                                               style: TextStyle(
                                                                   color: Colors
                                                                       .black),),
                                                           ),
                                                         ),
                                                       ),

                                                     ],
                                                   )
                                               ),
                                             Padding(
                                                 padding: EdgeInsets
                                                     .only(
                                                     left: MediaQuery
                                                         .of(context)
                                                         .size
                                                         .height *
                                                         1 / 130,
                                                     right: MediaQuery
                                                         .of(context)
                                                         .size
                                                         .height *
                                                         1 / 130,
                                                     top: MediaQuery
                                                         .of(context)
                                                         .size
                                                         .height *
                                                         1 / 210),
                                                 child: Row(
                                                   mainAxisAlignment: MainAxisAlignment
                                                       .spaceBetween,
                                                   //crossAxisAlignment: CrossAxisAlignment.start,
                                                   children: [

                                                   InkWell(
                                                   onTap: (){
                                 lSizeItemsChecked=true;
                                 selectedSize="L";

                                 },
                                                     child: Container(
                                                     height: 35,
                                 width: 80,
                                 decoration: BoxDecoration(
                                 borderRadius: BorderRadius.circular(10),
                                 color: (lSizeItemsChecked)
                                     ? kprimaryColor
                                     : Colors.white
                                 ),
                                 child: Center(
                                 child:
                                                       Text(
                                                         "L",
                                                         style: TextStyle(
                                                             color
                                                                 : Colors
                                                                 .black),),
                                 ),
                                 ),
                                                   ),
                                 InkWell(
                                 onTap: (){
                                 xlSizeItemsChecked=true;
                                 selectedSize="XL";

                                 },
                                   child: Container(
                                   height: 35,
                                   width: 80,
                                   decoration: BoxDecoration(
                                   borderRadius: BorderRadius.circular(10),
                                   color:(xlSizeItemsChecked)
                                       ? kprimaryColor
                                       : Colors.white
                                   ),
                                   child: Center(
                                   child:
                                                       Text(
                                                         "XL",
                                                         style: TextStyle(
                                                             color
                                                                 : Colors
                                                                 .black),),
                                   )
                                   ),
                                 )
                                                   ],
                                                 )
                                             ),

    ])
                                          // }
                                       ),
                                 //     )
                                 //
                                 );
                               });
                             //  selectedSize="M";
                             // Get.snackbar("",
                             //     "Hi",
                             // //     Container(
                             // //   color: Colors.blueAccent,
                             // );
                           },
                               icon: Icon(
                               Icons.arrow_drop_down),
                               iconSize: 30,
                             disabledColor: Colors.white,
                             focusColor: kprimaryColor,
                            // color: Colors.,
                           )
                              // icon:Ic
    ]
                       ),
                     ),
                   ),
                  Padding(
                    padding:  EdgeInsets.only(
                      left: MediaQuery.of(context).size.height * 1 / 100,
                    right:  MediaQuery.of(context).size.height * 1 / 100,
                    ),
                    child: Container(
                      height:MediaQuery.of(context).size.height * 1 / 20,
                      width: MediaQuery.of(context).size.width
                          *13/100,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.white
                      ),
                      child: Center(
                        child: IconButton(icon:
                        Icon(Icons.favorite,),
                            iconSize: 25,

                            //color: Colors.grey,
                            //highlightColor: Colors.black,
                            focusColor: kprimaryColor,
                          onPressed: (){}
                        ),
                      ),
                    ),
                  ),

                  Row(
                    children: [
                      Container(
                        padding:  EdgeInsets.only(
                            left:MediaQuery.of(context).size.height * 1 / 130,
                            right:MediaQuery.of(context).size.height * 1 / 130,),
                        height:MediaQuery.of(context).size.height * 1 / 20,
                        width: MediaQuery.of(context).size.width
                            *36/100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.white
                        ),

                        //margin: EdgeInsets.all(8),
                        child: Center(
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Component",
                                  style: TextStyle(fontSize: 14,color: Colors.black,
                                    //decoration: TextDecoration.lineThrough,
                                    //decorationThickness: 3,

                                    // decorationStyle:
                                  ),
                                ),
                                IconButton(

                                  onPressed: () async{
                                    setState(() {
                                      //  return
                                      Get.defaultDialog(
                                          title: "",
                                          content: Container(
                                            width: MediaQuery
                                                .of(context)
                                                .size
                                                .width - 50,
                                            height: MediaQuery
                                                .of(context)
                                                .size
                                                .height - 145,
                                            child: ListView.builder(
                                                itemCount: component.length,
                                                itemBuilder: (context,
                                                    index) {
                                                  return
                                                    Padding(
                                                        padding: EdgeInsets
                                                            .only(
                                                            left: MediaQuery
                                                                .of(context)
                                                                .size
                                                                .height *
                                                                1 / 130,
                                                            right: MediaQuery
                                                                .of(context)
                                                                .size
                                                                .height *
                                                                1 / 130,
                                                            top: MediaQuery
                                                                .of(context)
                                                                .size
                                                                .height *
                                                                1 / 210),
                                                        child: Row(
                                                          mainAxisAlignment: MainAxisAlignment
                                                              .spaceBetween,
                                                          //crossAxisAlignment: CrossAxisAlignment.start,
                                                          children: [
                                                            Text(
                                                              component[index]["item"],
                                                              style: TextStyle(
                                                                  color: (componentItemsChecked[index])
                                                                      ? kprimaryColor
                                                                      : Colors
                                                                      .black),),
                                                            Text(
                                                              "${component[index]["calories"]}",
                                                              style: TextStyle(
                                                                  color: (componentItemsChecked[index])
                                                                      ? kprimaryColor
                                                                      : Colors
                                                                      .black),),
                                                            Checkbox(
                                                              checkColor: Colors
                                                                  .white,
                                                              activeColor: (componentItemsChecked[index] ==
                                                                  true)
                                                                  ? kprimaryColor
                                                                  : Colors
                                                                  .white,
                                                              value: componentItemsChecked[index],
                                                              shape: const RoundedRectangleBorder(
                                                                  borderRadius: BorderRadius
                                                                      .all(
                                                                      Radius
                                                                          .circular(
                                                                          5.0))),
                                                              onChanged: (
                                                                  bool? value) {
                                                                setState(() {
                                                                  componentItemsChecked[index] =
                                                                  value!;
                                                                  selectedComponent.add(component[index]["item"]);
                                                                });
                                                              },
                                                            ),
                                                          ],
                                                        )
                                                    );
                                                }
                                            ),
                                          )

                                      );
                                    });
                                  },
                                  icon: Icon(
                                      Icons.arrow_drop_down),
                                  iconSize: 30,
                                )
                                // StatefulBuilder(
                                //   builder: (context,setState){
                                //
                                //  return
                                //
                                //
                                //  ;
                                //   },
                                //
                                // )
                                // icon:Ic
                              ]
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height:MediaQuery.of(context).size.height * 1 / 60,
            ),
            Text("Description",
              style: TextStyle(fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  // fontFamily: ,
                  color: Colors.white
              ),
            ),
            SizedBox(
              height:MediaQuery.of(context).size.height * 1 / 210,
            ),
            Container(
              height:MediaQuery.of(context).size.height * 1 / 6.5,
              child: SingleChildScrollView(
    physics: BouncingScrollPhysics(),
                child: Text(widget.productDetails,
                  style: TextStyle(fontSize: 16.0,
                      fontWeight: FontWeight.w200,
                   // fontFamily: ,
                    color: Colors.white
                  ),
                ),
              ),
            ),

            SizedBox(
              height:MediaQuery.of(context).size.height * 1 / 18,
            ),
            Padding(
              padding:  EdgeInsets.all(MediaQuery.of(context).size.height * 1 / 60),
              child: Container(
                height:MediaQuery.of(context).size.height * 1 / 15,
                width:MediaQuery.of(context).size.width * 1 / 0.5,
                decoration: BoxDecoration(
                    color: kprimaryColor,
                  borderRadius: BorderRadius.circular(40)
                ),
                child: MaterialButton(

                  onPressed: () async {
                    addUserCartRequests(
                        //pTitle: pTitle, pPrice: pPrice, pCount: pCount, imageAssets: imageAssets, pSize: pSize, pComponent: pComponent)
                        pTitle: widget.productName,
                        pPrice: widget.productPrice,
                        pCount: 1,
                        imageAssets: widget.image,
                        pSize: selectedSize,
                      pComponent: selectedComponent,
                    );
                    print(userCartRequests.length);
                    Get.to(()=>MyCartScreen());
                  },
                  child: Padding(
                    padding:  EdgeInsets.only(left: MediaQuery.of(context).size.height * 1 / 60),
                    child: Text ('Place Order'.tr,style: TextStyle(
                        fontSize:26,
                        color: Colors.white),),
                  ),
                ),
              ),
            ),
          ],
            ),
          ),
          ),

        ],
      ),

    );
  }


}
//}
