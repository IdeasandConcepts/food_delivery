



import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:food_delivery/auth/login.dart';
import 'package:food_delivery/const.dart';
import 'package:food_delivery/auth/auth_page.dart';
import 'package:food_delivery/auth/indicator.dart';
import 'package:food_delivery/widgets/default_button.dart';

class AndroidSplashBody extends StatefulWidget {
  @override
  _AndroidSplashBodyState createState() => _AndroidSplashBodyState();
}

class _AndroidSplashBodyState extends State<AndroidSplashBody> with TickerProviderStateMixin {
  //PageController _pageController = PageController();
  var _sellectedIndex = 0;
  bool startAnimation = false;
  double screenHieght = 0.0;
  double screenWidth = 0.0;
  List<Map<String, dynamic>> splasData = [
      {
  "text": 'welcome to Ideas and concepts group'.tr,
  "image":
  "https://firebasestorage.googleapis.com/v0/b/idias-concspts.appspot.com/o/profile_images%2Fmainlogo.png?alt=media&token=d8fa469a-e839-48e1-91a4-d112764b7ea7",
},
];
  // @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  //   WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
  //     // setState(() {
  //     startAnimation = true;
  //     // });
  //   });
  // }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // screenHieght = MediaQuery
    //     .of(context)
    //     .size
    //     .height;
    // screenWidth = MediaQuery
    //     .of(context)
    //     .size
    //     .width;
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[

          Container(
            height: 450,
            // width: 60,
            // flex: 3,
            child: PageView.builder(
              //controller: PageController(viewportFraction: 0.7),
                onPageChanged: (value) {
                   setState(() {
                  _sellectedIndex = value;
                  // i=value;
                  //   _pageController = this;
                     });
                },
                itemCount: splasData.length,
                itemBuilder: (context, index) {
                  //var banner = splasData.length;
                  //   var _scale = _sellectedIndex == index ? 1.0 : 0.0;

                  return Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                       // SizedBox(height: 80,),
                        // Spacer(),
                        Text(
                          'Starting Text'.tr,
                          style: TextStyle(
                            fontSize: 36,
                            color: kprimaryColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          splasData[index]["text"],
                          textAlign: TextAlign.center,
                        ),

                        SizedBox(height: 20,),
                        Image.network(
                          splasData[index]["image"],
                          height: 200,
                          width: 235,
                        ),

                        SizedBox(height: 40,),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              ...List.generate(
                                  splasData.length,
                                      (index) =>
                                      Indicator(
                                          isActive:
                                          _sellectedIndex == index
                                              ? true
                                              : false
                                        // isActive: isActive
                                      )
                                // buildDot(index: index),
                              ),
                            ]),
                      ]);
                }
              // SplashContent(
              //   text: splasData[index]["text"],
              // image: splasData[index]["image"],
              // ),
            ),
          ),
          // Container(
          //   //height: 20,
          //   // flex: 2,
          //     child: Padding(
          //       padding: EdgeInsets.only(top: 20),
          //       child: Column(
          //           children: <Widget>[
          //             // Spacer(),
          //
          //           ]),
          //     )
          // ),
         // SizedBox(height: 200,),
          InkWell(
            onTap: () {
              // startAnimation=true;
              // _increament();
              // if(i==4)
              {
                Get.offAll(() => AndroidAuthPage(),
                );
              }
            },
            child: Padding(
              padding: const EdgeInsets.only(left: 15.0, right: 15.0),
              child: DefualtButton(text: 'Start'.tr),
            ),
          ),
          //Spacer(),
        ],
      ),
      //       ),
      //     ),
      //   ],
      // ),
    );
  }
}
