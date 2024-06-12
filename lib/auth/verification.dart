import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/auth/auth.dart';
import 'package:food_delivery/auth/auth_page.dart';
// import 'package:food_delivery/auth/auth.dart';
// import 'package:food_delivery/auth/auth_page.dart';
import 'package:food_delivery/const.dart';
import 'package:food_delivery/home/home.dart';
import 'package:food_delivery/main.dart';
import 'package:food_delivery/model/users.dart';
import 'package:get/get.dart';


class verificationPage extends StatefulWidget {
 final String rating;
  final int phoneNumber;
  final String name;
  final String address;
  final String promoCode;
  final String email,password;
  // "Ever wondered what's on a Big Mac®? The McDonald's Big Mac® is a 100% beef burger with a taste like no other.The mouthwatering perfection starts with two 100% pure",
  final String imageSrc;
  const verificationPage({
    super.key,
    required this.rating,
    required this.phoneNumber, required this.name,
    required this.address,
    required this.promoCode,
    required this.email,

    required this.imageSrc,
    required this.password});

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
                onPressed: () async{
                  createUser(
                    Customers(
                        phoneNumber:widget.phoneNumber, name: widget.name,
                        address: widget.address, promoCode: widget.promoCode,
                        email: widget.email, imageSrc:widget. imageSrc)
                  );
                  await
                  Auth().createUserWithEmailAndPassword(
                      email: widget.email,
                      password: widget.password
                  );
                  //createUserWithEmailAndPassword();
                  if(taskDone==true)
                  Get.to(()=>AndroidAuthPage());
                  // Navigator.push(context, MaterialPageRoute(
                  // builder:(context)=> HomeScreen()));
                }, 
                child: Text("Login", style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700, color: Color.fromRGBO(255, 255, 255, 1))),)
              ),
            ),


        ],
      ) ,
    );
  }
  bool taskDone=false;
  // create user
  Future createUser(Customers user) async {
    final taskData = FirebaseFirestore.instance.collection('Customers').doc();
    final json = user.toMap();
    await taskData.set(json);
    setState(() {
     // createUserWithEmailAndPassword();
      taskDone=true;
    });

    // Future<void> createUserWithEmailAndPassword() async{
    //   try{
    //     await Auth().createUserWithEmailAndPassword(
    //         email: widget.email,
    //         password: widget.password
    //     );
    //
    //   }on FirebaseAuthException  catch (e){
    //     setState(() {
    //       print(e);
    //      // errorMessage= e.message;
    //     });
    //   }
    // }

    //  final
  }
}