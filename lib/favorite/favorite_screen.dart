import 'package:flutter/material.dart';
import 'package:food_delivery/favorite/fav_conatiner.dart';
import 'package:food_delivery/favorite/fav_grid.dart';
import 'package:food_delivery/favorite/row_icons.dart';
import 'package:food_delivery/favorite/scrolled_containers.dart';
import 'package:food_delivery/model/favorite.dart';
import 'package:food_delivery/model/users.dart';

class FavoriteScreen extends StatefulWidget {
  final String user;
  const FavoriteScreen({super.key, required this.user,});

  @override
  State<FavoriteScreen> createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
  List <String> categories=[
    "All",
    "Burger",
    "Pizza",
    "bread",
    "other"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.white,
      //   centerTitle: true,
      //   title: const T
      // ),
      body:  Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top:10.0),
              child: Container(
                height: 50,
                child: Text(
                  'Favorites',
                  style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 23),
                ),
              ),
            ),
            Container(
              height: 50,
              width: double.maxFinite,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: categories.length,
                shrinkWrap: true,
                itemBuilder: (context,index){
                  return  FavContainer(
                      content: categories[index]
                  );
                },

                // FavContainer(
                //   content: 'Others',
                // ),
                // FavContainer(
                //   content: 'Others',
                // ),


              ),
            ),
            //!#1
           // ScrolledContainers(),
            SizedBox(
              height: 10,
            ),
            //! #2
            RowIcons(),
            SizedBox(height: 15),
            //! #3
            FavGrid(
              favoriteMeals: userFavoriteMeals,
            ),
          ],
        ),
      ),
    );
  }
}
