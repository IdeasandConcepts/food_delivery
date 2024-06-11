// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:get/get_state_manager/src/rx_flutter/rx_ticket_provider_mixin.dart';
// import 'package:get/get_state_manager/src/simple/get_controllers.dart';
//
//
// // class NavigationBarCont extends GetxController {
// //   var tabIndex =0;
// //   void changeTabIndex(int index){
// //     tabIndex=index;
// //     update();
// //   }
// // }
//
// class MyTabController extends GetxController {
//   final List<Tab> mytab = <Tab>[
//     Tab(text: 'Delivered'),
//     Tab(text: 'Processing'),
//     Tab(text: 'Cancelled'),
//   ];
//
//   RxInt initialIndex = 0.obs;
//   var currentIndex = 0.obs;
//
//    PageController pageController =PageController();
//
//   @override
//   void onInit() {
//     super.onInit();
//     pageController = PageController(
//         initialPage: initialIndex.value
//     );
//   }
// }