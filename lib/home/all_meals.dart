

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:food_delivery/const.dart';
import 'package:food_delivery/home/details.dart';
import 'package:food_delivery/home/details_screen.dart';
import 'package:food_delivery/model/model.dart';


class HomeDetails extends StatefulWidget {
 final List<Map<String, dynamic>>  products;

  const HomeDetails(
      {super.key,
        required this.products

      });

  @override
  State<HomeDetails> createState() => _HomeDetailsState();
}


class _HomeDetailsState extends State<HomeDetails> {

  @override
  Widget build(BuildContext context) {
    return Expanded(
     // flex: 3,
      child: GridView.count(
        crossAxisCount: 2,
        childAspectRatio: 0.99,
        crossAxisSpacing: 12.5,
        mainAxisSpacing: 12.5,
       shrinkWrap: true,
       // padding: EdgeInsets.only(left:15.0,right: 15.0),
        children:
          List.generate(
            widget.products.length, (index) {
            return
                      //     ListView.builder(
                      //       itemCount: 4,
                      // itemBuilder: (context,index) {
                      //   return
                      buildDailyTask
                        (

                        widget.products[index]["description"],

                        widget.products[index]["image"],
                          widget.products[index]["title"],

                        widget.products[index]["is_favorite"],

                        widget.products[index]["price"],
                         widget.products[index]["old_price"],);
                  },
         
      )


       // ]
    )
    );
  }

  Widget buildDailyTask(
      String description,

      String imageSrc,
      String mealTitle,
      bool isFavorite,
      double price,
      double prefPrice) => GestureDetector(
    onTap: (){
      Get.to(()=>DetailsScreen(
        image: imageSrc,
        productName: mealTitle,
        productPrice: price,
        isFavorite: isFavorite,
        productCategory: mealTitle,
        productDetails: description,
      ));
    },
        child: Container(
    decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(15),
          border: Border.all()),
    height:MediaQuery.of(context).size.height * 1/ 5,
    //100,
    width: MediaQuery.of(context).size.width ,
        //* 1/ 4,
    //   decoration: BoxDecoration(
    //      // color: kprimaryColor.withOpacity(0.2),
    //       borderRadius: BorderRadius.circular(25),
    //       border: Border.all()
    //   ),
    //color: Colors.white,
    // width: 80,
    //height: 160,
    child: Column(
          //shrinkWrap: true,
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [


            Padding(padding:  EdgeInsets.only(left:MediaQuery.of(context).size.height * 1/ 40,
                right: MediaQuery.of(context).size.height * 1/ 40.0,
                top:MediaQuery.of(context).size.height * 1/ 80),
              child: Container(
                //  padding: EdgeInsets.only(top:7),
                height:MediaQuery.of(context).size.height / 9,


                // 90,
               // width: 66,
                decoration: BoxDecoration(
                  //color: Colors.transparent,

                  // border: Border.all(),
                    borderRadius: BorderRadius.circular(25)),
                child: Image.asset(

                  imageSrc,
                  fit:BoxFit.contain,
                 // width: d,
                  //color: Colors.white,
                  // widget.marketImage
                ),
                //),
              ),
            ),
            Padding(
              padding:  EdgeInsets.only(left:MediaQuery.of(context).size.height * 1/ 60,
                  right: MediaQuery.of(context).size.height * 1/ 60.0,
                  top:MediaQuery.of(context).size.height * 1/ 80),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    //margin: EdgeInsets.all(8),
                    child: Text(mealTitle,
                      style: TextStyle(fontSize: 12,color: Colors.white),
                    ),
                  ),
                  Padding(
                    padding:  EdgeInsets.only(

                        top:MediaQuery.of(context).size.height * 1/ 80
                     //   top:5.0
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        (isFavorite==true) ?

                        Row(

                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(Icons.star,color: kprimaryColor,size: 12,),
                            Icon(Icons.star,color: kprimaryColor,size: 12,),
                            Icon(Icons.star,color: kprimaryColor,size: 12,),
                            Icon(Icons.star,color: Colors.transparent,size: 12,),
                            Icon(Icons.star,color: Colors.transparent,size: 12,),
                          ],
                        ):Row(

                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(
                              Icons.star,
                              color: kprimaryColor,
                              size: 12,),
                            Icon(Icons.star,
                              color: kprimaryColor,
                              size: 12,),
                            Icon(Icons.star,color: kprimaryColor,size: 12,),
                            Icon(Icons.star,color: kprimaryColor,size: 12,),
                            Icon(Icons.star,color: kprimaryColor,size: 12,),
                          ],
                        ),
                        Container(
                          //margin: EdgeInsets.all(8),
                          child: Text("${price}\$",
                            style: TextStyle(fontSize: 12,color: Colors.white),
                          ),
                        ),
                        Container(
                          //margin: EdgeInsets.all(8),
                          child: Text("${prefPrice}\$",
                            style: TextStyle(fontSize: 12,color: Colors.white,
                            decoration: TextDecoration.lineThrough,
                              decorationThickness: 3,
                              decorationColor: Colors.red,
                             // decorationStyle:
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            // Padding(padding: const EdgeInsets.only(top:10.0),),
          ]),
  ),
      );


}
