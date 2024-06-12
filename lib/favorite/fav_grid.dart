import 'package:flutter/material.dart';

import 'package:food_delivery/favorite/dummy_favs.dart';
import 'package:food_delivery/favorite/fav_grid_item.dart';
import 'package:food_delivery/model/favorite.dart';


class FavGrid extends StatelessWidget {
  final List<FavoriteMeals> favoriteMeals;
 // Final FavoriteMeals user;
  const FavGrid({super.key, required this.favoriteMeals});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      //! The GridView
      child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 0.99,
            crossAxisSpacing: 12.5,
            mainAxisSpacing: 12.5,
            // shrinkWrap: true,
            // padding: EdgeInsets.only(left:15.0,right: 15.0),
          ),
          itemCount: favoriteMeals.length,
          itemBuilder: ((context,index){
            return


              // childAspectRatio: 0.99,
              // crossAxisSpacing: 12.5,
              // mainAxisSpacing: 12.5,
              // shrinkWrap: true,
              // padding: EdgeInsets.only(left:15.0,right: 15.0),
              // children:
              // List.generate(favoriteMeals.length, (index) =>
              // // controller: _scrollController,
              //  children:
              //product.map
              FavGridItem(
                  favMeal: 
                  favoriteMeals[index]);
            //.toList(),
            //product.map(_buildFoodItem.toList(),
            // shrinkWrap: true,
          })
        // ]
      )
    );
  }
}
