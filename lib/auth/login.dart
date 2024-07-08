import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_delivery/auth/auth.dart';
import 'package:food_delivery/widgets/default_button.dart';
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
  String? errorMessage = '';
  bool isLogin = true;

  TextEditingController emailController = TextEditingController();
  final _formkey = GlobalKey<FormState>();
  TextEditingController passwordcontroller = TextEditingController();
  String idstr = "", passwordstr = "";

  bool _obscureText = false;

  void toggle() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    // final currentWidth = MediaQuery.of(context).size.width-36.4285;
    // final currenheight = MediaQuery.of(context).size.height+128.571429;
    //return const Placeholder();

    return Scaffold(
        body: SingleChildScrollView(
      child: Container(
        //padding: EdgeInsets.symmetric(horizontal: 10.h),
        height: MediaQuery.of(context).size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              // padding: const EdgeInsets.fromLTRB(14, 106, 0,0),
              padding: EdgeInsets.only(left: 16.w,right: 16.w,top: 40.h,bottom: 20.h),
              child: Container(
                  height: 40.h,
                  width: 120.w,
                  child: Center(child: Text("Login", style:TextStyle(fontSize: 30, fontWeight: FontWeight.w700)))),
            ),
            Padding(
              padding: EdgeInsets.only(left: 16.w,right: 16.w,top: 30.h,bottom: 20.h),
              child: Form(
                key: _formkey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Material(
                        elevation: 15,
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 10.w),
                          width: 300.w,
                          height: 60.h,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: TextFormField(
                            // maxLines: 1,
                            keyboardType: TextInputType.emailAddress,
                            controller: emailController,
                            // controller: username,
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 8, horizontal: 10),
                              prefixIcon: Icon(Icons.email),
                              border: InputBorder.none,
                              labelText: "Email".tr,
                              hintStyle: TextStyle(
                                  fontWeight: FontWeight.w400, fontSize: 14.sp),
                            ),
                            onSaved: (newValue) {
                              idstr = newValue!;
                              idstr = emailController.text;
                            },
                            onChanged: (newValue) {
                              idstr = newValue;
                              idstr = emailController.text;
                            },
                          ),
                        )),
                    SizedBox(height: 29.h),
                    Material(
                        //color:kBackgroundColor,
                        borderRadius: BorderRadius.circular(0),
                        elevation: 15,
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 10.w),
                          width: 300.w,
                          height: 60.h,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(0),
                            //color: const Color(0xffF6F6F6),
                          ),
                          child: TextFormField(
                            keyboardType: TextInputType.text,
                            obscureText: !_obscureText,
                            controller: passwordcontroller,
                            // controller: username,
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 8, horizontal: 10),
                              // floatingLabelBehavior: FloatingLabelBehavior.always,
                              prefixIcon: Icon(
                                Icons.lock,
                                color: Colors.black,
                              ),
                              suffixIcon: IconButton(
                                onPressed: () {
                                  toggle();
                                },
                                icon: Icon(
                                  Icons.visibility,
                                  color: Colors.black,
                                ),
                              ),
                              border: InputBorder.none,
                              labelText: "Password".tr,
                              hintStyle: TextStyle(
                                  color: Colors.white,
                                  //const Color(0xff9B9B9B),
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14.sp),
                              // border: InputBorder.none,
                            ),

                            // labelText: "Password",
                            onSaved: (newValue) {
                              idstr = newValue!;
                              idstr = passwordcontroller.text;
                            },
                            onChanged: (newValue) {
                              idstr = newValue;
                              idstr = passwordcontroller.text;
                            },
                          ),
                        )),
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Get.to(() => ForgetPage());
              },
              child: Padding(
                padding:  EdgeInsets.only(top: 13.h, left: 60.w, right: 60.w),
                child: Text("Forgot your password?",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Color.fromRGBO(252, 15, 15, 1))),
              ),
            ),
            InkWell(
              onTap: () {
                Get.to(() => SignUpPage());
              },
              child: Padding(
                padding:  EdgeInsets.only(top: 13.h, left: 60.w, right: 60.w),
                child: Text("don't have an account?",
                    style: TextStyle(
                      fontSize: 18,
                    )),
              ),
            ),

            //SizedBox(height: 51.h),
            Padding(
              padding:  EdgeInsets.only(top: 30.h, left:30.w, right: 30.w),
              child: GestureDetector(
                onTap: () async {
                  if (_formkey.currentState?.validate() == true)
                    _formkey.currentState?.save();
                  {
                    //try {
                    final user = await AuthHelper.signWithemail(
                        //.signInWithEmailAndPassword(
                        emailController.text.toString().trim(),
                        passwordcontroller.text.toString().trim());
                    if (user != null) {
                      Get.offAll(AndroidAuthPage());
                      // }
                    }
                  }
                },
                child: DefualtButton(
                  text: "LOGIN".tr,
                  //selected: true,
                ),
              ),
            ),
            Padding(
              padding:  EdgeInsets.only(top: 30.h, left: 60.w, right: 60.w),
              child: Text("Big Kitchen Burger",
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                      color: Color.fromRGBO(34, 34, 34, 1))),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
              child: Text("At your Dinning Table",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: kprimaryColor)),
            ),
          ],
        ),
      ),
    ));
  }
  // Widget _errorMassage(){
  //   return Text(errorMessage == '' ? '' :'? $errorMessage');
  // }
  //
  // Widget _submitButton(){
  //   return ElevatedButton(
  //       onPressed:
  //       isLogin ? signInWithEmailAndPassword : createUserWithEmailAndPassword ,
  //       child: Text(isLogin ? 'Login' : 'Register'));
  // }
  //
  // Widget _loginOrRegisterButton(){
  //   return TextButton(
  //       onPressed: (){
  //         setState(() {
  //           isLogin = !isLogin;
  //         });
  //       },
  //       child: Text(isLogin ? 'Register instead' : 'Login instead'));
  // }
  // Future<void> signInWithEmailAndPassword() async {
  //   try{
  //     await Auth().signInWithEmailAndPassword(
  //         email: emailController.text,
  //         password: passwordcontroller.text
  //     );
  //   }on FirebaseAuthException catch(e){
  //     setState(() {
  //       errorMessage = e.message;
  //     });
  //   }

  // Future<void> createUserWithEmailAndPassword() async{
  //   try{
  //     await Auth().createUserWithEmailAndPassword(
  //         email: emailController.text,
  //         password: passwordcontroller.text
  //     );
  //
  //   }on FirebaseAuthException  catch (e){
  //     setState(() {
  //       errorMessage= e.message;
  //     });
  //   }
  // }
  User? get currentUser => _firebaseAuth.currentUser;
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  Stream<User?> get authStateChange {
    return _firebaseAuth.authStateChanges();
  }
}
