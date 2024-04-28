import 'package:flutter/material.dart';
import 'package:food_delivery/const.dart';
import 'package:food_delivery/home/home.dart';
import 'package:food_delivery/main.dart';


class verificationPage extends StatefulWidget {
  const verificationPage({super.key});

  @override
  State<verificationPage> createState() => _verificationPageState();
}

class _verificationPageState extends State<verificationPage> {
  @override
  Widget build(BuildContext context) {
    // final currentWidth = MediaQuery.of(context).size.width-36.4285;
    // final currenheight = MediaQuery.of(context).size.height+128.571429;
    // //return const Placeholder();
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(14, 106, 0,0),
            child: Text("OTP",style:  TextStyle(fontSize: 34, fontWeight: FontWeight.w700, color: Color.fromRGBO(34, 34, 34, 1))),),


          Padding(
            padding: const EdgeInsets.fromLTRB(24, 108 ,24,0),
              child: Container(
                height: 64,
                width: 343,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.05),
                      spreadRadius: 0,
                      blurRadius: 8,
                      offset: Offset(0, 1), // changes position of shadow
                       ),
                         ],
                ),
                 child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      labelText: "OTP",
                      suffixIcon: Icon(Icons.close,color: Color.fromRGBO(240, 31, 14, 1),size: 19,),
                      filled: true,
                      fillColor:Color.fromRGBO(255, 255, 255, 1) ,
                      labelStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Color.fromRGBO(155, 155, 155, 1))) ,

                  ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.fromLTRB(24, 120 ,24,0),
              child: Container(
                height: 54,
                width: 343,
                decoration: BoxDecoration(
                  color: kprimaryColor,
                  borderRadius: BorderRadius.circular(25)
                ),
                child: TextButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(
                  builder:(context)=> HomeScreen()));
                }, 
                child: Text("Login", style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700, color: Color.fromRGBO(255, 255, 255, 1))),)
              ),
            ),


        ],
      ) ,
    );
  }
}