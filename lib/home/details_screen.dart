import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
            height: (MediaQuery.of(context).size.height * 1 / 2.89).h,
            width: (MediaQuery.of(context).size.width * 1 / 1.5).h,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  widget.product.imageSrc,
                ),
              ),
            ),
          ),

          Text(
            "_ __ __ __ _",
            style: TextStyle(
                fontSize: 18.sp,
                fontWeight: FontWeight.bold,
                color: Colors.white),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: (MediaQuery.of(context).size.height * 1 / 40).h,
            ),
          ),
//   ],
// ),
// ),
          Padding(
            padding: EdgeInsets.only(
              top: (MediaQuery.of(context).size.height * 1 / 220).h,
            ),
            child: Container(
//padding: EdgeInsets.only(top:10,bottom:10,left:10.0,right: 10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
//toLeft: Radius.circular(75.0),
                    topRight: Radius.circular(
                      (MediaQuery.of(context).size.height * 1 / 4.5).h,
                    ),
                  ),
                  color: Colors.black),
              height: (MediaQuery.of(context).size.height * 1 / 1.7).h,
//height: MediaQuery.of(context).size.height * 0.55,
//   height: 550,
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: EdgeInsets.all(
                  (MediaQuery.of(context).size.height * 1 / 60).h,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
// SizedBox(height: MediaQuery.of(context).size.height * 1 / 60,),
                    Padding(
                      padding: EdgeInsets.only(
                        top: (MediaQuery.of(context).size.height * 1 / 180).h,
                      ),
                      child: Container(
//margin: EdgeInsets.all(8),
                        child: Text(
                          widget.product.title,
                          style: TextStyle(fontSize: 24.sp, color: Colors.white),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        top: (MediaQuery.of(context).size.height * 1 / 300).h,
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
                                      size: 25,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: kprimaryColor,
                                      size: 25,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: kprimaryColor,
                                      size: 25,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: kprimaryColor,
                                      size: 25,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: kprimaryColor,
                                      size: 25,
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
                                      size: 25,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: kprimaryColor,
                                      size: 25,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: kprimaryColor,
                                      size: 25,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.white,
                                      size: 25,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.white,
                                      size: 25,
                                    ),
                                  ],
                                ),
                          Padding(
                            padding:  EdgeInsets.symmetric(
                                vertical: 0.0.w, horizontal: 40.0.h),
                            child: Container(
                              child: Text(
                                "${widget.product.price}\$",
                                style: TextStyle(
                                    fontSize: 30.sp, color: Colors.white),
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
                                      Text((selectedSize!="")?selectedSize:
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
                      height: (MediaQuery.of(context).size.height * 1 / 60).h,
                    ),
                    Text(
                      "Description",
                      style: TextStyle(
                          fontSize: 20.sp,
                          fontWeight: FontWeight.bold,
// fontFamily: ,
                          color: Colors.white),
                    ),
// SizedBox(
//   height:MediaQuery.of(context).size.height * 1 / 210,
// ),
                    Container(
                      height: (MediaQuery.of(context).size.height * 1 / 4.1).h,
                      child: SingleChildScrollView(
                        physics: BouncingScrollPhysics(),
                        child: Text(
                          widget.product.description,
                          style: TextStyle(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w200,
// fontFamily: ,
                              color: Colors.white),
                        ),
                      ),
                    ),

                    SizedBox(
                      height: 10.h
                      //(MediaQuery.of(context).size.height * 1 / 20).h,
                    ),

                    MaterialButton(
                      onPressed: () async {
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
//
                                UserRequests(
                             pTitle: widget.product.title,
                              pPrice: widget.product.price,
                              pCount: 1,
                              pImageAssets: widget.product.imageSrc,
                              pSize: selectedSize,
                              pComponent: selectedComponentStr,
                            ));
                          });
                        }
//
                        print(userCartRequests.length);
                        Get.to(() => MyCartScreen(
                          comeFrom: "Details",
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