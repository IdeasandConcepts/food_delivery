import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_ticket_provider_mixin.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';


// class NavigationBarCont extends GetxController  {
//   var tabIndex =0;
//   void changeTabIndex(int index){
//     tabIndex=index;
//     update();
//   }
// }

class MyTabController extends GetxController with GetTickerProviderStateMixin{
  final List<Tab> mytab = <Tab>[
    Tab(text: '   Delivered   '),
    Tab(text: '   Processing  '),
    Tab(text: '   Cancelled   '),
  ];

  RxInt initialIndex = 0.obs;
  var currentIndex = 0.obs;
  late TabController controller;


  @override
  void onInit() {
    super.onInit();

    controller = TabController(
        length: mytab.length, vsync: this, initialIndex: initialIndex.value);

  }

  @override
  void onClose() {
    super.onClose();
    controller.dispose();
  }

}