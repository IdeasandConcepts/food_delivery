


import 'package:food_delivery/model/products.dart';

class  FavoriteMeals {
  final Products products;
  final String userName;



  FavoriteMeals(
      {
   required this.products,
   required this.userName
      }
      );



}

List <FavoriteMeals> userFavoriteMeals =[];

void adduserFavoriteMeals(
    {

      required String userName,
      required Products products,


    })
{
  final newDetails= FavoriteMeals(
 userName: userName,
    products: products


  );

  userFavoriteMeals.add(newDetails);
}