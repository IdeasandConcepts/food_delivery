//
// import 'package:flutter/material.dart';
// import 'package:food_delivery/const.dart';
// import 'package:food_delivery/home/all_meals.dart';
// import 'package:get/get.dart';
// // class TabsConfig {
// //   static List<String> tabs = [];
// //   static int selectedTabIndex = 0;
// // }
//
// class MainWidget extends StatefulWidget {
//   const MainWidget({Key? key}) : super(key: key);
//
//   @override
//   State<MainWidget> createState() => MainWidgetState();
// }
//
// class MainWidgetState extends State<MainWidget> with TickerProviderStateMixin {
//   List<Map<String,dynamic>> tabs = [
//     {
//       "title":"all",
//       "list":<Map<String,dynamic>>[
//       {
//         "is_favorite":true,
//         "title": 'Big Mac'.tr,
//         "old_price":25.toDouble(),
//         "price":20.toDouble(),
//         "description":"Ever wondered what's on a Big Mac®? The McDonald's Big Mac® is a 100% beef burger with a taste like no other. The mouthwatering perfection starts with two 100% pure all beef patties and Big Mac® sauce sandwiched between a sesame seed bun. It’s topped off with pickles, crisp shredded lettuce, finely chopped onion, and a slice of American cheese. It contains no artificial flavors, preservatives, or added colors from artificial sources. Our pickle contains an artificial preservative, so skip it if you like.",
//         "image":"assets/images/image01.png",
//       },].toList()
//     },
//     {
//       "title":"Burger",
//       "list":<Map<String,dynamic>>[
//         {
//           "is_favorite":true,
//           "title": 'Big Mac'.tr,
//           "old_price":25.toDouble(),
//           "price":20.toDouble(),
//           "description":"Ever wondered what's on a Big Mac®? The McDonald's Big Mac® is a 100% beef burger with a taste like no other. The mouthwatering perfection starts with two 100% pure all beef patties and Big Mac® sauce sandwiched between a sesame seed bun. It’s topped off with pickles, crisp shredded lettuce, finely chopped onion, and a slice of American cheese. It contains no artificial flavors, preservatives, or added colors from artificial sources. Our pickle contains an artificial preservative, so skip it if you like.",
//           "image":"assets/images/image01.png",
//         },
//         {
//           "is_favorite":true,
//           "title": 'Quarter Pounder'.tr,
//           "old_price":20.toDouble(),
//           "price":18.toDouble(),
//           "description":"Quarter Pounder with Cheese 520 cal , Each Quarter Pounder with Cheese burger features a ¼ lb.* of 100% fresh beef that’s hot, deliciously juicy and cooked when you order. What comes on a Quarter Pounder? Each fresh beef burger is seasoned with just a pinch of salt and pepper, sizzled on a flat iron grill, then topped with slivered onions, tangy pickles and two slices of melty American cheese on a sesame seed bun. Our QPC® contains no artificial flavors, preservatives or added colors from artificial sources.^ Our pickle contains an artificial preservative, so skip it if you like. A Quarter Pounder with Cheese has 520 Calories.",
//           "image":"assets/images/image02.png",
//         },
//         {
//           "is_favorite":false,
//           "title": 'cheese Burger'.tr,
//           "old_price":20.toDouble(),
//           "price":18.toDouble(),
//           "description":"Enjoy the cheesy deliciousness of a McDonald’s Cheeseburger! Our simple, classic cheeseburger begins with a 100% pure beef burger patty seasoned with just a pinch of salt and pepper. The McDonald’s Cheeseburger is topped with a tangy pickle, chopped onions, ketchup, mustard, and a slice of melty American cheese. It contains no artificial flavors, preservatives or added colors from artificial sources.* Our pickle contains an artificial preservative,",
//           "image":"assets/images/image02.png",
//         },
//         {
//           "is_favorite":false,
//           "title": 'Sausage Burrito'.tr,
//           "old_price":20.toDouble(),
//           "price":18.toDouble(),
//           "description":"Start your day off with a loaded Egg and Sausage Burrito from the McDonald's breakfast menu McDonald's Breakfast Burrito recipe is loaded with fluffy scrambled egg, pork sausage, melty cheese, green chiles, and onion! It's wrapped in a soft tortilla, making it the perfect grab and go breakfast. There are 310 calories in a McDonald's Sausage breakfast burrito. Enjoy it as a snack or grab a Sausage Burrito Meal with a crispy golden Hash Browns and a small McCafé® Premium Roast Coffee",
//           "image":"assets/images/ausageBurrito.jpeg",
//         },
//         {
//           "is_favorite":true,
//           "title": 'Iced Coffee'.tr,
//           "old_price":12.toDouble(),
//           "price":10.toDouble(),
//           "description":"Enjoy a refreshingly cool Iced Coffee at McDonald’s! Our McCafé Iced Coffee recipe is made with 100% Arabica beans, cream, and your choice of flavored coffee syrup—Caramel, Hazelnut, French Vanilla, and Sugar-Free French Vanilla.* A fan of black coffee? Get it without the sugar or cream to refresh your mornings with a cool Black Iced Coffee.",
//           "image":"assets/images/IcedCoffeeGlass.jpeg",
//         },
//         {
//           "is_favorite":true,
//           "title": 'Sausage McGriddles®'.tr,
//           "old_price":10.toDouble(),
//           "price":10.toDouble(),
//           "description":"Enjoy a refreshingly cool Iced Coffee at McDonald’s! Our McCafé Iced Coffee recipe is made with 100% Arabica beans, cream, and your choice of flavored coffee syrup—Caramel, Hazelnut, French Vanilla, and Sugar-Free French Vanilla.* A fan of black coffee? Get it without the sugar or cream to refresh your mornings with a cool Black Iced Coffee.",
//           "image":"assets/images/Sausage McGriddles.jpeg",
//         },
//
//       ].toList(),
//     },
//     {
//       "title":"Bread",
//       "list":<Map<String, dynamic>>[
//     {
//     "is_favorite":true,
//     "title": 'Big Mac'.tr,
//     "old_price":25.toDouble(),
//     "price":20.toDouble(),
//     "description":"Ever wondered what's on a Big Mac®? The McDonald's Big Mac® is a 100% beef burger with a taste like no other. The mouthwatering perfection starts with two 100% pure all beef patties and Big Mac® sauce sandwiched between a sesame seed bun. It’s topped off with pickles, crisp shredded lettuce, finely chopped onion, and a slice of American cheese. It contains no artificial flavors, preservatives, or added colors from artificial sources. Our pickle contains an artificial preservative, so skip it if you like.",
//     "image":"assets/images/women.png",
//     },
//     {
//     "is_favorite":true,
//     "title": 'Quarter Pounder'.tr,
//     "old_price":20.toDouble(),
//     "price":18.toDouble(),
//     "description":"Quarter Pounder with Cheese 520 cal , Each Quarter Pounder with Cheese burger features a ¼ lb.* of 100% fresh beef that’s hot, deliciously juicy and cooked when you order. What comes on a Quarter Pounder? Each fresh beef burger is seasoned with just a pinch of salt and pepper, sizzled on a flat iron grill, then topped with slivered onions, tangy pickles and two slices of melty American cheese on a sesame seed bun. Our QPC® contains no artificial flavors, preservatives or added colors from artificial sources.^ Our pickle contains an artificial preservative, so skip it if you like. A Quarter Pounder with Cheese has 520 Calories.",
//     "image":"assets/images/image02.png",
//     },
//     {
//     "is_favorite":false,
//     "title": 'cheese Burger'.tr,
//     "old_price":20.toDouble(),
//     "price":18.toDouble(),
//     "description":"Enjoy the cheesy deliciousness of a McDonald’s Cheeseburger! Our simple, classic cheeseburger begins with a 100% pure beef burger patty seasoned with just a pinch of salt and pepper. The McDonald’s Cheeseburger is topped with a tangy pickle, chopped onions, ketchup, mustard, and a slice of melty American cheese. It contains no artificial flavors, preservatives or added colors from artificial sources.* Our pickle contains an artificial preservative,",
//     "image":"assets/images/women.png",
//     },
//     {
//     "is_favorite":false,
//     "title": 'Sausage Burrito'.tr,
//     "old_price":20.toDouble(),
//     "price":18.toDouble(),
//     "description":"Start your day off with a loaded Egg and Sausage Burrito from the McDonald's breakfast menu McDonald's Breakfast Burrito recipe is loaded with fluffy scrambled egg, pork sausage, melty cheese, green chiles, and onion! It's wrapped in a soft tortilla, making it the perfect grab and go breakfast. There are 310 calories in a McDonald's Sausage breakfast burrito. Enjoy it as a snack or grab a Sausage Burrito Meal with a crispy golden Hash Browns and a small McCafé® Premium Roast Coffee",
//     "image":"assets/images/women.png",
//     },
//     {
//     "is_favorite":true,
//     "title": 'Iced Coffee'.tr,
//     "old_price":12.toDouble(),
//     "price":10.toDouble(),
//     "description":"Enjoy a refreshingly cool Iced Coffee at McDonald’s! Our McCafé Iced Coffee recipe is made with 100% Arabica beans, cream, and your choice of flavored coffee syrup—Caramel, Hazelnut, French Vanilla, and Sugar-Free French Vanilla.* A fan of black coffee? Get it without the sugar or cream to refresh your mornings with a cool Black Iced Coffee.",
//     "image":"assets/images/women.png",
//     },
//     {
//     "is_favorite":true,
//     "title": 'Sausage McGriddles®'.tr,
//     "old_price":10.toDouble(),
//     "price":10.toDouble(),
//     "description":"Enjoy a refreshingly cool Iced Coffee at McDonald’s! Our McCafé Iced Coffee recipe is made with 100% Arabica beans, cream, and your choice of flavored coffee syrup—Caramel, Hazelnut, French Vanilla, and Sugar-Free French Vanilla.* A fan of black coffee? Get it without the sugar or cream to refresh your mornings with a cool Black Iced Coffee.",
//     "image":"assets/images/women.png",
//     },
// ].toList()
//     },
//
//
//   ];
//    int selectedTabIndex = 0;
//   late TabController controller;
//   @override
//   void initState() {
//     // TODO: implement initState
//     controller = TabController(
//       length:tabs.length,
//       vsync: this,
//       initialIndex: selectedTabIndex,
//     );
//     super.initState();
//   }
//
//   void updateTabs() {
//     try {
//       controller = TabController(
//         length: tabs.length,
//         vsync: this,
//         initialIndex: selectedTabIndex,
//       );
//       setState(() {
//         controller = TabController(
//           length: tabs.length,
//           vsync: this,
//           initialIndex: selectedTabIndex,
//         );
//       });
//     } catch (on) {
//       print(on); // TODO: rem
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: Column(
//           children: <Widget>[
//             Padding(
//               padding: const EdgeInsets.only(left:15.0,right: 15.0, top:15.0),
//
//               child: Container(
//                 // decoration: BoxDecoration(color: Colors.white),
//                 child: TabBar(
//
//                   // indicatorSize: ,
//                   // labelStyle:
//                     controller: controller,
//                     indicatorColor: kprimaryColor ,
//                     labelColor: Colors.black,
//                     // labelStyle:Border.all(),
//
//                     //                           BoxDecoration(
//                     // borderRadius:BorderRadius.circular(40),
//                     // border: Border.all(
//                     // color: kprimaryColor),
//                     unselectedLabelColor: Colors.grey.withOpacity(0.6),
//                     isScrollable: true,
//                     tabs: List.generate(
//                       tabs.length,
//                           (index) => Text("${tabs[index]["title"]}"),
//                     ),
//
//                 ),
//             //         ]),
//               ),
//             ),
//
//             SingleChildScrollView(
//               physics: BouncingScrollPhysics(),
//               child:    Container(
//                 height: MediaQuery.of(context).size.height * 1/ 2,
//                 child: TabBarView(
//
//                     controller: controller,
//                     children: List.generate(tabs.length,
//                           (index) => Padding(
//                             padding:  EdgeInsets.only(left:MediaQuery.of(context).size.height * 1/ 40,
//                                 right: MediaQuery.of(context).size.height * 1/ 40.0,
//                                 top:MediaQuery.of(context).size.height * 1/ 40
//                               // left:15.0,right: 15.0, top:15.0
//                             ),
//                             child: HomeDetails(
//                               products: tabs[index]["list"],
//                               category: tabs[index]["title"],
//                               branch: "",
//                             ),),
//                    ),
//               ),
//             ),
//             )
//             ],
//         ),
//       ),
//       // floatingActionButton: FloatingActionButton(
//       //   child: Icon(Icons.add),
//       //   onPressed: () {
//       //     tabs.add('New tab ${tabs.length}');
//       //     // setState(() {});
//       //     updateTabs();
//       //   },
//       // ),
//     );
//   }
// }