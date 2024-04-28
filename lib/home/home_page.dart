

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:food_delivery/const.dart';
import 'package:food_delivery/home/all_meals.dart';
import 'package:food_delivery/widgets/discount_banner.dart';
import 'package:food_delivery/model/model.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {

  //ScrollController _scrollController=ScrollController();
  TextEditingController detailsController = TextEditingController();
  String search="";
  @override
  Widget build(BuildContext context) {
//     //DocumentSnapshot first=
//     //var role = "user";
//
    TabController controller = TabController(length: 5, vsync: this);
    return Scaffold(

        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding:  EdgeInsets.only(
                  left:MediaQuery.of(context).size.height * 1/ 40,
                  right: MediaQuery.of(context).size.height * 1/ 40.0,
                  top:MediaQuery.of(context).size.height * 1/ 150),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding:  EdgeInsets.only(
                        top:MediaQuery.of(context).size.height * 1/ 150
                        //10
                    ),
                    child: Icon(
                      Icons.menu,
                      color: Colors.black,
                      size: 25,
                      //fontFamily: PdfGoogleFonts.alefBold(),
                    ),
                  ),
                  // SizedBox(
                  //     width:5
                  // ),


                  ClipOval(
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
                  )
                ],
              ),
            ),
            Padding(
              padding:  EdgeInsets.only(
                  left:MediaQuery.of(context).size.height * 1/ 40,
                  right: MediaQuery.of(context).size.height * 1/ 40.0,
                  top:MediaQuery.of(context).size.height * 1/ 150),

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
                   // disabledBorder: ,
                     // border: OutlineInputBorder(
                     //   borderSide: BorderSide(color: kprimaryColor),

                       // height: 45,
                       // decoration: BoxDecoration(
                         border: OutlineInputBorder(

                           borderSide: BorderSide(
                             width: 2,
                            // color: Colors.amber
                           ),

                          // borderSide:
    //Border.all(color: kprimaryColor),
                         borderRadius: BorderRadius.circular(20),
                      // ),
                     ),
                    //fillColor: kprimaryColor,
                    prefixIcon: Icon(Icons.search,color: Colors.grey,),

                    // filled: true,
                    // labelText: 'id',
                    labelStyle:TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.grey,),
                    hintText: 'Search'.tr,
                    //labelText: 'Search'.tr,
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
                  //customSwith(status, switchVal, OnChangFun),
                Padding(
                  padding: const EdgeInsets.only(left:15.0,right: 15.0, top:15.0),

                  child: Container(
                   // decoration: BoxDecoration(color: Colors.white),
                    child: TabBar(

                      // indicatorSize: ,
                       // labelStyle:
                        controller: controller,
                        indicatorColor: kprimaryColor ,
                        labelColor: Colors.black,
                       // labelStyle:Border.all(),

    //                           BoxDecoration(
    // borderRadius:BorderRadius.circular(40),
    // border: Border.all(
    // color: kprimaryColor),
                        unselectedLabelColor: Colors.grey.withOpacity(0.6),
                        isScrollable: true,
                        tabs: [
                          Text('All'.tr, style: TextStyle(
                              fontSize: 15,
                              color: Colors.black,
                              fontWeight: FontWeight.bold
                          ),),
                          Text('Burgers'.tr, style: TextStyle(
                              fontSize: 15,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),),
                          Text('Juice'.tr,
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold)),
                          Text('Bread'.tr,
                            style: TextStyle(
                                fontSize: 15,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),),
                          Text('Pizza'.tr,
                            style: TextStyle(
                                fontSize: 15,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),),

                        ]),
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
                    height: MediaQuery.of(context).size.height * 1/ 2,
                    child: TabBarView(

                        controller: controller,
                        children: [
                          Padding(
                            padding:  EdgeInsets.only(left:MediaQuery.of(context).size.height * 1/ 40,
                                right: MediaQuery.of(context).size.height * 1/ 40.0,
                                top:MediaQuery.of(context).size.height * 1/ 40
                               // left:15.0,right: 15.0, top:15.0
                            ),
                                    child: HomeDetails(
                                      products: productsData,
                                    ),),
                          Padding(
                            padding:  EdgeInsets.only(
                                left:MediaQuery.of(context).size.height * 1/ 40,
                                right: MediaQuery.of(context).size.height * 1/ 40.0,
                                top:MediaQuery.of(context).size.height * 1/ 40
                               // left:15.0,right: 15.0, top:15.0
                            ),
                             child: HomeDetails(
                                    products: burger,
                            ),
                          ),
                          Padding(
                            padding:  EdgeInsets.only(
                                left:MediaQuery.of(context).size.height * 1/ 40,
                                right: MediaQuery.of(context).size.height * 1/ 40.0,
                                top:MediaQuery.of(context).size.height * 1/ 40
                              //  left:15.0,right: 15.0, top:15.0
                            ),
                            child: HomeDetails(
                              products: juice,
                            ),
                          ),
                          Padding(
                            padding:  EdgeInsets.only(left:MediaQuery.of(context).size.height * 1/ 40,
                                right: MediaQuery.of(context).size.height * 1/ 40.0,
                                top:MediaQuery.of(context).size.height * 1/ 40
                              //  left:15.0,right: 15.0, top:15.0
                            ),
                            child: HomeDetails(
                              products: bread,
                            ),
                          ),
                          Padding(
                            padding:  EdgeInsets.only(
                                left:MediaQuery.of(context).size.height * 1/ 40,
                                right: MediaQuery.of(context).size.height * 1/ 40.0,
                                top:MediaQuery.of(context).size.height * 1/ 40
                                //left:15.0,right: 15.0, top:15.0
                            ),
                            child: HomeDetails(
                              products: pizza,
                            ),
                          )
                        ]),
                  ),
                ),
              ],
            ),
          ],
        )
    );
  }

 }