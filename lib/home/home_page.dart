import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_delivery/model/users.dart';
import 'package:food_delivery/widgets/drower.dart';
import 'package:get/get.dart';
import 'package:food_delivery/const.dart';
import 'package:food_delivery/home/all_meals.dart';
import 'package:food_delivery/widgets/discount_banner.dart';

class HomePage extends StatefulWidget {
  final String user, profileImage;
  // final int phoneNumber;
  // final Customers user;
  const HomePage({
    Key? key,
    required this.user,
    required this.profileImage,
    // required this.phoneNumber
  }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  List<String> category = ["All", "Burger", "Juice", "Bread", "Pizza"];
  int selectedTabIndex = 0;
//  late TabController controller;

  //ScrollController _scrollController=ScrollController();
  TextEditingController detailsController = TextEditingController();
  String search = "";

  // @override
  // void initState() {
  //   // TODO: implement initState
  //   setState(() {
  //     for(int i=0;i<products.length;i++)
  //     createProductsTask(
  //       Products(
  //           category: products[i]["category"],
  //           isFavorite:products[i]["is_favorite"],
  //           title: products[i]["title"],
  //           oldPrice: products[i]["old_price"],
  //           price: products[i]["price"],
  //           description: products[i]["description"],
  //           imageSrc: products[i]["image"],)
  //     );
  //   });
  //   super.initState();
  // }
  @override
  Widget build(BuildContext context) {
//     //DocumentSnapshot first=
//     //var role = "user";
//
    TabController controller = TabController(length: 5, vsync: this);
    return Scaffold(
        appBar:
            // AppBar(
            //     //automaticallyImplyLeading: false,
            //     backgroundColor: Colors.transparent,
            AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.transparent,
          // title:  Text(
          //   widget.title.tr.toUpperCase(),style: TextStyle(color: Colors.white,fontSize: 20.sp),),
          leading: IconButton(
              onPressed: () {
                Get.defaultDialog(
                  title: "",
                  content: UserDrawer(
                    name: widget.user,
                    profileImage: widget.profileImage,
                  ),
                );
              },
              icon: Icon(
                Icons.menu,
                color: Colors.black,
              )),

          centerTitle: true,
          // actions: [
          actions: [
            Padding(
              padding: EdgeInsets.only(
                  left: (MediaQuery.of(context).size.height * 1 / 50).h,
                  right: (MediaQuery.of(context).size.height * 1 / 50).h,
                  top: (MediaQuery.of(context).size.height * 1 / 150).h),
              child: ClipOval(
                clipBehavior: Clip.hardEdge,
                child: Material(
                  child: Ink.image(
                    image: AssetImage("assets/images/women.png"),
                    fit: BoxFit.cover,
                    height: 30.h,
                    width: 30.w,
                    // ),
                  ),
                ),
              ),
            )
          ],
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(
                left: (MediaQuery.of(context).size.height * 1 / 50).h,
                right: (MediaQuery.of(context).size.height * 1 / 50).h,
                //top:(MediaQuery.of(context).size.height * 1 / 299).h
              ),
              child: Container(
                //margin: EdgeInsets.all(8),
                child: Text(
                  "Let Us Eat Something",
                  style: TextStyle(
                      fontSize: 13.sp,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: (MediaQuery.of(context).size.height * 1 / 50).h,
                  right: (MediaQuery.of(context).size.height * 1 / 50).h),
              //top: (MediaQuery.of(context).size.height * 1 / 140).h),
              child: Container(
                //margin: EdgeInsets.all(8),
                child: Text(
                  "Delicious",
                  style: TextStyle(
                      fontSize: 15,
                      color: kprimaryColor,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: (MediaQuery.of(context).size.height * 1 / 40).h,
                  right: (MediaQuery.of(context).size.height * 1 / 40).h,
                  top: (MediaQuery.of(context).size.height * 1 / 70).h),
              child: Container(
                height: (MediaQuery.of(context).size.height * 1 / 18).h,

                // 45,
                decoration: BoxDecoration(
                    border: Border.all(color: kprimaryColor),
                    borderRadius: BorderRadius.circular(20)),
                child: TextFormField(
                  controller: detailsController,
                  //textAlign: TextAlign.center,
                  //editing controller of this TextField
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      prefixIcon: Icon(
                        Icons.search,
                        color: Colors.grey,
                        size: 20,
                      ),
                      labelStyle: TextStyle(
                        fontSize: 13.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey,
                      ),
                      hintText: 'Search'.tr,
                      hintStyle: TextStyle(
                        fontSize: 13.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey,
                      )),
                  onSaved: (newValue) => search = newValue!,
                  onChanged: (value) => search = value,
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                      left: (MediaQuery.of(context).size.height * 1 / 40).h,
                      right: (MediaQuery.of(context).size.height * 1 / 40).h,
                      top: (MediaQuery.of(context).size.height * 1 / 80).h
                      //  left:20.0,right: 20.0, top:15.0
                      ),
                  child: Text(
                    "Category",
                    style:
                        TextStyle(fontSize: 13.sp, fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      right: (MediaQuery.of(context).size.height * 1 / 40).h,
                      top: (MediaQuery.of(context).size.height * 1 / 160).h),
                  child: Container(
                    height: 20,

                    // decoration: BoxDecoration(color: Colors.white),
                    child: TabBar(
                        controller: controller,
                        //padding: EdgeInsets.all(1.h),
                        isScrollable: false,
                      //  tabAlignment: TabAlignment.start,
                        tabs:
                        List.generate(category.length,
                              (index) =>
                              Container(
                                height: 40.h,
                                width: 40.h,
                                // decoration: BoxDecoration(
                                //   borderRadius: BorderRadius.circular(10),
                                //   color:
                                //   // (dateFormat==
                                //   //     category[index])?
                                //   kprimaryColor,
                                //      // :null,
                                // ),
                                child: Center(
                                  child: Text(
                                   // (sharedlang=="ar")?
                                    category[index].tr,
        //:category[index].substring(0,3).tr,
                                    style: TextStyle(
                                        fontSize: 13.sp,
                                        color:
                                        // (dateFormat==category[index])?
                                        // whiteColor:
                                        // (categoriesDay[index]<FullIndex)?
                                        // redColor
                                        Colors.black.withOpacity(0.6),
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                        )
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      top: (MediaQuery.of(context).size.height * 1 / 70).h
                      //  top: 13
                      ),
                  child: DiscountBanner(),
                ),
                SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  child: Container(
                    height: (MediaQuery.of(context).size.height /2.1).h,
                    child: TabBarView(
                      controller: controller,
                      children: List.generate(
                        category.length,
                        (index) => Padding(
                          padding: EdgeInsets.only(
                              left: MediaQuery.of(context).size.height * 1 / 40,
                              right:
                                  MediaQuery.of(context).size.height * 1 / 40.0,
                              top: MediaQuery.of(context).size.height * 1 / 40
                              // left:15.0,right: 15.0, top:15.0
                              ),
                          child: HomeDetails(
                            user: widget.user,
                            profileImage: widget.profileImage,
                            // phoneNumber: widget.phoneNumber,
                            // products: products,
                            // products: productsData,
                            productsCategory: category[index],
                            // branch: "",
                          ),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ],
        ));
  }
  // Future createProductsTask(Products categoriesTask) async {
  //   final availabilityData = FirebaseFirestore.instance.collection(
  //       'All Products').doc();
  //   final json = categoriesTask.toMap();
  //   await availabilityData.set(json);
  //  // doneTask=true;
  // }
}
