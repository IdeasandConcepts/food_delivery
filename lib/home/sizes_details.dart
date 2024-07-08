import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_delivery/const.dart';
import 'package:food_delivery/home/details_screen.dart';
import 'package:food_delivery/model/favorite.dart';
import 'package:food_delivery/model/model.dart';
import 'package:food_delivery/model/products.dart';
import 'package:food_delivery/model/users.dart';
import 'package:food_delivery/widgets/default_button.dart';
import 'package:get/get.dart';

class SizesDetailsScreen extends StatefulWidget {
  final String user;
  final String profileImage;
  final Products product;
  final String productSize;
  final String selectedComponent;
  const SizesDetailsScreen({
    Key? key,
    required this.product,
    required this.user,
    required this.profileImage,
    required this.productSize,
    required this.selectedComponent,
  }) : super(key: key);

  @override
  State<SizesDetailsScreen> createState() => _SizesDetailsScreenState();
}

class _SizesDetailsScreenState extends State<SizesDetailsScreen> {
//   List<bool> componentItemsChecked = [];
// // bool
// //     xsSizeItemsChecked =false,
// //     sSizeItemsChecked =false,
// //     mSizeItemsChecked =false,
// //     lSizeItemsChecked =false,
// //     xlSizeItemsChecked =false;
//
//   List<String>componentItems=[];
  String selectedSize = "";
  String selectedComponent = "";
  @override
  void initState() {
// TODO: implement initState
    // setState(() {
    selectedSize = widget.productSize;
    selectedComponent = widget.selectedComponent;
    // });
    super.initState();
  }
//   @override
//   void dispose() {
// // TODO: implement dispose
//     super.dispose();
//    }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kprimaryColor,
        body:
            // setState(() {
//  return
//         Get.defaultDialog(
//           title: "Selected Size",
//           backgroundColor: Colors.white,
//           titleStyle: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),
//           content:

            Container(
//color: Colors.white,
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height ,
                child: Column(
                    // crossAxisAlignment: CrossAxisAlignment.start,

//shrinkWrap: true,
                    children: [
                      Container(
                        height:
                            (MediaQuery.of(context).size.height * 1 / 2.89).h,
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
                            top: (MediaQuery.of(context).size.height * 1 / 220)
                                .h,
                          ),
                          child: Container(
//padding: EdgeInsets.only(top:10,bottom:10,left:10.0,right: 10),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
//toLeft: Radius.circular(75.0),
                                    topRight: Radius.circular(
                                      (MediaQuery.of(context).size.height *
                                              1 /
                                              4.5)
                                          .h,
                                    ),
                                  ),
                                  color: Colors.black),
                              // height:
                              //     (MediaQuery.of(context).size.height * 1 / 1.7)
                              //         .h,
//height: MediaQuery.of(context).size.height * 0.55,
//   height: 550,
                              width: MediaQuery.of(context).size.width,
                              child: Padding(
                                padding: EdgeInsets.all(
                                  (MediaQuery.of(context).size.height * 1 / 60)
                                      .h,
                                ),
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
// SizedBox(height: MediaQuery.of(context).size.height * 1 / 60,),
                                      Padding(
                                        padding: EdgeInsets.only(
                                          top: (MediaQuery.of(context)
                                                      .size
                                                      .height *
                                                  1 /
                                                  180)
                                              .h,
                                        ),
                                        child: Container(
//margin: EdgeInsets.all(8),
                                          child: Text(
                                            widget.product.title,
                                            style: TextStyle(
                                                fontSize: 24.sp,
                                                color: Colors.white),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                          top: (MediaQuery.of(context)
                                                      .size
                                                      .height *
                                                  1 /
                                                  300)
                                              .h,
                                        ),
                                        child: Row(
// crossAxisAlignment: CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            (widget.product.isFavorite != true)
                                                ? Row(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
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
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
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
                                              padding: EdgeInsets.symmetric(
                                                  vertical: 0.0.w,
                                                  horizontal: 40.0.h),
                                              child: Container(
                                                child: Text(
                                                  "${widget.product.price}\$",
                                                  style: TextStyle(
                                                      fontSize: 30.sp,
                                                      color: Colors.white),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
])))),
//SizedBox(height: 10.h,),
                                      Container(
                                        decoration: BoxDecoration(
                                          // borderRadius: BorderRadius.only(
                                          //   topLeft: Radius.circular(15),
                                          //   topRight: Radius.circular(15),
                                          // ),
                                         color: Colors.white,
                                        ),
                                        height:
                                        (MediaQuery.of(context).size.height *
                                                0.439).h,
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: <Widget>[
Column(
  mainAxisAlignment: MainAxisAlignment.start,
  children: [
    Padding(
      padding:  EdgeInsets.only(
          left: 10.h, right: 10.h),
      child: Container(
//margin: EdgeInsets.all(8),
        child: Text(
          "Sizes",
          style: TextStyle(
              fontSize: 25.sp,
              color: Colors.black),
        ),
      ),
    ),
    Padding(
        padding: EdgeInsets.only(
            left: MediaQuery.of(context)
                .size
                .height *
                1 /
                130,
            right:
            MediaQuery.of(context)
                .size
                .height *
                1 /
                130,
            top: MediaQuery.of(context)
                .size
                .height *
                1 /
                210),
        child: Row(
          mainAxisAlignment:
          MainAxisAlignment
              .spaceBetween,
//crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InkWell(
              onTap: () {
                setState(() {
                  selectedSize = "XS";
                });
//xsSizeItemsChecked=true;
              },
              child: Container(
                  height: 35,
                  width: 80,
                  decoration: BoxDecoration(
                      borderRadius:
                      BorderRadius
                          .circular(
                          10),
                      color: (selectedSize ==
                          "XS")
                          ? kprimaryColor
                          : Colors
                          .white),
                  child: Center(
                    child: Text(
                      "XS",
                      style: TextStyle(
                          color: Colors
                              .black),
                    ),
                  )),
            ),
            InkWell(
              onTap: () {
                setState(() {
                  selectedSize = "S";
                });
              },
              child: Container(
                  height: 35,
                  width: 80,
                  decoration: BoxDecoration(
                      borderRadius:
                      BorderRadius
                          .circular(
                          10),
                      color: (selectedSize ==
                          "S")
                          ? kprimaryColor
                          : Colors
                          .white),
                  child: Center(
                    child: Text(
                      "S",
                      style: TextStyle(
                          color: Colors
                              .black),
                    ),
                  )),
            ),
            InkWell(
              onTap: () {
//  mSizeItemsChecked=true;
                setState(() {
                  selectedSize = "M";
                });
              },
              child: Container(
                height: 35,
                width: 80,
                decoration: BoxDecoration(
                    borderRadius:
                    BorderRadius
                        .circular(
                        10),
                    color: (selectedSize ==
                        "M")
                        ? kprimaryColor
                        : Colors.white),
                child: Center(
                  child: Text(
                    "M",
                    style: TextStyle(
                        color: Colors
                            .black),
                  ),
                ),
              ),
            ),
          ],
        )),
    Padding(
        padding: EdgeInsets.only(
            left: MediaQuery.of(context)
                .size
                .height *
                1 /
                130,
            right:
            MediaQuery.of(context)
                .size
                .height *
                1 /
                130,
            top: MediaQuery.of(context)
                .size
                .height *
                1 /
                210),
        child: Row(
          mainAxisAlignment:
          MainAxisAlignment
              .spaceBetween,
//crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InkWell(
              onTap: () {
                setState(() {
                  selectedSize = "L";
                });
              },
              child: Container(
                height: 35,
                width: 80,
                decoration: BoxDecoration(
                    borderRadius:
                    BorderRadius
                        .circular(
                        10),
                    color: (selectedSize ==
                        "L")
                        ? kprimaryColor
                        : Colors.white),
                child: Center(
                  child: Text(
                    "L",
                    style: TextStyle(
                        color: Colors
                            .black),
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                setState(() {
                  selectedSize = "XL";
                });
              },
              child: Container(
                  height: 35,
                  width: 80,
                  decoration: BoxDecoration(
                      borderRadius:
                      BorderRadius
                          .circular(
                          10),
                      color: (selectedSize ==
                          "XL")
                          ? kprimaryColor
                          : Colors
                          .white),
                  child: Center(
                    child: Text(
                      "XL",
                      style: TextStyle(
                          color: Colors
                              .black),
                    ),
                  )),
            )
          ],
        )),
    Padding(
        padding: EdgeInsets.only(
            left: MediaQuery.of(context)
                .size
                .height *
                1 /
                130,
            right:
            MediaQuery.of(context)
                .size
                .height *
                1 /
                130,
            top: MediaQuery.of(context)
                .size
                .height *
                1 /
                70),
        child: Row(
          mainAxisAlignment:
          MainAxisAlignment
              .spaceBetween,
//crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 28.h,
              width: 120.w,
// decoration: BoxDecoration(
//     borderRadius: BorderRadius.circular(10),
//     color: (lSizeItemsChecked)
//         ? kprimaryColor
//         : Colors.white
// ),
              child: Center(
                child: Text(
                  "Selected Size",
                  style: TextStyle(
                      color:
                      Colors.black),
                ),
              ),
            ),
            Container(
                height: 30.h,
                width: 80.w,
// decoration: BoxDecoration(
//     borderRadius: BorderRadius.circular(10),
//     color:(xlSizeItemsChecked)
//         ? kprimaryColor
//         : Colors.white
// ),
                child: Center(
                  child: Text(
                    selectedSize,
                    style: TextStyle(
                        color: Colors
                            .black),
                  ),
                ))
          ],
        )),
  ],
),

                                            // SizedBox(
                                            //     height: MediaQuery.of(context)
                                            //             .size
                                            //             .height *
                                            //         1 /
                                            //         20),
                                            Padding(
                                              padding: EdgeInsets.only(
                                                  left: MediaQuery.of(context)
                                                          .size
                                                          .height *
                                                      1 /
                                                      130,
                                                  right: MediaQuery.of(context)
                                                          .size
                                                          .height *
                                                      1 /
                                                      130,
                                                  top:111.h
                                              ),
                                              child: GestureDetector(
                                                  onTap: () {
                                                    Get.to(() => DetailsScreen(
                                                        profileImage:
                                                            widget.profileImage,
                                                        product: widget.product,
                                                        user: widget.user,
                                                        //phoneNumber:widget. phoneNumber,
                                                        productSize:
                                                            selectedSize,
                                                        selectedComponent: widget
                                                            .selectedComponent));
                                                    // Get.back();
                                                  },
                                                  child: DefualtButton(
                                                    text: "Apply",
                                                  )),
                                            )
                                          ])),
                                          ],
                                        ),
                                      )
                                   // ]),
                            //  )
    //)
   // )
                  //  ])
                // )
               // )
    );

    //  );
  }
}
