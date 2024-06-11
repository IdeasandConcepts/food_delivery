//
//
//
// import 'package:flutter/material.dart';
// import 'package:food_delivery/auth/auth.dart';
//
// import '../auth/home_auth.dart';
// import '../auth/regist.dart';
//
// class WidgetTree extends StatefulWidget {
//   const WidgetTree({super.key});
//
//   @override
//   State<WidgetTree> createState() => _WidgetTreeState();
// }
//
// class _WidgetTreeState extends State<WidgetTree> {
//   @override
//   Widget build(BuildContext context) {
//     return  StreamBuilder(
//       stream: Auth().authStateChange,
//       builder: (context , snapshot){
//         if (snapshot.hasData){
//           return HomePage();
//         }else{
//           return const LoginPage();
//         }
//       },
//     );
//   }
// }