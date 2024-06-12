
import 'package:flutter/material.dart';

class SectionTitle extends StatelessWidget {
  const SectionTitle({
    Key? key, 

    required this.text1, 
    required this.text2,
     required this.press,
  }) : super(key: key);

  final String text1,text2  ;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.symmetric(horizontal: 20),
    child: Row(
     mainAxisAlignment: MainAxisAlignment.spaceBetween,
     children: [
       Text(
        text1,
       style: TextStyle(fontSize: 18,
       color: Colors.black),
       ),
       InkWell(
        onTap: press,
         child: Text(
          text2,
         style: TextStyle(fontSize: 18,
         color: Colors.black38,
         decoration: TextDecoration.underline,
         ),
         ),
       ),
   
     ],
    ),
    );
  }
}
