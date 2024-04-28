import 'package:flutter/material.dart';
import 'package:food_delivery/favorite/fav_grid.dart';
import 'package:food_delivery/favorite/row_icons.dart';
import 'package:food_delivery/favorite/scrolled_containers.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({super.key});

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
            //!#1
            ScrolledContainers(),
            SizedBox(
              height: 10,
            ),
            //! #2
            RowIcons(),
            SizedBox(height: 15),
            //! #3
            FavGrid(),
          ],
        ),
      ),
    );
  }
}
