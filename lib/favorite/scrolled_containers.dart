import 'package:flutter/material.dart';
import 'package:food_delivery/favorite/fav_conatiner.dart';

class ScrolledContainers extends StatefulWidget {
  const ScrolledContainers({
    super.key,
  });

  @override
  State<ScrolledContainers> createState() => _ScrolledContainersState();
}

class _ScrolledContainersState extends State<ScrolledContainers> {

  List <String> categories=[
    "All",
    "Burger",
    "Pizza",
    "bread",
    "other"
  ];
  @override
  Widget build(BuildContext context) {
    return  Container(
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
    );
  }
}
