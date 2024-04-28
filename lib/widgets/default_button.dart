
import 'package:flutter/material.dart';
import 'package:food_delivery/const.dart';

class DefualtButton extends StatelessWidget {
  final String text;
  //final Function press;
  const DefualtButton({
    super.key,
    required this.text,
    //required this.press
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
          color: kprimaryColor,
          borderRadius: BorderRadius.circular(25)),
      width: double.infinity,
      height: 50,
      child: Center(
        child: Text(
          text,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
            color: Colors.white,
          ),
        ),
      ),
      // ),
    );
  }
}
