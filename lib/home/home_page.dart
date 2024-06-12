

import 'package:flutter/material.dart';
import 'package:food_delivery/model/users.dart';
import 'package:food_delivery/widgets/drower.dart';
import 'package:get/get.dart';
import 'package:food_delivery/const.dart';
import 'package:food_delivery/home/all_meals.dart';
import 'package:food_delivery/widgets/discount_banner.dart';


class HomePage extends StatefulWidget {
   final String user,profileImage;
  // final int phoneNumber;
 // final Customers user;
  const HomePage({Key? key,
   required this.user,
    required this.profileImage,
    // required this.phoneNumber
  }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with TickerProviderStateMixin
{


List<String> category=["All","Burger","Juice","Bread","Pizza"];
  int selectedTabIndex = 0;
//  late TabController controller;

  //ScrollController _scrollController=ScrollController();
  TextEditingController detailsController = TextEditingController();
  String search="";

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
    leading:
    IconButton(
    onPressed: (){
    Get.defaultDialog(
    title: "",
    content: UserDrawer(
            name: widget.user,
            profileImage: widget.profileImage,
           ),
    );
    },
    icon:Icon(Icons.menu,color: Colors.black,)
    ),


    centerTitle: true,
         // actions: [
              actions:  [ Padding(
                padding:  EdgeInsets.only(
                    left:MediaQuery.of(context).size.height * 1/ 40,
                    right: MediaQuery.of(context).size.height * 1/ 40.0,
                    top:MediaQuery.of(context).size.height * 1/ 150),
                child: ClipOval(
                  clipBehavior: Clip.hardEdge,
                  child: Material(
                    //color: Colors.transparent,
                    // child: Image.network(
                    //imageAssets,
                    // File
                    //   File(),
                    //  width:70,
                    //double.maxFinite-400,
                    //  height: 50,
                    //  width: 50,
                    // fit: BoxFit.cover,
                    child: Ink.image(
                      image: AssetImage(
                          "assets/images/women.png"),
                      fit: BoxFit.cover,
                      height: 40,
                      width: 40,
                      // ),
                    ),
                  ),
                ),
              )
          ],
          // title:
           // UserDrawer(
           //   // appBar: MerchAppBar(
           //
           //   userName: widget.user,
           //   profileImage: widget.profileImage,
           // )
       ),
      //   drawer: UserDrawer(
      //     userName: widget.user,
      //     profileImage: widget.profileImage,
      //   ),
      // appBar: AppBar(
      //   actions:  [ Padding(
      //     padding:  EdgeInsets.only(
      //         left:MediaQuery.of(context).size.height * 1/ 40,
      //         right: MediaQuery.of(context).size.height * 1/ 40.0,
      //         top:MediaQuery.of(context).size.height * 1/ 150),
      //     child: ClipOval(
      //       clipBehavior: Clip.hardEdge,
      //       child: Material(
      //         //color: Colors.transparent,
      //         // child: Image.network(
      //         //imageAssets,
      //         // File
      //         //   File(),
      //         //  width:70,
      //         //double.maxFinite-400,
      //         //  height: 50,
      //         //  width: 50,
      //         // fit: BoxFit.cover,
      //         child: Ink.image(
      //           image: AssetImage(
      //               "assets/images/women.png"),
      //           fit: BoxFit.cover,
      //           height: 40,
      //           width: 40,
      //           // ),
      //         ),
      //       ),
      //     ),
      //   ),]
      // ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[

            Padding(
              padding:  EdgeInsets.only(
                  left:MediaQuery.of(context).size.height * 1/ 40,
                  right: MediaQuery.of(context).size.height * 1/ 40.0,
                  //top:MediaQuery.of(context).size.height * 1/ 300
              ),

              child: Container(
                //margin: EdgeInsets.all(8),
                child: Text("Let Us Eat Something",
                  style: TextStyle(
                      fontSize: 15,color: Colors.black,
                      fontWeight: FontWeight.bold
                  ),
                ),
              ),
            ),

            Padding(
              padding:  EdgeInsets.only(
                  left:MediaQuery.of(context).size.height * 1/ 40,
                  right: MediaQuery.of(context).size.height * 1/ 40.0,
                  top:MediaQuery.of(context).size.height * 1/ 140),

              child: Container(
                //margin: EdgeInsets.all(8),
                child: Text("Delicious",
                  style: TextStyle(
                      fontSize: 15,
                      color: kprimaryColor,
                      fontWeight: FontWeight.bold
                  ),
                ),
              ),
            ),
        Padding(
          padding:  EdgeInsets.only(left:MediaQuery.of(context).size.height * 1/ 40,
              right: MediaQuery.of(context).size.height * 1/ 40.0,
              top:MediaQuery.of(context).size.height * 1/ 60),
          child: Container(
           height:MediaQuery.of(context).size.height * 1/ 16.0,

    // 45,
           decoration: BoxDecoration(
             border: Border.all(color: kprimaryColor),
             borderRadius: BorderRadius.circular(20)
           ),
           child: TextFormField(
                  controller: detailsController,
                  textAlign: TextAlign.center,
                  //editing controller of this TextField
                  decoration: InputDecoration(
                         border: OutlineInputBorder(
                           borderSide: BorderSide(
                             width: 2,
                           ),
                         borderRadius: BorderRadius.circular(20),
                     ),
                    prefixIcon: Icon(Icons.search,color: Colors.grey,),
                    labelStyle:TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.grey,),
                    hintText: 'Search'.tr,
                  ),
                  onSaved: (newValue) => search = newValue!,
                  onChanged: (value) => search = value,
                ),
         ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding:  EdgeInsets.only(
                      left:MediaQuery.of(context).size.height * 1/ 40,
                      right: MediaQuery.of(context).size.height * 1/ 40.0,
                      top:MediaQuery.of(context).size.height * 1/ 60
                    //  left:20.0,right: 20.0, top:15.0
                  ),
                  child: Text("Category",
                  style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding:  EdgeInsets.only(
                      right: MediaQuery.of(context).size.height * 1/ 40,
                      top:MediaQuery.of(context).size.height * 1/ 160),
                  child: Container(
                    height: 30,
                   // decoration: BoxDecoration(color: Colors.white),
                    child: TabBar(
                        controller: controller,
                        indicatorColor: kprimaryColor ,
                        labelColor: Colors.black,
                        unselectedLabelColor: Colors.grey.withOpacity(0.6),
                       // isScrollable: true,
                        tabs: List.generate(category.length, (index) =>
                          Text(category[index].tr,
                            style: TextStyle(
                                fontSize: 15,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
    ))
    //                    ]
    ),
                  ),
                ),
                Padding(
                  padding:  EdgeInsets.only(

                      top:MediaQuery.of(context).size.height * 1/ 60
                    //  top: 13
                  ),
                child:
                DiscountBanner(),
                ),
                SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  child:    Container(
                    height: MediaQuery.of(context).size.height * 1/ 2.1,
                    child: TabBarView(

                        controller: controller,
                        children:  List.generate(category.length,(index) =>
                          Padding(
                            padding:  EdgeInsets.only(

                                left:MediaQuery.of(context).size.height * 1/ 40,
                                right: MediaQuery.of(context).size.height * 1/ 40.0,
                                top:MediaQuery.of(context).size.height * 1/ 40
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
                                    ),),
                          // Padding(
                          //   padding:  EdgeInsets.only(
                          //       left:MediaQuery.of(context).size.height * 1/ 40,
                          //       right: MediaQuery.of(context).size.height * 1/ 40.0,
                          //       top:MediaQuery.of(context).size.height * 1/ 40
                          //      // left:15.0,right: 15.0, top:15.0
                          //   ),
                          //    child: HomeDetails(
                          //           products: burger,
                          //   ),
                          // ),
                          // Padding(
                          //   padding:  EdgeInsets.only(
                          //       left:MediaQuery.of(context).size.height * 1/ 40,
                          //       right: MediaQuery.of(context).size.height * 1/ 40.0,
                          //       top:MediaQuery.of(context).size.height * 1/ 40
                          //     //  left:15.0,right: 15.0, top:15.0
                          //   ),
                          //   child: HomeDetails(
                          //     products: juice,
                          //   ),
                          // ),
                          // Padding(
                          //   padding:  EdgeInsets.only(left:MediaQuery.of(context).size.height * 1/ 40,
                          //       right: MediaQuery.of(context).size.height * 1/ 40.0,
                          //       top:MediaQuery.of(context).size.height * 1/ 40
                          //     //  left:15.0,right: 15.0, top:15.0
                          //   ),
                          //   child: HomeDetails(
                          //     products: bread,
                          //   ),
                          // ),
                          // Padding(
                          //   padding:  EdgeInsets.only(
                          //       left:MediaQuery.of(context).size.height * 1/ 40,
                          //       right: MediaQuery.of(context).size.height * 1/ 40.0,
                          //       top:MediaQuery.of(context).size.height * 1/ 40
                          //       //left:15.0,right: 15.0, top:15.0
                          //   ),
                          //   child: HomeDetails(
                          //     products: pizza,
                          //   ),
                          // )
                       // ]
    ),

                  ),
                ),
                )
              ],
            ),
          ],
        )
    );
  }
  // Future createProductsTask(Products categoriesTask) async {
  //   final availabilityData = FirebaseFirestore.instance.collection(
  //       'All Products').doc();
  //   final json = categoriesTask.toMap();
  //   await availabilityData.set(json);
  //  // doneTask=true;
  // }
 }