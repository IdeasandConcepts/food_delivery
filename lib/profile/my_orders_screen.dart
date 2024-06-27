import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/model/orders.dart';
import 'package:food_delivery/profile/order_tracking.dart';
import 'package:get/get.dart';
import 'package:food_delivery/profile/order_details.dart';
import 'package:food_delivery/themes/outline_button_theme.dart';
import 'package:food_delivery/themes/text_theme.dart';
import 'package:food_delivery/utils/colors.dart';
import 'package:food_delivery/utils/sizes.dart';
import 'package:intl/intl.dart';

class MyOrders extends StatefulWidget {
  final String user;
  final String profileImage;
  MyOrders({super.key, required this.user, required this.profileImage});

  @override
  State<MyOrders> createState() => _MyOrdersState();
}

class _MyOrdersState extends State<MyOrders> with TickerProviderStateMixin {
  //final  MyTabController  tabController = Get.put(MyTabController());
  List<String> status = ['Processing', 'Delivered', 'Cancelled'];

  @override
  Widget build(BuildContext context) {
    TabController controller = TabController(length: 3, vsync: this);
    double width = MediaQuery.sizeOf(context).width;

    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SizedBox(
                height: TSizes.spaceBtwItems,
              ),
              SizedBox(
                height: 50,
                child: TabBar(
                  controller: controller,
                  labelColor: Theme.of(context).primaryColor,
                  unselectedLabelColor: Theme.of(context).hintColor,
                  indicator: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: Theme.of(context).primaryColor,
                        width: 2,
                      ),
                    ),
                  ),
                  tabs: List.generate(
                    3,
                    (index) => Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                            height: 50,
                            width: width / 3.5,
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.circular(TSizes.buttonRadius),
                              color: TColors.darkerGrey,
                            ),
                            child: Center(
                              child: Text(status[index],
                                  style: TextStyle(color: TColors.white)),
                            ))),
                  ),
                ),
              ),

              Expanded(
                child: SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  child: Container(
                      padding: EdgeInsets.only(bottom: 100),
                      height: MediaQuery.of(context).size.height / 1,
                      child: TabBarView(controller: controller, children:
                          // List.generate(status.length, (index) =>
                          [
                        StreamBuilder<List<Orders>>(
                            stream: readUserOrderList("New Order"),
                            builder: (context, snapshot) {
                              if (snapshot.hasError) {
                                print(snapshot.error);
                                return Text(
                                    ' Error ya Ahmed :: ${snapshot.error}');
                              } else if (snapshot.hasData) {
                                final task = snapshot.data!;
                                return ListView(
                                  shrinkWrap: true,
                                  children:
                                      task.map(getProccingOrders).toList(),
                                );
                              } else {
                                return Center(
                                  child: CircularProgressIndicator(),
                                );
                              }
                            }),
                        StreamBuilder<List<Orders>>(
                            stream: readUserOrderList("Delivered"),
                            builder: (context, snapshot) {
                              if (snapshot.hasError) {
                                return Text(
                                    ' Error ya Ahmed :: ${snapshot.error}');
                              } else if (snapshot.hasData) {
                                final task = snapshot.data!;
                                return ListView(
                                  shrinkWrap: true,
                                  children: task.map(getOrderCard).toList(),
                                );
                              } else {
                                return Center(
                                  child: CircularProgressIndicator(),
                                );
                              }
                            }),
                        StreamBuilder<List<Orders>>(
                            stream: readUserOrderList("cancelled"),
                            builder: (context, snapshot) {
                              if (snapshot.hasError) {
                                return Text(
                                    ' Error ya Ahmed :: ${snapshot.error}');
                              } else if (snapshot.hasData) {
                                final task = snapshot.data!;
                                return ListView(
                                  shrinkWrap: true,
                                  children: task.map(getOrderCard).toList(),
                                );
                              } else {
                                return Center(
                                  child: CircularProgressIndicator(),
                                );
                              }
                            }),
                        //
                      ])
                      //    ]
                      ),
                ),
              ),
              // )
            ],
          ),
        ),
      ),
    );
  }

  Widget getOrderCard(Orders userOrdersList) {
    return InkWell(
      onTap: () {
        Get.to(() => OrderDetails(
              userOrdersList: userOrdersList,
            ));
      },
      child: Card(
        color: TColors.white,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(TSizes.cardRadiusMd)),
        child: SizedBox(
          height: 180,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Order N0" + "\t" + '${userOrdersList.orderNumber}',
                      style: TTextTheme.lightTextThem.bodyLarge,
                    ),
                    Text(
                      '${userOrdersList.uDate}',
                      style: TTextTheme.lightTextThem.bodySmall,
                    ),
                  ],
                ),
                SizedBox(
                  height: TSizes.spaceBtwItems,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    RichText(
                        text: TextSpan(
                            text: "quantity:" + "\t",
                            style: TTextTheme.lightTextThem.bodySmall,
                            children: [
                          TextSpan(
                              text: "${userOrdersList.requests.length}",
                              style: TTextTheme.lightTextThem.bodyLarge)
                        ])),
                    RichText(
                        text: TextSpan(
                            text: "Total Amount:",
                            style: TTextTheme.lightTextThem.bodySmall,
                            children: [
                          TextSpan(
                              text:
                                  "${userOrdersList.uTotalPrice}" + "\t" + "\$",
                              style: TTextTheme.lightTextThem.bodyLarge)
                        ])),
                  ],
                ),
                SizedBox(
                  height: TSizes.spaceBtwItems,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    OutlinedButton(
                      onPressed: () {
                        Get.to(() => OrderDetails(
                              userOrdersList: userOrdersList,
                            ));
                      },
                      child: Text(
                        "Details",
                        style: TTextTheme.lightTextThem.labelLarge,
                      ),
                      style: TOutLineButtonTheme.lightOutlinebuttonTheme.style,
                    ),
                    Text(
                      userOrdersList.status,
                      style: TextStyle(color: TColors.success),
                    )
                  ],
                ),
                SizedBox(
                  height: TSizes.spaceBtwItems,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget getProccingOrders(Orders userOrdersList) {
    return InkWell(
      onTap: () {
        Get.to(() => OrderTracking(
              acceptingTime:
                  (DateFormat('kk:mm').format(DateTime.now()).toString()),
              // userName: userOrdersList.oUser,
              order: userOrdersList,
            ));
        // Get.to(()=>OrderDetails(
        //   userOrdersList:userOrdersList,
        //
        // ));
      },
      child: Card(
        color: TColors.white,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(TSizes.cardRadiusMd)),
        child: SizedBox(
          height: 180,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Order N0" + "\t" + '${userOrdersList.orderNumber}',
                      style: TTextTheme.lightTextThem.bodyLarge,
                    ),
                    Text(
                      '${userOrdersList.uDate}',
                      style: TTextTheme.lightTextThem.bodySmall,
                    ),
                  ],
                ),
                SizedBox(
                  height: TSizes.spaceBtwItems,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    RichText(
                        text: TextSpan(
                            text: "quantity:" + "\t",
                            style: TTextTheme.lightTextThem.bodySmall,
                            children: [
                          TextSpan(
                              text: "${userOrdersList.requests.length}",
                              style: TTextTheme.lightTextThem.bodyLarge)
                        ])),
                    RichText(
                        text: TextSpan(
                            text: "Total Amount:",
                            style: TTextTheme.lightTextThem.bodySmall,
                            children: [
                          TextSpan(
                              text:
                                  "${userOrdersList.uTotalPrice}" + "\t" + "\$",
                              style: TTextTheme.lightTextThem.bodyLarge)
                        ])),
                  ],
                ),
                SizedBox(
                  height: TSizes.spaceBtwItems,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    OutlinedButton(
                      onPressed: () {
                        Get.to(() => OrderDetails(
                              userOrdersList: userOrdersList,
                            ));
                      },
                      child: Text(
                        "Details",
                        style: TTextTheme.lightTextThem.labelLarge,
                      ),
                      style: TOutLineButtonTheme.lightOutlinebuttonTheme.style,
                    ),
                    Text(
                      userOrdersList.status,
                      style: TextStyle(color: TColors.success),
                    )
                  ],
                ),
                SizedBox(
                  height: TSizes.spaceBtwItems,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void animatedto(int i) {
    // //tabController.currentIndex= i.obs;
    // //tabController.pageController.animateToPage(tabController.currentIndex.value,
    //     duration: Duration(milliseconds: 300),
    //     curve: Curves.ease);
  }

  Stream<List<Orders>> readUserOrderList(String status) =>
      FirebaseFirestore.instance
          .collection('Orders')
          .where("status", isEqualTo: status)
          // .where("branch", isEqualTo:widget.branch)
          .snapshots()
          .map((snapshot) {
        return snapshot.docs.map((doc) {
          return Orders.fromMap(doc.data());
        }).toList();
      });
}
