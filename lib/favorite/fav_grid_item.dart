import 'package:flutter/material.dart';
import 'package:food_delivery/const.dart';
import 'package:food_delivery/favorite/fav_meal.dart';
import 'package:food_delivery/model/favorite.dart';

class FavGridItem extends StatelessWidget {
  const FavGridItem({super.key, required this.favMeal});

  final FavoriteMeals favMeal;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Center(
          child: SizedBox(
            height: 90,
            width: 120,
            child: Image.asset(
              favMeal.products.imageSrc,
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(
          height: 3,
        ),
        //! Showing the start -- incomplete!
        // Row(
        //   children: [
        //     for (int i = 0; i < favMeal.products.isFavorite; i++)
        //        Icon(
        //         Icons.star,
        //         size: 15,
        //         color: favMeal.isFavorite==true?Colors.grey:kprimaryColor,
        //       ),
        //     if(favMeal.rate<5)
        //       for (int i = 0; i < (5-favMeal.rate); i++)
        //         Icon(
        //           Icons.star,
        //           size: 15,
        //           color: Colors.grey,
        //         ),
        //   ],
        // ),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(favMeal.products.category),
              Text(
                favMeal.products.title,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '${favMeal.products.price} \$',
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text('Size: ${favMeal.products.oldPrice}'),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
