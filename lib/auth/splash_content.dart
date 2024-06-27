import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../const.dart';




class AndroidSplashContent extends StatelessWidget {
  final String text, image;

  const AndroidSplashContent({super.key, required this.text, required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 240,
      child: Column(
          children: <Widget>[
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
          text,
          textAlign: TextAlign.center,
        ),
        Spacer(flex: 2),
        Image.network(
          image,
          height: 256,
          width: 235,
        ),
      ]),
    );
  }
}
