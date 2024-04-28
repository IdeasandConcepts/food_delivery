

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:food_delivery/const.dart';
import 'package:food_delivery/favorite/fav_conatiner.dart';
import 'package:get/get.dart';

class TabBarTest extends StatefulWidget {
  const TabBarTest({Key? key}) : super(key: key);

  @override
  State<TabBarTest> createState() => _TabBarTestState();
}
class _TabBarTestState extends State<TabBarTest> with TickerProviderStateMixin {

List <String> categories=[
  "All",
  "Burger",
  "Pizza",
  "bread",
  "other"
  ];




  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: categories.length, vsync: this);
    return Scaffold(
      //backgroundColor: kprimaryColor,
      body: Column(
        children: [
          Container(
            height: 50,
            color: kprimaryColor,
            //child: DynamicTabBar,
          ),
          Container(
            height: 500,
            color: Colors.blue,
//child: ,

                     //  TabBarContent( title: categories[1],length:categories.length);


  ),
        ],
      )
    );
  }
}
