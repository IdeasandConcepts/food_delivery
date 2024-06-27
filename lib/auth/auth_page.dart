

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/auth/login.dart';
import 'package:food_delivery/delivery/home_order_screen.dart';
import 'package:food_delivery/delivery/orders.dart';
import 'package:food_delivery/home/home.dart';
import 'package:food_delivery/home/home_page.dart';
import 'package:food_delivery/model/users.dart';

import 'waiting_screen.dart';
import 'aplash_screen.dart';
import 'user_helper.dart';



class AndroidAuthPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.hasData && snapshot.data != null) {
             Userhelper.saveUser(snapshot.data!);
             Userhelper.saveDevice(snapshot.data!);
            return StreamBuilder<DocumentSnapshot<Map<String, dynamic>>>(
                stream: FirebaseFirestore.instance
                    .collection('Users')
                    .doc(snapshot.data!.uid)
                    .snapshots(),
                builder: (BuildContext context, AsyncSnapshot snapshot) {
                  if (snapshot.hasData && snapshot.data != null) {
                    final myUser = snapshot.data!.data();
                    {
                      // final users = FirebaseFirestore.instance
                      //     .collection('Customers')
                      //     .where("name", isEqualTo: myUser['name'])
                      //     .where("phone", isEqualTo: myUser['phone'])
                      //     .get();
                     // final user =users.data;
                      // .doc(snapshot.data!.uid)
                      // .snapshots();
                      // }
                      //  if (myuser['role'] == "i&c") {
                      //    return GMHomePage();
                      //  }
                      // // generalmanger
                      // else
                      // if (myuser['role'] == "normal user")
                      // {
                      //   //print('Hi'+myuser['user_id']);
                      //   return
                      //     HomeScreen(
                      //         username: "myuser['id']",
                      //         branch: "myuser['phone']"
                      //     );
                      if (myUser['role'] == "normal user")
                        //  "normal user")
                          {
                        //   //print('Hi'+myuser['user_id']);
                        return
                          HomeScreen(
                            user: myUser['name'],
                          profileImage: "",
                          //  user:snapshot.data!,
                            // Customers(
                            //   address: myuser["location"],
                            //   promoCode:"" ,
                            //   email: myuser["email"],
                            //   name: myuser['name'],
                            //   imageSrc:"assets/images/background.jpeg",
                            // phoneNumber: myuser['phone'],
                            // )
                          );
                      }
                      // supervisor

                      else if (myUser['role'] == "Driver") {
                        return HomeOrderScreen(userName: myUser['name'],);
                      }

                      // else if(myuser['role'] == "new user")
                      // {   return WaitingScreen(
                      //   username:myuser['name'],
                      // );
                      //   //Center(child: new CircularProgressIndicator());
                    }

                    //return SplashScreen();
                    //return SplashScreen();
                    return Center(child: CircularProgressIndicator());
                  }
                  return LoginPage();
                  //return HomeScreen(user: myData[],);
                });



          }
          return LoginPage();
          // return Center(child: new CircularProgressIndicator());

          // return Center(
          //   child: CircularProgressIndicator(),
          // );
        }
     // return SplashScreen();
    );
  }

//List<String> username = [];
}
