

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/auth/login.dart';
import 'package:food_delivery/home/home.dart';
import 'package:food_delivery/home/home_page.dart';

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
            // Userhelper.saveUser(snapshot.data!);
            // Userhelper.saveDevice(snapshot.data!);
            return StreamBuilder<DocumentSnapshot<Map<String, dynamic>>>(
                stream: FirebaseFirestore.instance
                    .collection('Users')
                    .doc(snapshot.data!.uid)
                    .snapshots(),
                builder: (BuildContext context, AsyncSnapshot snapshot) {
                  if (snapshot.hasData && snapshot.data != null) {
                   // final myuser = snapshot.data!.data();
                   //  if (myuser['role'] == "i&c") {
                   //    return GMHomePage();
                   //  }
                   // // generalmanger
                   // else

                      //print('Hi'+myuser['user_id']);
                      return HomeScreen(
                /*        role:myuser['role'],
                        //marketDetails: myuser['market_details'],
                        nationality: myuser['nationality'],
                        //branch: '',
                        // market: myuser['market'],
                        username: myuser['name'],
                        profileImage: myuser['profile_image'].toString(),
                        //marketImage: myuser['market_image'].toString(),
                        id: myuser['id'],
                        phone: myuser['phone']*/
                      );

                  }
                   //return SplashScreen();
                 //return SplashScreen();
                   return Center(child: new CircularProgressIndicator());
                });

            // return HomeScreen(user:snapshot.data!);
          }
         return LoginPage();
         // return Center(child: new CircularProgressIndicator());

          // return Center(
          //   child: CircularProgressIndicator(),
          // );
        }
        //return SplashScreen();
        );
  }

  //List<String> username = [];
}
