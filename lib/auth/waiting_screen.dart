
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../const.dart';


class WaitingScreen extends StatefulWidget {
  final String username;
  const WaitingScreen({Key? key, required this.username}) : super(key: key);

  @override
  State<WaitingScreen> createState() => _WaitingScreenState();
}

class _WaitingScreenState extends State<WaitingScreen> {

  // final controller = LiquidController();
  // int currentPage=0;
  // final pages=[
  //   OnBoardingPages(model: OnBoardingModel(
  //     size: 200,
  //     index: 1,
  //     imageSrc:  "assets/images/wt1.jpeg",
  //     text1:   "Hi",
  //     text2:    "Just wait"
  // ),
  // ),
  //   OnBoardingPages(
  //       model: OnBoardingModel(
  //           size:200,
  //           index: 2,
  //           imageSrc:  "assets/images/wt2.jpeg",
  //           text1:  "Just a minute",
  //           text2:   "We are doing aur best to serve you"
  //       )),
  //   OnBoardingPages(model: OnBoardingModel(
  //       size: 200,
  //       index: 0,
  //       imageSrc:"assets/images/wt3.jpeg",
  //       text1:   "",
  //       text2:   "Your request is under processing \njust wait"
  //   ),
  //   )];
  // skip()=>
  //     controller.jumpToPage(page: 2);
  // animatedToNextSlide(){
  //   int nextPage=controller.currentPage+1;
  //   controller.animateToPage(page: nextPage);
  // }
  // void onPageChangeCall(int activePageIndex)=>
  //     currentPage.value = activePageIndex;

  //
  // final controller = LiquidController();
  //
  // int currentPage=0;

  @override
  Widget build(BuildContext context) {

    final size=MediaQuery.of(context).size.height;
    //final obsController=OnBoardingController();
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
          children:[
            Container(
              // color: kprimaryColor,
                padding: EdgeInsets.all(20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image(image: AssetImage("assets/images/wt3.jpeg",),height: size * 0.5),
                    Column(
                      children: [
                       // Text(model.text1,style: Theme.of(context).textTheme.headline3),
                        Text("Your request is under processing".tr+ "\n"+"just wait".tr),
                      ],),
                    // Text("${0.0}",style: Theme.of(context).textTheme.headline6),
                    CircularProgressIndicator(color: kprimaryColor,),
                    SizedBox(height: 80,)
                  ],
                )

            )
        // LiquidSwipe(
        //   liquidController:controller,
        //   //disableUserGesture: true,
        //  // liquidController: obsController.controller,
        //   slideIconWidget: const Icon(Icons.arrow_back_ios),
        //   //enableSideReveal: true,
        //   onPageChangeCallback: onPageChangeCall,
        //   enableLoop: false,
        //   pages:pages,
        // ),
          // Positioned(
          //     bottom: 60.0,
          //     child: OutlinedButton(
          //       child: Container(
          //         padding: const EdgeInsets.all(20),
          //         decoration: const BoxDecoration(
          //           color: kprimaryColor,
          //           shape: BoxShape.circle
          //         ),
          //         child: const Icon(Icons.arrow_forward_ios),
          //       ),
          //       onPressed:
          //       //obsController.animatedToNextSlide(),
          //           (){
          //         setState(() {
          //         int nextPage=controller.currentPage+1;
          //         controller.animateToPage(page: nextPage);
          //         });
          //         },
          //       style: ElevatedButton.styleFrom(
          //         side: const BorderSide(
          //           color: Colors.black26
          //         ),
          //         shape: const CircleBorder(),
          //         padding: const EdgeInsets.all(20),
          //         onPrimary: Colors.white
          //       ),
          //     )
          //
          // ),
            // Positioned(
            //     top: 50,
            //     right: 20,
            //     child:TextButton(
            //       onPressed: (){
            //         setState(() {
            //           controller.jumpToPage(page: currentPage+1);
            //         });
            //       },
            //       child: Text("Skip",
            //         style: TextStyle(
            //           color: Colors.grey
            //         ),
            //       ),
            //     )
            // ),
              //  Positioned(
    //                 bottom:10,
    //                 child: AnimatedSmoothIndicator(
    //                   activeIndex:currentPage,
    //                   count:pages.length,
    //                   effect: WormEffect(
    //                       activeDotColor: Color(0xff272727),
    //                       dotHeight: 5.0),
    //             )
    //
    // )
    ]

      ),
    );
  }
//
//   void onPageChangeCall(int activePageIndex)
//   {
//     setState(() {
//       currentPage = activePageIndex;
//     });
//   }
// }

// class OnBoardingPages extends StatelessWidget {
//   const OnBoardingPages({
//     super.key,
//     required this.model,
//
//   });
//   final OnBoardingModel model;
//
//   @override
//   Widget build(BuildContext context) {
//     final size=MediaQuery.of(context).size.height;
//     return Container(
//        // color: kprimaryColor,
//         padding: EdgeInsets.all(20),
//         child: Column(
//            mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           // crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             Image(image: AssetImage(model.imageSrc),height: size * 0.5),
//             Column(
//               children: [
//               Text(model.text1,style: Theme.of(context).textTheme.headline3),
//               Text(model.text2),
//             ],),
//             Text("${model.index}",style: Theme.of(context).textTheme.headline6),
//             SizedBox(height: 80,)
//           ],
//         )
//
//     );
//   }
}
