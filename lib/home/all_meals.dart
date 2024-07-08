import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_delivery/model/products.dart';
import 'package:food_delivery/model/users.dart';
import 'package:get/get.dart';
import 'package:food_delivery/const.dart';
import 'package:food_delivery/home/details.dart';
import 'package:food_delivery/home/details_screen.dart';
import 'package:food_delivery/model/model.dart';

class HomeDetails extends StatefulWidget {
  final String productsCategory;
  //final int phoneNumber;
  final String user;
  final String profileImage;

  const HomeDetails({
    super.key,
    required this.productsCategory,
    required this.user,
    required this.profileImage,
  });

  @override
  State<HomeDetails> createState() => _HomeDetailsState();
}

class _HomeDetailsState extends State<HomeDetails> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<Products>>(
        stream: readCategoryProducts(widget.productsCategory),
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return Text(' Error ya Ahmed :: ${snapshot.error}');
          } else if (snapshot.hasData) {
            final product = snapshot.data!;
            return GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.99.h,
                  crossAxisSpacing: 12.5.h,
                  mainAxisSpacing: 12.5.h,
                  // shrinkWrap: true,
                  // padding: EdgeInsets.only(left:15.0,right: 15.0),
                ),
                itemCount: product.length,
                itemBuilder: ((context, index) {
                  return

                      // childAspectRatio: 0.99,
                      // crossAxisSpacing: 12.5,
                      // mainAxisSpacing: 12.5,
                      // shrinkWrap: true,
                      // padding: EdgeInsets.only(left:15.0,right: 15.0),
                      // children:
                      // List.generate(product!.length, (index) =>
                      // // controller: _scrollController,
                      //  children:
                      //product.map
                      buildDailyTask(product[index]);
                  //.toList(),
                  //product.map(_buildFoodItem.toList(),
                  // shrinkWrap: true,
                })
                // ]
                );
          } else {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        });
  }

  Widget buildDailyTask(Products product) => GestureDetector(
        onTap: () {
          Get.to(() => DetailsScreen(
                profileImage: widget.profileImage,
                selectedComponent: "",
                productSize: "",
                //phone: widget.phoneNumber,
                product: product,
                user: widget.user,
                // image: imageSrc,
                // productName: mealTitle,
                // productPrice: price,
                // isFavorite: isFavorite,
                // productCategory: mealTitle,
                // productDetails: description,
              ));
        },
        child: Container(
          // padding: EdgeInsets.only(left:15.0,right: 15.0),
          decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(15),
              border: Border.all()),
          height: (MediaQuery.of(context).size.height * 1 / 6).h,
          //100,
          width: (MediaQuery.of(context).size.width).h,
          //* 1/ 4,
          //   decoration: BoxDecoration(
          //      // color: kprimaryColor.withOpacity(0.2),
          //       borderRadius: BorderRadius.circular(25),
          //       border: Border.all()
          //   ),
          //color: Colors.white,
          // width: 80,
          //height: 160,
          child: Column(
              //shrinkWrap: true,
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                      left: (MediaQuery.of(context).size.height * 1 / 40).h,
                      right: (MediaQuery.of(context).size.height * 1 / 40.0).h,
                      top: (MediaQuery.of(context).size.height * 1 / 80).h),
                  child: Container(
                    //  padding: EdgeInsets.only(top:7),
                    height: MediaQuery.of(context).size.height / 9,

                    // 90,
                    // width: 66,
                    decoration: BoxDecoration(
                        //color: Colors.transparent,

                        // border: Border.all(),
                        borderRadius: BorderRadius.circular(25)),
                    child: Image.asset(
                      product.imageSrc,
                      fit: BoxFit.contain,
                      // width: d,
                      //color: Colors.white,
                      // widget.marketImage
                    ),
                    //),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      left: MediaQuery.of(context).size.height * 1 / 60,
                      right: MediaQuery.of(context).size.height * 1 / 60.0,
                      top: MediaQuery.of(context).size.height * 1 / 80),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        //margin: EdgeInsets.all(8),
                        child: Text(
                          product.title,
                          style: TextStyle(fontSize: 12, color: Colors.white),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            top: MediaQuery.of(context).size.height * 1 / 80
                            //   top:5.0
                            ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            (product.isFavorite == true)
                                ? Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Icon(
                                        Icons.star,
                                        color: kprimaryColor,
                                        size: 12,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: kprimaryColor,
                                        size: 12,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: kprimaryColor,
                                        size: 12,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Colors.transparent,
                                        size: 12,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Colors.transparent,
                                        size: 12,
                                      ),
                                    ],
                                  )
                                : Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Icon(
                                        Icons.star,
                                        color: kprimaryColor,
                                        size: 12,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: kprimaryColor,
                                        size: 12,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: kprimaryColor,
                                        size: 12,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: kprimaryColor,
                                        size: 12,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: kprimaryColor,
                                        size: 12,
                                      ),
                                    ],
                                  ),
                            Container(
                              //margin: EdgeInsets.all(8),
                              child: Text(
                                "${product.price}\$",
                                style: TextStyle(
                                    fontSize: 12, color: Colors.white),
                              ),
                            ),
                            Container(
                              //margin: EdgeInsets.all(8),
                              child: Text(
                                "${product.oldPrice}\$",
                                style: TextStyle(
                                  fontSize: 12, color: Colors.white,
                                  decoration: TextDecoration.lineThrough,
                                  decorationThickness: 3,
                                  decorationColor: Colors.red,
                                  // decorationStyle:
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                // Padding(padding: const EdgeInsets.only(top:10.0),),
              ]),
        ),
      );

  Stream<List<Products>> readCategoryProducts(String category) =>
      FirebaseFirestore.instance
          .collection('All Products')
          // .where('category', isEqualTo: category,)

          .snapshots()
          .map((snapshot) => snapshot.docs
              .map((doc) => Products.fromMap(doc.data()).copyWith(id: doc.id))
              .toList());
}
