

import 'package:flutter/material.dart';
import 'package:food_delivery/const.dart';

class SizesTest extends StatefulWidget {
  const SizesTest({Key? key}) : super(key: key);

  @override
  State<SizesTest> createState() => _SizesTestState();
}

class _SizesTestState extends State<SizesTest> {
  double fullHeight=0.0,fullWidth=0.0;

  @override
  Widget build(BuildContext context) {
    fullHeight= MediaQuery.of(context).size.height * 1/3;
     fullWidth= MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: MediaQuery.of(context).size.height * 1 / 30,
          child: Container(
            color: Colors.blue,
          ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 1 / 2.5,
            child: GestureDetector(
              onTap: (){
                print(fullHeight);
                print(fullWidth);
              },
              child: Container(
                color: kprimaryColor,
              ),
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 1 / 30,
            child: Padding(
              padding: EdgeInsets.only(
                  left:
                  //15
             MediaQuery.of(context).size.height * 1 / 30,
right:
MediaQuery.of(context).size.height * 1 / 40,
              ),
              child: Container(
                color: Colors.red,
              ),
            ),
          )
        ],
      ),
    );
  }
}
