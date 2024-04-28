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
    return  SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        height: 50,
        width: 280,
        child: ListView.builder(

          itemCount: categories.length,

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
      // child: Row(
      //   children: [
      //     FavContainer(
      //       content: 'All',
      //     ),
      //     FavContainer(
      //       content: 'Burgers',
      //     ),
      //     FavContainer(
      //       content: 'Pizza',
      //     ),
      //     FavContainer(
      //       content: 'Others',
      //     ),
      //     // FavContainer(
      //     //   content: 'Others',
      //     // ),
      //     // FavContainer(
      //     //   content: 'Others',
      //     // ),
      //
      //   ],
      // ),
    );
  }
}
