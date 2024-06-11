import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_delivery/const.dart';
import 'package:food_delivery/delivery/request_order_card_page.dart';
import 'package:get/get.dart';

class HomeOrderScreen extends StatefulWidget {
  final String userName;
  const HomeOrderScreen({super.key, required this.userName});

  @override
  State<HomeOrderScreen> createState() => _HomeOrderScreenState();
}

class _HomeOrderScreenState extends State<HomeOrderScreen>
    with TickerProviderStateMixin {
  final List tapsList = [
    "New",
    "Processing",
    "Completed",
  ];
  final List statusList = [
    "New Order",
    "Accept",
    "Completed",
  ];

  @override
  Widget build(BuildContext context) {
    TabController controller = TabController(length: 3, vsync: this);
    bool isOnline = true;
    return Scaffold(
      body: SafeArea(
        child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.w).copyWith(top: 20.h),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //GetBuilder<MyPageController>(
                  // builder: (myPageController) => Column(children: [
                  SizedBox(height: 24.h),
                  Padding(
                    padding: EdgeInsets.only(left: 20, right: 20),
                    child: Text(
                      "Orders".tr,
                      style: TextStyle(
                        color: fontColor1,
                        fontWeight: FontWeight.w700,
                        fontSize: 34.sp,
                      ),
                    ),
                  ),
                  SizedBox(height: 25.h),

                  TabBar(

                      // indicatorSize: ,
                      // labelStyle:
                      controller: controller,
                      indicatorColor: kprimaryColor,
                      labelColor: Colors.black,
                      // unselectedLabelStyle: Colors.grey.withOpacity(0.6),
                      // labelStyle:Border.all(),

                      //                           BoxDecoration(
                      // borderRadius:BorderRadius.circular(40),
                      // border: Border.all(
                      // color: kprimaryColor),
                      unselectedLabelColor: Colors.grey.withOpacity(0.6),
                      isScrollable: false,
                      tabs: List.generate(
                        tapsList.length,
                        (index) => Container(
                          // decoration:BoxDecoration(
                          //     borderRadius:BorderRadius.circular(40),
                          //     border: Border.all(
                          //         color: kprimaryColor)
                          // ),
                          child: Text(
                            tapsList[index],
                            style: TextStyle(
                                fontSize: 15,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      )
                      //                    ]
                      ),
                  //// taps list
                  // SizedBox(
                  //   height: 40.h,
                  //   child: ListView.separated(
                  //       separatorBuilder: (context, index) => SizedBox(width: 20.w),
                  //       scrollDirection: Axis.horizontal,
                  //       itemCount: myPageController.tapsList.length,
                  //       itemBuilder: (context, index) => InkWell(
                  //             borderRadius: BorderRadius.circular(15.r),
                  //             onTap: () {
                  //               myPageController.goTopage(index);
                  //             },
                  //             child: AnimatedContainer(
                  //               duration: const Duration(milliseconds: 900),
                  //               width: 100.w,
                  //               alignment: Alignment.center,
                  //               decoration: BoxDecoration(
                  //                   // border: Border.all(
                  //                   //   color: AppColor.mainColor,
                  //                   //   style: BorderStyle.solid,
                  //                   //   width: 1.5.w,
                  //                   // ),
                  //                   color: myPageController.pageNum == index
                  //                       ? mainColor
                  //                       : null,
                  //                   borderRadius: BorderRadius.circular(15.r)),
                  //               child: Text(
                  //                 myPageController.tapsList[index],
                  //                 textAlign: TextAlign.center,
                  //                 style: TextStyle(
                  //                     color: myPageController.pageNum == index
                  //                         ? fontColor3
                  //                         :fontColor1,
                  //                     fontSize: 16.sp,
                  //                     fontWeight: FontWeight.w500),
                  //               ),
                  //             ),
                  //           )),
                  // ),
                  SizedBox(height: 24.h),
                  //// page view
                  SingleChildScrollView(
                    physics: BouncingScrollPhysics(),
                    child: Container(
                      height: MediaQuery.of(context).size.height * 1 / 2.1,
                      child: TabBarView(
                          controller: controller,
                          children: List.generate(
                            statusList.length,
                            (index) => RequestOrderCardPage(
                              status: statusList[index],
                              userName: widget.userName,
                            ),
                            //
                            // )
                            //
                            // )
                            //
                            // ),
                            //               ProcessedOrderCardPage(
                            //                 status: "",
                            //                 userName: widget.userName,
                            //               ),
                            //               /// Completed page viwe
                            //               CompletedOrderCardPage(
                            //                 userName: widget.userName,
                            //                 // itemCount: 2,
                            //                 // onTap: () {
                            //                 //  // Get.to(() => const OrderDetailscreen());
                            //                 // },
                            //                 // onTapDelete: () {},
                            //               ),
                            //               ]
                            // )

                            /// Processed page viwe

                            //  ],
                            //   ),
                            // )
                            //   ]
                          )),
                    ),
//]
                  ),
                ])),
      ),
      bottomNavigationBar: Container(
        height: 53.h,
        decoration: BoxDecoration(
            color: mainColor,
            borderRadius: BorderRadius.vertical(top: Radius.circular(30.r))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "You're now online",
              style: TextStyle(
                  color: fontColor3,
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w700),
            ),
            SizedBox(width: 23.w),
            StatefulBuilder(builder: (context, setState) {
              return Switch(
                value: isOnline,
                inactiveThumbColor: Colors.grey,
                activeColor: Colors.green,
                activeTrackColor: Colors.white,
                onChanged: (value) {
                  isOnline = value;
                  setState(() {});
                },
              );
            })
          ],
        ),
      ),
    );
  }
}
