import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_delivery/home/details_screen.dart';
import 'package:food_delivery/model/model.dart';
import 'package:food_delivery/model/products.dart';
import 'package:food_delivery/model/users.dart';
import 'package:get/get.dart';
import 'package:food_delivery/const.dart';

class DetailsScreenOne extends StatefulWidget {
  final String user;
  final String profileImage;
  // final int phoneNumber;
  final Products product;
  final String productSize;
  final String selectedComponent;
  const DetailsScreenOne({
    Key? key,
    required this.product,
    required this.user,
    //required this.phoneNumber,
    required this.productSize,
    required this.selectedComponent,
    required this.profileImage,
  }) : super(key: key);

  @override
  State<DetailsScreenOne> createState() => _DetailsScreenOneState();
}

class _DetailsScreenOneState extends State<DetailsScreenOne> {
  List<bool> componentItemsChecked = [];
// bool
//     xsSizeItemsChecked =false,
//     sSizeItemsChecked =false,
//     mSizeItemsChecked =false,
//     lSizeItemsChecked =false,
//     xlSizeItemsChecked =false;

  List<String> componentItems = [];
  // String selectedSize="";
  String selectedComponent = "";
  @override
  void initState() {
// TODO: implement initState
    // setState(() {
    for (int i = 0; i < component.length; i++) {
      componentItemsChecked.add(false);
      componentItems.add(component[i]["item"]);
    }
    // });
    super.initState();
  }
  // @override
  // void didChangeDependencies() {
  //   // TODO: implement didChangeDependencies
  //   super.didChangeDependencies();
  //    dependOnInheritedWidgetOfExactType();
  // }

//   @override
//   void dispose() {
// // TODO: implement dispose
//     super.dispose();

//   }
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

  TextEditingController detailsController = TextEditingController();
  String search = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:

          // title:"Component",
          //   titleStyle:TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),
          //   content:
          Container(
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.height * 1 / 40,
                  right: MediaQuery.of(context).size.height * 1 / 40.0,
                  top: MediaQuery.of(context).size.height * 1 / 20),
              child: Text(
                "Components",
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.height * 1 / 40,
                  right: MediaQuery.of(context).size.height * 1 / 40.0,
                  top: MediaQuery.of(context).size.height * 1 / 60),
              child: Container(
                height: MediaQuery.of(context).size.height * 1 / 16.0,

                // 45,
                decoration: BoxDecoration(
                    border: Border.all(color: kprimaryColor),
                    borderRadius: BorderRadius.circular(20)),
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
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.grey,
                    ),

                    // filled: true,
                    // labelText: 'id',
                    labelStyle: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                    ),
                    hintText: 'Search'.tr,
                    //labelText: 'Search'.tr,
                  ),
                  onSaved: (newValue) => search = newValue!,
                  onChanged: (value) => search = value,
                ),
              ),
            ),
            Container(
              // width: MediaQuery.of(context).size.width - 50,
              // height: MediaQuery.of(context).size.height - 245,
              child: ListView.builder(
                  shrinkWrap: true,
                  // physics: NeverScrollableScrollPhysics(),
                  itemCount: component.length,
                  itemBuilder: (context, index) {
                    return Padding(
                        padding: EdgeInsets.only(
                            left: MediaQuery.of(context).size.height * 1 / 30,
                            right: MediaQuery.of(context).size.height * 1 / 30,
                            top: MediaQuery.of(context).size.height * 1 / 110),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          //crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              component[index]["item"],
                              style: TextStyle(
                                  color: (componentItemsChecked[index])
                                      ? kprimaryColor
                                      : Colors.black),
                            ),
                            Text(
                              "${component[index]["calories"]}",
                              style: TextStyle(
                                  color: (componentItemsChecked[index])
                                      ? kprimaryColor
                                      : Colors.black),
                            ),
                            Checkbox(
                              checkColor: Colors.white,
                              activeColor:
                                  (componentItemsChecked[index] == true)
                                      ? kprimaryColor
                                      : Colors.white,
                              value: componentItemsChecked[index],
                              shape: const RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5.0))),
                              onChanged: (bool? value) {
                                setState(() {
                                  componentItemsChecked[index] = value!;
                                  selectedComponent = selectedComponent +
                                      "," +
                                      component[index]["item"];
                                });
                              },
                            ),
                          ],
                        ));
                  }),
            ),
            // Padding(
            //   padding: EdgeInsets.only(left: 10, right: 10, top: 10),
            // ),
            SizedBox(height: 10.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                    padding: EdgeInsets.only(left: 10, right: 10),
                    child: GestureDetector(
                        onTap: () {
                          setState(() {
                            for (int i = 0;
                                i < componentItemsChecked.length;
                                i++) {
                              componentItemsChecked[i] = false;
                              selectedComponent = "";
                            }
                          });
                          // Get.back();
                        },
                        child: Container(
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              color: kprimaryColor,
                              borderRadius: BorderRadius.circular(25)),
                          width: 120,
                          height: 50,
                          child: Center(
                            child: Text(
                              "Discard",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ) // DefualtButton(text: "Apply",)),
                        )),
                Padding(
                    padding: EdgeInsets.only(left: 10, right: 10),
                    child: GestureDetector(
                        onTap: () {
                          //Get.back();
                          // for(int i=0;i<componentItems.length;i++)
                          // print(componentItems[i]);
                          Get.to(() => DetailsScreen(
                              profileImage: widget.profileImage,
                              product: widget.product,
                              user: widget.user,
                              //phoneNumber:widget. phoneNumber,
                              productSize: widget.productSize,
                              selectedComponent: selectedComponent));
                        },
                        child: Container(
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              color: kprimaryColor,
                              borderRadius: BorderRadius.circular(25)),
                          width: 120,
                          height: 50,
                          child: Center(
                            child: Text(
                              "Apply",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ) // DefualtButton(text: "Apply",)),
                        )),
              ],
            ),
            Spacer()
          ],
        ),
      ),
    );
  }
}
