import 'package:flutter/material.dart';
import 'package:food_delivery/const.dart';
import 'package:food_delivery/favorite/fav_meal.dart';

class FavGridItem extends StatelessWidget {
  const FavGridItem({super.key, required this.favMeal});

  final FavMeal favMeal;

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
              favMeal.img,
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(
          height: 3,
        ),
        //! Showing the start -- incomplete!
        Row(
          children: [
            for (int i = 0; i < favMeal.rate; i++)
               Icon(
                Icons.star,
                size: 15,
                color: favMeal.isFavorite==true?Colors.grey:kprimaryColor,
              ),
            if(favMeal.rate<5)
              for (int i = 0; i < (5-favMeal.rate); i++)
                Icon(
                  Icons.star,
                  size: 15,
                  color: Colors.grey,
                ),
          ],
        ),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(favMeal.category),
              Text(
                favMeal.title,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '${favMeal.price} \$',
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text('Size: ${favMeal.size}'),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
