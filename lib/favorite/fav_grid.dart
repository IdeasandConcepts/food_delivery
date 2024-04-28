import 'package:flutter/material.dart';

import 'package:food_delivery/favorite/dummy_favs.dart';
import 'package:food_delivery/favorite/fav_grid_item.dart';


class FavGrid extends StatelessWidget {
  const FavGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      //! The GridView
      child: GridView(
        padding: const EdgeInsets.all(10),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          // childAspectRatio: 3 / 2, //same as 1.5
          crossAxisSpacing: 20, //to have spacing btwn columns
          mainAxisSpacing: 20,
        ),
        children: [
          //todo: displaying the Grid
          for (final fav in availableFavs)
            FavGridItem(
              favMeal: fav,
            )
          ],
      ),
    );
  }
}
