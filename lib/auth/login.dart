import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:food_delivery/auth/forgot.dart';
import 'package:food_delivery/auth/signUp.dart';
import 'package:food_delivery/const.dart';
import 'package:food_delivery/home/home.dart';
import 'package:food_delivery/auth/auth_helper.dart';
import 'package:food_delivery/auth/auth_page.dart';


class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  TextEditingController emailController = TextEditingController();
  final _formkey = GlobalKey<FormState>();
  TextEditingController passwordcontroller = TextEditingController();
  String idstr="", passwordstr="";
  @override
  Widget build(BuildContext context) {
    final currentWidth = MediaQuery.of(context).size.width-36.4285;
    final currenheight = MediaQuery.of(context).size.height+128.571429;
    //return const Placeholder();

    return Scaffold(

      body: SingleChildScrollView(

        child: Column(
          children: [
            Form(
              key: _formkey,
              child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                 // padding: const EdgeInsets.fromLTRB(14, 106, 0,0),
                  padding: EdgeInsets.only(left: 136,right: 136,top: 141),
                  child: Text("Login", style:TextStyle(fontSize: 40, fontWeight: FontWeight.w700)),
                ),

                Padding(
                    padding: const EdgeInsets.fromLTRB(16, 90 ,0,0),
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

                      child: TextFormField(
                        controller: emailController,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            //border: BorderRadius.circular(4),
                            labelText: "Email@gmail.com",
                            filled: true,
                            fillColor:Color.fromRGBO(255, 255, 255, 1) ,
                            suffixIcon: Icon(Icons.check, color: Color.fromRGBO(42, 169, 82, 1),),
                            labelStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold,

                              //  color: Colors
                            ),
                          ) ,
                        validator: (value) {
                          if (value!.isEmpty)
                            //   errors.contains(validphonenumbernumber)) {
                            // if (value == null || value.contains())
                              {
                            return 'Empty field'.tr;
                          } else if (value.contains('#')) {
                            return 'Invalid Email Address';
                            // }else if(!(value.endsWith('.com'))||(!(value.endsWith('.com ')))) {
                            //   return 'Invalid Email Address'.tr;
                          }
                        },
                        onSaved: (newValue) {
                          idstr = newValue!;
                          idstr = emailController.text;
                        },
                        onChanged: (newValue) {
                          idstr = newValue;
                          idstr = passwordcontroller.text;
                        },
                        ),

                    ),
                  ),


                  Padding(
                    padding: const EdgeInsets.fromLTRB(16, 8 ,0,0),
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

                      child: TextFormField(
                        controller: passwordcontroller,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            //border: BorderRadius.circular(4),
                            labelText: "Password",
                            filled: true,
                            fillColor:Color.fromRGBO(255, 255, 255, 1) ,
                            suffixIcon: Icon(Icons.remove_red_eye, color: Colors.black,size: 25,),
                            labelStyle: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w400, color: Color.fromRGBO(155, 155, 155, 1))) ,
                        validator: (value) {
                          if (value!.isEmpty)
                          {
                            return 'Empty field'.tr;
                          } else if (value.contains('#')) {
                            return 'Invalid Password'.tr;
                          }
                        },
                        onSaved: (newValue) {
                          passwordstr = newValue!;
                          passwordstr = passwordcontroller.text;
                        },
                        onChanged: (newValue) {
                          passwordstr = newValue;
                          passwordstr = passwordcontroller.text;
                        },
                        ),

                    ),
                  ),

              ],
      ),
            ),
            InkWell(
              onTap: (){
                Get.to(()=>ForgetPage());
              },
              child:  Padding(
                padding: const EdgeInsets.only(top:13,left: 106,right:106),
                child: Text("Forgot your password?",
                    style:  TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Color.fromRGBO(252, 15, 15, 1))),),

            ),
            InkWell(
              onTap: (){
                Get.to(()=>SignUpPage());
              },
              child: Padding(
                padding: const EdgeInsets.only(left: 90,right: 90,top: 8),
                child: Text("don't have an account?", style:TextStyle(
                  fontSize: 18, )),),

            ),


            Padding(
                padding: const EdgeInsets.only(top:50,left: 30,right:30),
                child: Container(
                    height: 60,
                    width: 323,
                    decoration: BoxDecoration(
                        color:kprimaryColor,
                        borderRadius: BorderRadius.circular(40)
                    ),
                    child: TextButton(
                      onPressed: () async{
    if (_formkey.currentState?.validate() == true)
    _formkey.currentState?.save();
    {
    try {
    final user = await AuthHelper.signWithemail(
    emailController.text.toString().trim(),
    passwordcontroller.text.toString().trim());
    if (user != null) {

    Get.offAll(AndroidAuthPage());

    }}
     on FirebaseAuthException catch (e) {
                        if (emailController.text.toString() == ""&&
                        passwordcontroller.text.toString()==""){
    print (e);
    }
                        // Fluttertoast.showToast(
                        // msg: "User Name && Password!! are Empty".tr,
                        // backgroundColor: Colors.grey,
                        // toastLength: Toast.LENGTH_LONG,
                        // fontSize: 20,
                        // gravity: ToastGravity.CENTER
                        // );

}
                              // Get.to(()=>HomeScreen());
                     }
                     },
                      child: Text("Login", style: TextStyle(
                          fontSize: 26,fontWeight: FontWeight.w700, color: Colors.white)),)
                )

            ),


            Padding(
              padding: const EdgeInsets.only(left: 90,right: 90,top: 80),
              child: Text("Big Kitchen Burger", style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500, color: Color.fromRGBO(34, 34, 34, 1))),),
            Padding(
              padding: const EdgeInsets.only(left: 110,right: 110,top: 10),
              child: Text("At your Dinning Table", style: TextStyle(
                  fontSize: 16, fontWeight: FontWeight.bold, color: kprimaryColor)),),

          ],
        ) ,
      ) 

    );



  }
}