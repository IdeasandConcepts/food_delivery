import 'package:flutter/material.dart';
import 'package:food_delivery/auth/login.dart';
import 'package:food_delivery/auth/verification.dart';
import 'package:food_delivery/const.dart';
import 'package:get/get.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}
String password="";
String rating="";
 int phoneNumber=0;
 String name="";
 String address="";
 String promoCode="";
 String email="";
// "Ever wondered what's on a Big Mac®? The McDonald's Big Mac® is a 100% beef burger with a taste like no other.The mouthwatering perfection starts with two 100% pure",
 String imageSrc='';

 TextEditingController ratingController =TextEditingController(),
 passWordController=TextEditingController(),
  phoneNumberController =TextEditingController(),
  nameController =TextEditingController(),
  addressController =TextEditingController(),
  promoCodeController =TextEditingController(),
  emailController =TextEditingController();
// "Ever wondered what's on a Big Mac®? The McDonald's Big Mac® is a 100% beef burger with a taste like no other.The mouthwatering perfection starts with two 100% pure",
  //imageSrc;

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    // final currentWidth = MediaQuery.of(context).size.width-36.4285;
    // final currenheight = MediaQuery.of(context).size.height+128.571429;
    //return const Placeholder();
    return Scaffold(

      // appBar: AppBar(
      //   backgroundColor: Color.fromRGBO(249, 249, 249, 1),
      //   elevation: 0,
      //   leading: IconButton(
      //     onPressed: (){
      //       Navigator.push(context, MaterialPageRoute(
      //       builder:(context)=> LoginPage()));
      //       },
      //     icon: Icon(Icons.chevron_left),color: Colors.black,iconSize: 24,),
      // ),

      body: SingleChildScrollView(
        
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [


            Padding(
              padding: const EdgeInsets.only( top:80),
              child: Align(
                alignment: Alignment.topCenter,
                child: Text("Sign up", style:  TextStyle(fontSize: 50, fontWeight: FontWeight.w700
                )),
              ),
            ),


            Padding(
              padding: const EdgeInsets.fromLTRB(24, 80 ,24,0),
              child: TextField(
                controller: nameController,
                 decoration: InputDecoration(
                   border: InputBorder.none,
                   labelText: "Name",
                   suffixIcon: Icon(Icons.check,color: Color.fromRGBO(42, 169, 82, 1),size: 19,),
                   filled: true,
                   fillColor:Color.fromRGBO(255, 255, 255, 1) ,
                   labelStyle: TextStyle(fontSize: 11, fontWeight: FontWeight.w400, color: Color.fromRGBO(155, 155, 155, 1))) ,
                onChanged: (value) {
                  setState(() {
                    name = value;
                  });
                },

               ),
            ),

            Padding(
              padding: const EdgeInsets.fromLTRB(24, 20 ,24,0),
              child: TextField(
                controller: emailController,
                 decoration: InputDecoration(
                   border: InputBorder.none,
                   labelText: "Email",
                   suffixIcon: Icon(Icons.check,color: Color.fromRGBO(42, 169, 82, 1),size: 19,),
                   filled: true,
                   fillColor:Color.fromRGBO(255, 255, 255, 1) ,
                   labelStyle: TextStyle(fontSize: 11, fontWeight: FontWeight.w400, color: Color.fromRGBO(155, 155, 155, 1))) ,
                onChanged: (value) {
                  setState(() {
                    email = value;
                  });
                },
               ),
            ),


            Padding(
              padding: const EdgeInsets.fromLTRB(24, 20 ,24,0),
              child: TextField(
                controller: passWordController,
                 decoration: InputDecoration(
                   border: InputBorder.none,
                   labelText: "Password",
                   suffixIcon: Icon(Icons.remove_red_eye,color: Colors.black,size: 19,),
                   filled: true,
                   fillColor:Color.fromRGBO(255, 255, 255, 1) ,
                   labelStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Color.fromRGBO(155, 155, 155, 1))) ,
                onChanged: (value) {
                  setState(() {
                    password = value;
                  });
                },
               ),
            ),

            Padding(
              padding: const EdgeInsets.fromLTRB(24, 20 ,24,0),
              child: TextField(
                controller: addressController,
                decoration: InputDecoration(
                    border: InputBorder.none,
                    labelText: "address",
                    suffixIcon: Icon(Icons.check,color: Color.fromRGBO(42, 169, 82, 1),size: 19,),
                    filled: true,
                    fillColor:Color.fromRGBO(255, 255, 255, 1) ,
                    labelStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Color.fromRGBO(155, 155, 155, 1))) ,
                onChanged: (value) {
                  setState(() {
                    address = value;
                  });
                },
              ),
            ),

            Padding(
              padding: const EdgeInsets.fromLTRB(24, 20 ,24,0),
              child: TextField(
                controller: phoneNumberController,
                 decoration: InputDecoration(
                   border: InputBorder.none,
                   labelText: "+966",
                   prefixText: "+966",
                   prefixStyle:TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                   suffixIcon: Icon(Icons.close,color: Color.fromRGBO(240, 31, 14, 1),size: 19,),
                   filled: true,
                   fillColor:Color.fromRGBO(255, 255, 255, 1) ,
                   labelStyle:TextStyle(fontSize: 11, fontWeight: FontWeight.w400, color: Color.fromRGBO(155, 155, 155, 1))) ,
                onChanged: (value) {
                  setState(() {
                    phoneNumber =int.parse(value);
                  });
                },
               ),
            ),

            Padding(
              padding: const EdgeInsets.fromLTRB(24, 80 ,24,0),
              child: Container(
                height: 54,
                width: 343,
                decoration: BoxDecoration(
                  color: kprimaryColor,
                  borderRadius: BorderRadius.circular(25)
                ),
                child: TextButton(
                onPressed: (){
                  Get.to(()=> verificationPage(
                    password: password,
                    rating: rating,
                    address: address,
                    name: name,
                    promoCode: promoCode,
                    phoneNumber: phoneNumber,
                    email: email,
                    imageSrc: email,
                  ));
                }, 
                child: Text("SIGN UP", style:TextStyle(
                    fontSize: 20,fontWeight: FontWeight.w700, color:Colors.white)),)
              ),
            ),



          ],
        )

      ,),

    );
  }
}