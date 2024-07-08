import 'dart:io';

import 'package:circle_nav_bar/circle_nav_bar.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_delivery/favorite/favorite_screen.dart';
import 'package:food_delivery/widgets/drower.dart';
import 'package:get/get.dart';
import 'package:food_delivery/chart/myCart.dart';
import 'package:food_delivery/const.dart';
import 'package:food_delivery/home/details.dart';
import 'package:food_delivery/home/home_page.dart';
import 'package:food_delivery/profile/myProfile.dart';
import 'package:food_delivery/profile/myprofile_screen.dart';
import 'package:url_launcher/url_launcher.dart';

import '../model/users.dart';

class HomeScreen extends StatefulWidget {
  final String user;
  final String profileImage;
  // final int phoneNumber;
  const HomeScreen({
    Key? key,
    required this.user,
    required this.profileImage,
    // required this.phoneNumber
  }) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  int _tabIndex = 0;

  int get tabIndex => _tabIndex;

  set tabIndex(int v) {
    _tabIndex = v;
    setState(() {});
  }

  // final Rxn<int> selected = Rxn<int>();
  late PageController pageController = PageController();

  @override
  void initState() {
    super.initState();
    pageController = PageController(initialPage: _tabIndex);
  }

  //final controller=Get.put(NavigationBarController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      // appBar: AppBar(
      //   backgroundColor: Colors.white,
      //   shadowColor: Colors.transparent,
      //   title: Row(
      //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //     children: [
      //       Padding(
      //         padding: const EdgeInsets.only(top:10),
      //         child: Icon(
      //           Icons.menu,
      //           color: Colors.black,
      //           size: 25,
      //             //fontFamily: PdfGoogleFonts.alefBold(),
      //         ),
      //       ),
      //       // SizedBox(
      //       //     width:5
      //       // ),
      //
      //
      //       ClipOval(
      //         clipBehavior: Clip.hardEdge,
      //         child: Material(
      //           //color: Colors.transparent,
      //           // child: Image.network(
      //           //imageAssets,
      //           // File
      //           //   File(),
      //           //  width:70,
      //           //double.maxFinite-400,
      //           //  height: 50,
      //           //  width: 50,
      //           // fit: BoxFit.cover,
      //           child: Ink.image(
      //             image: AssetImage(
      //               "assets/images/women.png"),
      //               fit: BoxFit.cover,
      //             height: 40,
      //             width: 40,
      //             // ),
      //           ),
      //         ),
      //       )
      //     ],
      //   ),
      //   centerTitle: true,
      // ),
      body: PageView(
        controller: pageController,
        onPageChanged: (v) {
          tabIndex = v;
        },
        children: [
          HomePage(
            //  phoneNumber: widget.phoneNumber,
            user: widget.user,
            profileImage: widget.profileImage,
          ),
          //Container(),
         // FavoriteScreen(user: widget.user),
          // Container(width: double.infinity,
          //     height: double.infinity,
          //     color: Colors.green),
          //Container(width: double.infinity, height: double.infinity, color: Colors.red),
          MyCartScreen(
            comeFrom: "Home",
            profileImage: widget.profileImage,
            //phoneNumber: widget.phoneNumber,
            user: widget.user,
          ),
          //     InkWell(
          //       child:
          //       Container(width: double.infinity, height: double.infinity, color: Colors.green),
          // onTap: (){
          //   openWhatsapp(context: context);
          //       }
          //     ),

          profile(
            user: widget.user,
            profileImage: widget.profileImage,
          )
          //Container(width: double.infinity, height: double.infinity, color: Colors.blue),
        ],
      ),
      bottomNavigationBar: CircleNavBar(
        circleColor: Colors.white,
        //circleShadowColor: kprimaryColor,
        activeIcons: [
          Icon(
            Icons.home,
            color: kprimaryColor,
          ),

          // Icon(
          //   Icons.favorite,
          //   color: kprimaryColor,
          // ),
          Icon(
            Icons.shopping_cart,
            color: kprimaryColor,
          ),
          //Icon(Icons.comment, color: kprimaryColor),
          Icon(
            Icons.person,
            color: kprimaryColor,
          ),
        ],
        inactiveIcons: const [
          Icon(
            Icons.home,
            color: kprimaryColor,
          ),

          // Icon(
          //   Icons.favorite,
          //   color: kprimaryColor,
          // ),
          Icon(
            Icons.shopping_cart,
            color: kprimaryColor,
          ),
          // Icon(Icons.comment, color: kprimaryColor),
          Icon(
            Icons.person,
            color: kprimaryColor,
          ),
        ],

        color: Colors.black,
        circleShadowColor: kprimaryColor,
        height: 60,
        circleWidth: 60,

        activeIndex: tabIndex,
        onTap: (index) {
          tabIndex = index;
          pageController.jumpToPage(tabIndex);
        },
        // padding: const EdgeInsets.only(top: 5),

        shadowColor: Colors.white,
        elevation: 10,
      ),
    );
  }

  openWhatsapp({required BuildContext context}) async {
    String whatsapp = '+92****';
    String whatsappURlAndroid = "whatsapp://send?phone=$whatsapp&text=hello";
    String whatsappURLIos =
        "https://wa.me/$whatsapp?text=${Uri.parse("hello")}";
    if (Platform.isIOS) {
      if (await canLaunchUrl(Uri.parse(whatsappURLIos))) {
        await launchUrl(Uri.parse(whatsappURLIos));
      } else {
        //  _showToast(text: "whatsapp no installed");
      }
    } else {
      if (await canLaunchUrl(Uri.parse(whatsappURlAndroid))) {
        await launchUrl(Uri.parse(whatsappURlAndroid));
      } else {
        // _showToast(text: "whatsapp no installed");
      }
    }
  }
}
