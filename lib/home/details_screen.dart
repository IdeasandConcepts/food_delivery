import 'package:flutter/material.dart';
import 'package:food_delivery/home/details.dart';
import 'package:food_delivery/home/sizes_details.dart';
import 'package:food_delivery/model/favorite.dart';
import 'package:food_delivery/model/products.dart';
import 'package:food_delivery/model/users.dart';
import 'package:food_delivery/widgets/default_button.dart';
import 'package:get/get.dart';
import 'package:food_delivery/chart/myCart.dart';
import 'package:food_delivery/const.dart';
import 'package:food_delivery/model/model.dart';
import 'package:food_delivery/model/request.dart';

class DetailsScreen extends StatefulWidget {
  final String user;
  final String profileImage;
  // final int phoneNumber;
  final Products product;
  final String productSize;
  final String selectedComponent;

  const DetailsScreen({
    super.key,
    required this.product,
    required this.user,
    required this.profileImage,
    required this.productSize,
    required this.selectedComponent,
  });

//final Products products;

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  // List<bool> componentItemsChecked = [];
// bool
//     xsSizeItemsChecked =false,
//     sSizeItemsChecked =false,
//     mSizeItemsChecked =false,
//     lSizeItemsChecked =false,
//     xlSizeItemsChecked =false;

  // List<String>componentItems=[];
  String selectedSize = "";
//  String selectedComponent="";
  @override
  void initState() {
// TODO: implement initState
    setState(() {
      selectedSize = widget.productSize;
      selectedComponentStr = widget.selectedComponent;

      // for(int i=0;i<component.length;i++)
      // {
      // componentItemsChecked.add(false);
      //  componentItems.add(component[i]["item"]);
      // }
    });
    super.initState();
  }

  @override
  void dispose() {
// TODO: implement dispose
    super.dispose();
  }

  TextEditingController detailsController = TextEditingController();
  String search = "";
  String selectedComponentStr = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            height: MediaQuery.of(context).size.height * 1 / 2.85,
//350.0,
            width: MediaQuery.of(context).size.width * 1 / 1.5,

//     Image.asset("assets/images/ava.jpeg")
// ),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  widget.product.imageSrc,
// height:
// //MediaQuery.of(context).size.height * 1/ 2,
// 350.0,
// width:
// MediaQuery.of(context).size.width * 1/ 1.5,
// 120.0,
                ),
//fit: BoxFit.cover
              ),
            ),
          ),

// SizedBox(height: 10,),
          Text(
            "_ __ _",
            style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
                color: Colors.white),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: MediaQuery.of(context).size.height * 1 / 40,
            ),
          ),
//   ],
// ),
// ),
          Padding(
            padding: EdgeInsets.only(
              top: MediaQuery.of(context).size.height * 1 / 220,
            ),
            child: Container(
//padding: EdgeInsets.only(top:10,bottom:10,left:10.0,right: 10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
//toLeft: Radius.circular(75.0),
                    topRight: Radius.circular(
                      MediaQuery.of(context).size.height * 1 / 4.5,
                    ),
                  ),
                  color: Colors.black),
              height: MediaQuery.of(context).size.height * 1 / 1.7,
//height: MediaQuery.of(context).size.height * 0.55,
//   height: 550,
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: EdgeInsets.all(
                  MediaQuery.of(context).size.height * 1 / 60,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
// SizedBox(height: MediaQuery.of(context).size.height * 1 / 60,),
                    Padding(
                      padding: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * 1 / 40,
                      ),
                      child: Container(
//margin: EdgeInsets.all(8),
                        child: Text(
                          widget.product.title,
                          style: TextStyle(fontSize: 24, color: Colors.white),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * 1 / 170,
                      ),
                      child: Row(
// crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          (widget.product.isFavorite != true)
                              ? Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Icon(
                                      Icons.star,
                                      color: kprimaryColor,
                                      size: 30,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: kprimaryColor,
                                      size: 30,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: kprimaryColor,
                                      size: 30,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: kprimaryColor,
                                      size: 30,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: kprimaryColor,
                                      size: 30,
                                    ),
                                  ],
                                )
                              : Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Icon(
                                      Icons.star,
                                      color: kprimaryColor,
                                      size: 30,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: kprimaryColor,
                                      size: 30,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: kprimaryColor,
                                      size: 30,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.white,
                                      size: 30,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.white,
                                      size: 30,
                                    ),
                                  ],
                                ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 0.0, horizontal: 40.0),
                            child: Container(
                              child: Text(
                                "${widget.product.price}\$",
                                style: TextStyle(
                                    fontSize: 40, color: Colors.white),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    Padding(
                      padding: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * 1 / 160,
                      ),
                      child: Row(
                        children: [
                          Container(
                            padding: EdgeInsets.only(
                              left: MediaQuery.of(context).size.height * 1 / 90,
                              right:
                                  MediaQuery.of(context).size.height * 1 / 90.0,
                            ),
                            height: MediaQuery.of(context).size.height * 1 / 20,
                            width: MediaQuery.of(context).size.width * 33 / 100,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: Colors.white),
                            child: InkWell(
                              onTap: () {
                                Get.to(() => SizesDetailsScreen(
                                      selectedComponent:
                                          widget.selectedComponent,
                                      productSize: widget.productSize,
                                      user: widget.user,
                                      profileImage: widget.profileImage,
                                      product: widget.product,
                                    ));
                              },
                              child: Center(
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Size",
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.black,
                                        ),
                                      ),
                                      Icon(
                                        Icons.arrow_drop_down,
                                        size: 30,
                                      )
                                      // IconButton(
                                      //   onPressed: null,
                                      //   icon: ,
                                      //   iconSize: 30,
                                      //   disabledColor: Colors.white,
                                      //   focusColor: kprimaryColor,
                                      // )
                                    ]),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left:
                                  MediaQuery.of(context).size.height * 1 / 100,
                              right:
                                  MediaQuery.of(context).size.height * 1 / 100,
                            ),
                            child: Container(
                              height:
                                  MediaQuery.of(context).size.height * 1 / 20,
                              width:
                                  MediaQuery.of(context).size.width * 13 / 100,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: Colors.white),
                              child: Center(
                                child: StatefulBuilder(
                                    builder: (context, setState) {
                                  return IconButton(
                                      icon: Icon(
                                        Icons.favorite,
                                        color: isFavorite(
                                                userName: widget.user,
                                                products: widget.product)
                                            ? Colors.redAccent
                                            : Colors.grey,
                                      ),
                                      iconSize: 25,

                                      //color: Colors.grey,
                                      //highlightColor: Colors.black,
                                      focusColor: kprimaryColor,
                                      onPressed: () {
                                        setState(() {});
                                        adduserFavoriteMeals(
                                            userName: widget.user,
                                            products: widget.product);
                                        // userFavoriteMeals.add(FavoriteMeals(
                                        //     products: widget.product,
                                        //     userName: widget.user));
                                        // adduserFavoriteMeals(
                                        //     userName: widget.userName,
                                        //     products: widget.products)
                                        // addUserCartRequests(pTitle: pTitle, pPrice: pPrice, pCount: pCount, imageAssets: imageAssets, pSize: pSize, pComponent: pComponent)
                                        // addFavoriteMeals(
                                        //   username:widget.userName;
                                        //   ccategorirs=
                                        // );
                                      });
                                }),
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              Container(
                                padding: EdgeInsets.only(
                                  left: MediaQuery.of(context).size.height *
                                      1 /
                                      130,
                                  right: MediaQuery.of(context).size.height *
                                      1 /
                                      130,
                                ),
                                height:
                                    MediaQuery.of(context).size.height * 1 / 20,
                                width: MediaQuery.of(context).size.width *
                                    36 /
                                    100,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    color: Colors.white),

//margin: EdgeInsets.all(8),
                                child: InkWell(
                                  onTap: () {
                                    Get.to(() => DetailsScreenOne(
                                          profileImage: widget.profileImage,
                                          selectedComponent:
                                              widget.selectedComponent,
                                          productSize: widget.productSize,
                                          user: widget.user,
                                          //phoneNumber: widget.phoneNumber,
                                          product: widget.product,
                                        ));
                                  },
                                  child: Center(
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            "Component",
                                            style: TextStyle(
                                              fontSize: 14, color: Colors.black,
                                              //decoration: TextDecoration.lineThrough,
                                              //decorationThickness: 3,

                                              // decorationStyle:
                                            ),
                                          ),
                                          IconButton(
                                            onPressed: () async {
                                              //                                             setState(() {
                                              // //  return
                                              //                                               Get.defaultDialog(
                                              //                                                   title:"Component",
                                              //                                                   titleStyle:TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),
                                              //                                                   content: Container(
                                              //                                                     height: MediaQuery
                                              //                                                         .of(context)
                                              //                                                         .size
                                              //                                                         .height - 150,
                                              //                                                     child: Column(
                                              //                                                       children: [
                                              //
                                              //                                                         Padding(
                                              //                                                           padding:  EdgeInsets.only(
                                              //                                                             left:MediaQuery.of(context).size.height * 1/ 40,
                                              //                                                               right: MediaQuery.of(context).size.height * 1/ 40.0,
                                              //                                                              // top:MediaQuery.of(context).size.height * 1/ 60
                                              //                                                           ),
                                              //                                                           child: Container(
                                              //                                                             height:MediaQuery.of(context).size.height * 1/ 16.0,
                                              //
                                              //                                                             // 45,
                                              //                                                             decoration: BoxDecoration(
                                              //                                                                 border: Border.all(color: kprimaryColor),
                                              //                                                                 borderRadius: BorderRadius.circular(20)
                                              //                                                             ),
                                              //                                                             child: TextFormField(
                                              //
                                              //                                                               controller: detailsController,
                                              //                                                               textAlign: TextAlign.center,
                                              //                                                               //editing controller of this TextField
                                              //                                                               decoration: InputDecoration(
                                              //                                                                 // disabledBorder: ,
                                              //                                                                 // border: OutlineInputBorder(
                                              //                                                                 //   borderSide: BorderSide(color: kprimaryColor),
                                              //
                                              //                                                                 // height: 45,
                                              //                                                                 // decoration: BoxDecoration(
                                              //                                                                 border: OutlineInputBorder(
                                              //
                                              //                                                                   borderSide: BorderSide(
                                              //                                                                     width: 2,
                                              //                                                                     // color: Colors.amber
                                              //                                                                   ),
                                              //
                                              //                                                                   // borderSide:
                                              //                                                                   //Border.all(color: kprimaryColor),
                                              //                                                                   borderRadius: BorderRadius.circular(20),
                                              //                                                                   // ),
                                              //                                                                 ),
                                              //                                                                 //fillColor: kprimaryColor,
                                              //                                                                 prefixIcon: Icon(Icons.search,color: Colors.grey,),
                                              //
                                              //                                                                 // filled: true,
                                              //                                                                 // labelText: 'id',
                                              //                                                                 labelStyle:TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.grey,),
                                              //                                                                 hintText: 'Search'.tr,
                                              //                                                                 //labelText: 'Search'.tr,
                                              //                                                               ),
                                              //                                                               onSaved: (newValue) => search = newValue!,
                                              //                                                               onChanged: (value) => search = value,
                                              //
                                              //                                                             ),
                                              //                                                           ),
                                              //                                                         ),
                                              //                                                         Container(
                                              //                                                           width: MediaQuery
                                              //                                                               .of(context)
                                              //                                                               .size
                                              //                                                               .width - 50,
                                              //                                                           height: MediaQuery
                                              //                                                               .of(context)
                                              //                                                               .size
                                              //                                                               .height - 245,
                                              //                                                           child: ListView.builder(
                                              //                                                               itemCount: component.length,
                                              //                                                               itemBuilder: (context,
                                              //                                                                   index) {
                                              //                                                                 return
                                              //                                                                   Padding(
                                              //                                                                       padding: EdgeInsets
                                              //                                                                           .only(
                                              //                                                                           left: MediaQuery
                                              //                                                                               .of(context)
                                              //                                                                               .size
                                              //                                                                               .height *
                                              //                                                                               1 / 130,
                                              //                                                                           right: MediaQuery
                                              //                                                                               .of(context)
                                              //                                                                               .size
                                              //                                                                               .height *
                                              //                                                                               1 / 130,
                                              //                                                                           top: MediaQuery
                                              //                                                                               .of(context)
                                              //                                                                               .size
                                              //                                                                               .height *
                                              //                                                                               1 / 210),
                                              //                                                                       child: Row(
                                              //                                                                         mainAxisAlignment: MainAxisAlignment
                                              //                                                                             .spaceBetween,
                                              // //crossAxisAlignment: CrossAxisAlignment.start,
                                              //                                                                         children: [
                                              //                                                                           Text(
                                              //                                                                             component[index]["item"],
                                              //                                                                             style: TextStyle(
                                              //                                                                                 color: (componentItemsChecked[index])
                                              //                                                                                     ? kprimaryColor
                                              //                                                                                     : Colors
                                              //                                                                                     .black),),
                                              //                                                                           Text(
                                              //                                                                             "${component[index]["calories"]}",
                                              //                                                                             style: TextStyle(
                                              //                                                                                 color: (componentItemsChecked[index])
                                              //                                                                                     ? kprimaryColor
                                              //                                                                                     : Colors
                                              //                                                                                     .black),),
                                              //                                                                           Checkbox(
                                              //                                                                             checkColor: Colors
                                              //                                                                                 .white,
                                              //                                                                             activeColor: (componentItemsChecked[index] ==
                                              //                                                                                 true)
                                              //                                                                                 ? kprimaryColor
                                              //                                                                                 : Colors
                                              //                                                                                 .white,
                                              //                                                                             value: componentItemsChecked[index],
                                              //                                                                             shape: const RoundedRectangleBorder(
                                              //                                                                                 borderRadius: BorderRadius
                                              //                                                                                     .all(
                                              //                                                                                     Radius
                                              //                                                                                         .circular(
                                              //                                                                                         5.0))),
                                              //                                                                             onChanged: (
                                              //                                                                                 bool? value) {
                                              //                                                                               setState(() {
                                              //                                                                                 componentItemsChecked[index] =
                                              //                                                                                 value!;
                                              //                                                                                 selectedComponent.add(component[index]["item"]);
                                              //                                                                               });
                                              //                                                                             },
                                              //                                                                           ),
                                              //                                                                         ],
                                              //                                                                       )
                                              //                                                                   );
                                              //                                                               }
                                              //                                                           ),
                                              //                                                         ),
                                              //                                                         Padding(  padding:EdgeInsets.only(left:10,right: 10,top: 30),),
                                              //                                                         Row(
                                              //                                                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              //                                                           children: [
                                              //                                                             Padding(
                                              //
                                              //                                                                 padding:EdgeInsets.only(left:10,right: 10),
                                              //                                                                 child: GestureDetector(
                                              //                                                                     onTap:(){
                                              //                                                                      setState(() {
                                              //                                                                        for(int i=0;i<componentItemsChecked.length;i++)
                                              //                                                                        {
                                              //                                                                          componentItemsChecked[i]=false;
                                              //                                                                          selectedComponent=[];
                                              //                                                                        }
                                              //                                                                      });
                                              //                                                                       Get.back();
                                              //                                                                     },
                                              //                                                                     child: Container(
                                              //                                                                       padding: EdgeInsets.all(5),
                                              //                                                                       decoration: BoxDecoration(
                                              //                                                                           color: kprimaryColor,
                                              //                                                                           borderRadius: BorderRadius.circular(25)),
                                              //                                                                        width: 120,
                                              //                                                                       height: 50,
                                              //                                                                       child: Center(child: Text("Discard", style: TextStyle(
                                              //                                                                       fontWeight: FontWeight.bold, fontSize: 20, color: Colors.white,),),),)                                                          // DefualtButton(text: "Apply",)),
                                              //                                                                 )
                                              //                                                             ),
                                              //                                                             Padding(
                                              //                                                                 padding:EdgeInsets.only(left:10,right: 10),
                                              //                                                                 child: GestureDetector(
                                              //                                                                     onTap:(){
                                              //                                                                       Get.back();
                                              //                                                                     },
                                              //                                                                     child: Container(
                                              //                                                                       padding: EdgeInsets.all(5),
                                              //                                                                      decoration: BoxDecoration(
                                              //                                                                           color: kprimaryColor,
                                              //                                                                           borderRadius: BorderRadius.circular(25)),
                                              //                                                                        width: 120,
                                              //                                                                       height: 50, child: Center(
                                              //                                                                       child: Text("Apply", style: TextStyle(
                                              //                                                                       fontWeight: FontWeight.bold, fontSize: 20, color: Colors.white,),),),)                                                          // DefualtButton(text: "Apply",)),
                                              //                                                                 )
                                              //                                                             ),
                                              //                                                           ],
                                              //                                                         )
                                              //
                                              //
                                              //                                                       ],
                                              //                                                     ),
                                              //                                                   )
                                              //
                                              //                                               );
                                              //                                             });
                                              Get.to(() => DetailsScreenOne(
                                                    profileImage:
                                                        widget.profileImage,
                                                    selectedComponent: widget
                                                        .selectedComponent,
                                                    productSize:
                                                        widget.productSize,
                                                    user: widget.user,
                                                    //phoneNumber: widget.phoneNumber,
                                                    product: widget.product,
                                                  ));
                                            },
                                            icon: Icon(Icons.arrow_drop_down),
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
                                        ]),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 1 / 60,
                    ),
                    Text(
                      "Description",
                      style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
// fontFamily: ,
                          color: Colors.white),
                    ),
// SizedBox(
//   height:MediaQuery.of(context).size.height * 1 / 210,
// ),
                    Container(
                      height: MediaQuery.of(context).size.height * 1 / 5.5,
                      child: SingleChildScrollView(
                        physics: BouncingScrollPhysics(),
                        child: Text(
                          widget.product.description,
                          style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.w200,
// fontFamily: ,
                              color: Colors.white),
                        ),
                      ),
                    ),

                    SizedBox(
                      height: MediaQuery.of(context).size.height * 1 / 28,
                    ),

                    MaterialButton(
                      onPressed: () async {
                        //  for(int x=0;x<widget.selectedComponent.length;x++)
                        // {
                        //   selectedComponentStr=selectedComponentStr+"\t"+",";
                        //  }
                        if (!userCartRequests.contains(UserRequests(
                          pTitle: widget.product.title,
                          pPrice: widget.product.price,
                          pCount: 1,
                          pImageAssets: widget.product.imageSrc,
                          pSize: selectedSize,
                          pComponent: selectedComponentStr,
                        ))) {
                          setState(() {
                            userCartRequests.add(
//                             addUserCartRequests(
                                UserRequests(
                              //pImageAssets: pImageAssets, pTitle: pTitle, pPrice: pPrice, pCount: pCount, pSize: pSize, pComponent: pComponent)
// //pTitle: pTitle, pPrice: pPrice, pCount: pCount, imageAssets: imageAssets, pSize: pSize, pComponent: pComponent)
                              pTitle: widget.product.title,
                              pPrice: widget.product.price,
                              pCount: 1,
                              pImageAssets: widget.product.imageSrc,
                              pSize: selectedSize,
                              pComponent: selectedComponentStr,
                            ));
                          });
                        }
//                         else if(userCartRequests.contains(
//                             UserRequests(
//                               pTitle: widget.product.title,
//                               pPrice: widget.product.price,
//                               pCount:1,
//                               pImageAssets: widget.product.imageSrc,
//                               pSize:widget. productSize,
//                               pComponent: widget.selectedComponent,)
//                         )
//                         ) {
//                           userCartRequests.remove(
//                               UserRequests(
//                                 pTitle: widget.product.title,
//                                 pPrice: widget.product.price,
//                                 pCount:1,
//                                 pImageAssets: widget.product.imageSrc,
//                                 pSize:widget. productSize,
//                                 pComponent: widget.selectedComponent,
//                         ));
//                           addUserCartRequests(
// //pTitle: pTitle, pPrice: pPrice, pCount: pCount, imageAssets: imageAssets, pSize: pSize, pComponent: pComponent)
//                             pTitle: widget.product.title,
//                             pPrice: widget.product.price,
//                             pCount: 2,
//                             imageAssets: widget.product.imageSrc,
//                             pSize: widget.productSize,
//                             pComponent: widget.selectedComponent,
//                           );
//
//                         }
                        print(userCartRequests.length);
                        Get.to(() => MyCartScreen(
                              //  phoneNumber: widget.phoneNumber,
                              user: widget.user,
                              profileImage: widget.profileImage,
                            ));
                      },
                      child: Container(
                        height: MediaQuery.of(context).size.height * 1 / 15,
                        width: MediaQuery.of(context).size.width * 1 / 0.5,
                        decoration: BoxDecoration(
                            color: kprimaryColor,
                            borderRadius: BorderRadius.circular(40)),
                        child: Center(
//left: MediaQuery.of(context).size.height * 1 / 60

// ),
                          child: Text(
                            'Place Order'.tr,
                            style: TextStyle(fontSize: 22, color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
//}