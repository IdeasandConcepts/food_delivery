// import 'package:flutter/material.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:get/get.dart';
// import 'auth.dart';
//
//
// class LoginPage extends StatefulWidget {
//   const LoginPage({super.key});
//
//   @override
//   State<LoginPage> createState() => _LoginPageState();
// }
//
// class _LoginPageState extends State<LoginPage> {
//   String? errorMessage = '';
//   bool isLogin = true;
//
//   TextEditingController emailController = TextEditingController();
//   final _formkey = GlobalKey<FormState>();
//   TextEditingController passwordcontroller = TextEditingController();
//   String idstr="", passwordstr="";
//   //
//   // final TextEditingController _controllerEmail = TextEditingController();
//   // final TextEditingController _controllerPassword = TextEditingController();
//
//   Future<void> signInWithEmailAndPassword() async {
//     try{
//       await Auth().signInWithEmailAndPassword(
//           email: emailController.text,
//           password: passwordcontroller.text
//       );
//     }on FirebaseAuthException catch(e){
//       setState(() {
//         errorMessage = e.message;
//       });
//     }
//   }
//
//   Future<void> createUserWithEmailAndPassword() async{
//     try{
//       await Auth().createUserWithEmailAndPassword(
//           email: emailController.text,
//           password: passwordcontroller.text
//       );
//
//     }on FirebaseAuthException  catch (e){
//       setState(() {
//         errorMessage= e.message;
//       });
//     }
//   }
//
//   Widget _title() {
//     return const Text("Firebase Auth");
//   }
//
//
//   Widget _entryField(
//       String title,
//       TextEditingController controller,
//       ){
//     return TextField(
//       controller: controller,
//       decoration: InputDecoration(
//         labelText: title,
//       ),
//     );
//   }
//
//   Widget _errorMassage(){
//     return Text(errorMessage == '' ? '' :'? $errorMessage');
//   }
//
//   Widget _submitButton(){
//     return ElevatedButton(
//         onPressed:
//         isLogin ? signInWithEmailAndPassword : createUserWithEmailAndPassword ,
//         child: Text(isLogin ? 'Login' : 'Register'));
//   }
//
//   Widget _loginOrRegisterButton(){
//     return TextButton(
//         onPressed: (){
//           setState(() {
//             isLogin = !isLogin;
//           });
//         },
//         child: Text(isLogin ? 'Register instead' : 'Login instead'));
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return  Scaffold(
//         appBar: AppBar(
//           title:  _title(),
//         ),
//
//
//         body: Container(
//           height: double.infinity,
//           width:  double.infinity,
//           child: Padding(
//             padding: const EdgeInsets.all(20.0),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.center,
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Padding(
//                   // padding: const EdgeInsets.fromLTRB(14, 106, 0,0),
//                   padding: EdgeInsets.only(left: 36,right: 36,top: 41),
//                   child: Text("Login", style:TextStyle(fontSize: 40, fontWeight: FontWeight.w700)),
//                 ),
//                 Form(
//                   key: _formkey,
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.start,
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//
//
//                       Padding(
//                         padding: const EdgeInsets.fromLTRB(16, 90 ,0,0),
//                         child: Container(
//                           height: 64,
//                           width: 343,
//                           decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(4),
//                             boxShadow: [
//                               BoxShadow(
//                                 color: Colors.grey.withOpacity(0.05),
//                                 spreadRadius: 0,
//                                 blurRadius: 8,
//                                 offset: Offset(0, 1), // changes position of shadow
//                               ),
//                             ],
//                           ),
//
//                           child: TextFormField(
//                             controller: emailController,
//                             decoration: InputDecoration(
//                               border: InputBorder.none,
//                               //border: BorderRadius.circular(4),
//                               labelText: "Email@gmail.com",
//                               filled: true,
//                               fillColor:Color.fromRGBO(255, 255, 255, 1) ,
//                               suffixIcon: Icon(Icons.check, color: Color.fromRGBO(42, 169, 82, 1),),
//                               labelStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold,
//
//                                 //  color: Colors
//                               ),
//                             ) ,
//                             validator: (value) {
//                               if (value!.isEmpty)
//                                 //   errors.contains(validphonenumbernumber)) {
//                                 // if (value == null || value.contains())
//                                   {
//                                 return 'Empty field'.tr;
//                               } else if (value.contains('#')) {
//                                 return 'Invalid Email Address';
//                                 // }else if(!(value.endsWith('.com'))||(!(value.endsWith('.com ')))) {
//                                 //   return 'Invalid Email Address'.tr;
//                               }
//                             },
//                             onSaved: (newValue) {
//                               idstr = newValue!;
//                               idstr = emailController.text;
//                             },
//                             onChanged: (newValue) {
//                               idstr = newValue;
//                               idstr = passwordcontroller.text;
//                             },
//                           ),
//
//                         ),
//                       ),
//
//
//                       Padding(
//                         padding: const EdgeInsets.fromLTRB(16, 8 ,0,0),
//                         child: Container(
//                           height: 64,
//                           width: 343,
//                           decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(4),
//                             boxShadow: [
//                               BoxShadow(
//                                 color: Colors.grey.withOpacity(0.05),
//                                 spreadRadius: 0,
//                                 blurRadius: 8,
//                                 offset: Offset(0, 1), // changes position of shadow
//                               ),
//                             ],
//                           ),
//
//                           child: TextFormField(
//                             controller: passwordcontroller,
//                             decoration: InputDecoration(
//                                 border: InputBorder.none,
//                                 //border: BorderRadius.circular(4),
//                                 labelText: "Password",
//                                 filled: true,
//                                 fillColor:Color.fromRGBO(255, 255, 255, 1) ,
//                                 suffixIcon: Icon(Icons.remove_red_eye, color: Colors.black,size: 25,),
//                                 labelStyle: TextStyle(
//                                     fontSize: 14, fontWeight: FontWeight.w400, color: Color.fromRGBO(155, 155, 155, 1))) ,
//                             validator: (value) {
//                               if (value!.isEmpty)
//                               {
//                                 return 'Empty field'.tr;
//                               } else if (value.contains('#')) {
//                                 return 'Invalid Password'.tr;
//                               }
//                             },
//                             onSaved: (newValue) {
//                               passwordstr = newValue!;
//                               passwordstr = passwordcontroller.text;
//                             },
//                             onChanged: (newValue) {
//                               passwordstr = newValue;
//                               passwordstr = passwordcontroller.text;
//                             },
//                           ),
//
//                         ),
//                       ),
//
//                     ],
//                   ),
//                 ),
//                 // _entryField('email', _controllerEmail),
//                 // _entryField('password', _controllerPassword),
//                 _errorMassage(),
//                 _submitButton(),
//                 _loginOrRegisterButton(),
//
//
//               ],),
//           ),
//         )
//     );
//   }
// }