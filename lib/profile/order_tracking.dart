import 'package:flutter/material.dart';

class Process extends StatefulWidget {
  const Process({super.key});

  @override
  State<Process> createState() => _ProcessState();
}

class _ProcessState extends State<Process> {
  @override
  Widget build(BuildContext context) {
    final currentWidth = MediaQuery.of(context).size.width-21.42;
    final currenheight = MediaQuery.of(context).size.height+160.58;
    return Scaffold(

        body:

        Container(
          decoration: BoxDecoration(
              color: Colors.white
          ),
          child: SingleChildScrollView(child: Column(

            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 106,left: 14),
                child: Text("My Orders" ,style:  TextStyle(
                    color: Color.fromRGBO(34, 34, 34, 1), 
                    fontSize: 34, fontWeight: FontWeight.w700),)),
              

              Padding(
                padding: const EdgeInsets.only(top: 17, left:25 ),

                child: Container(
                  height: 30,
                  width: 340,

                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height:30 ,
                        width: 100,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(29)
                        ),
                        child: TextButton(
                            onPressed: (){},
                            child: Text("Delivered" , style:    TextStyle(fontSize: 14,fontWeight: FontWeight.w500, color: Colors.black)),)),
            


                      Container(
                        height:30 ,
                        width: 100,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(255, 190, 24, 1),
                          borderRadius: BorderRadius.circular(29),

                        ),
                        child: TextButton(
                            onPressed: (){},
                            child: Text("Processing" , style:    TextStyle(fontSize: 14,fontWeight: FontWeight.w500, color: Colors.white)),)),
                  



                      Container(
                        height:30 ,
                        width: 100,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(29)
                        ),
                        child: TextButton(
                            onPressed: (){},
                            child: Text("Canceled" , style:    TextStyle(fontSize: 14,fontWeight: FontWeight.w500, color: Colors.black)),)),



                    ],),

                ),
              ),


              Padding(
                padding: const EdgeInsets.only(left: 17, top:24 ),
                child: Container(
                  height: 398 ,
                  width: 362,
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),

                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //crossAxisAlignment: CrossAxisAlignment.start,
                    children: [


                      _proccesOrder(
                          image: "assets/images/boxx.png",
                          step: "Confirmed Order",
                          time: "11 : 45 PM"),

                      _proccesOrder(
                          image: "assets/images/cooking.png",
                          step: "in kitchen",
                          time: "11 : 50 PM"),

                      _proccesOrder(
                          image: "assets/images/truck.png" ,
                          step: "Delivery Order",
                          time: "12 : 10 AM"),

                      _proccesOrder(
                          image: "assets/images/man.png",
                          step: "The order has been delivered",
                          time: "12 : 25 PM"),





                    ],),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 97, top: 84.55),
                child: Container(
                    height: 50.55,
                    width: 190,
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(241, 21, 21, 1),
                        borderRadius: BorderRadius.circular(15)
                    ),
                    child: TextButton(
                        onPressed: (){},
                        child: Text("Canceled", style:  TextStyle(fontSize: 20,fontWeight: FontWeight.w700, color: Color.fromRGBO(255, 255, 255, 1))),)

                ),
              )


            ],
          ),),
        )
    );



  }

  Container _proccesOrder({required String image, required String step, required String time }){
return Container(
child: Row(
mainAxisAlignment: MainAxisAlignment.spaceBetween,
children: [
SizedBox(
child: Row(children: [
Image.asset(image, scale:2,),

Padding(
padding: const EdgeInsets.only(left: 6),
child: Text(step, style:    TextStyle(fontSize: 10,fontWeight: FontWeight.w600, color: Colors.black))),

],),
),

Padding(
padding: const EdgeInsets.only(right: 20),
child: Text(time , style:  TextStyle(fontSize: 10, fontWeight: FontWeight.w400, color: Colors.black),),
)

],),
);
}


}