import 'package:flutter/material.dart';
import 'package:food_delivery/model/users.dart';
import 'package:get/get.dart';
import 'package:food_delivery/profile/my_orders_screen.dart';
import 'package:food_delivery/profile/setting_screen.dart';


class profile extends StatefulWidget {
  final String user ;
  final String profileImage;
  const profile({super.key, required this.user, required this.profileImage, });

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
  @override
  Widget build(BuildContext context) {
    //return const Placeholder();
    // final currentWidth = MediaQuery.of(context).size.width-20.4285;
    // final currenheight = MediaQuery.of(context).size.height+148.571429;

    int orderes=0;
    int address=0;
    int items=0;

    return Scaffold(
      appBar: AppBar(
        backgroundColor:const Color.fromRGBO(249, 249, 249, 1),
        iconTheme: const IconThemeData(color: Color.fromRGBO(249, 249, 249, 1)),
        elevation: 0,
        actions: [
           IconButton(
            icon: const Icon(Icons.search,color: Color.fromRGBO(34, 34, 34, 1),size: 24,),
            onPressed: (){}
           )
        ],
        
      ),

      body: SingleChildScrollView( child:
      
      Column(
        
        
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,

        children: [
          
          Padding(
            padding: const EdgeInsets.only(left:15,right: 15,top:20),
            child: Text("My profile", style: TextStyle(fontWeight: FontWeight.w700, fontSize: 34, )),
          ),

          Row(
            
            children: [
              Padding(
                padding: const EdgeInsets.only(left:15,right: 15,top:20),
                child: CircleAvatar(
                  radius: 30,
                  child: ClipOval(child: Image.asset("assets/images/profile.png",height: 101, width: 69, fit: BoxFit.cover,))
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(left:15,right: 15,top:20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                       Text("Mohamed ", style:  TextStyle(
    fontSize: 18, fontWeight: FontWeight.w900, color: Color.fromRGBO(34, 34, 34, 1))),
                    
                       Text("mohamed@mail.com", style: TextStyle(color: Color.fromRGBO(155, 155, 155, 1),
    fontWeight: FontWeight.w500, fontSize: 14)),
                    
                  ],
                ),
              )

              

            ],
          ),

          InkWell(
            onTap: (){
              Get.to(()=>MyOrders(
                profileImage: widget.profileImage,
                user: widget.user,

               // branch: widget.profileImage,
              ));
            },
            child: Container(
             // width: 360,
              decoration: const BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                      width: 0.5 ,
                      color: Color.fromRGBO(155, 155, 155, 1)
                      )
                  )
             ),

              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                   Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left:15,right: 15,top:10),
                        child: Text("My orders", style:   TextStyle(fontSize: 16, fontWeight: FontWeight.w900)),),

                      Padding(
                        padding: const EdgeInsets.only(left:15,right: 15,),
                        child: Text("Already have $orderes orders" ,style:    TextStyle(fontSize: 11, fontWeight: FontWeight.w400)),),

                    ],
                  ),

                  const Padding(
                    padding: const EdgeInsets.only(left:15,right: 15,top:10),
                    child: Icon(Icons.keyboard_arrow_right, color: Color.fromRGBO(155, 155, 155, 1),),
                  )
                ],
              ),
            ),
          ),



          InkWell(
            onTap: (){},
            child: Container(
              decoration: const BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                      width: 0.5 ,
                      color: Color.fromRGBO(155, 155, 155, 1)
                      )
                  )
              ),

              child: Padding(
                padding: const EdgeInsets.fromLTRB(0,0,0,0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [ 
                    
                     Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                          padding: const EdgeInsets.fromLTRB(15, 18, 0, 0),
                          child: Text("Shipping addresses",
                              style:    TextStyle(fontSize: 16, fontWeight: FontWeight.w900)),),

                        Padding(
                          padding: const EdgeInsets.fromLTRB(16,6,0,16),
                          child: Text("$address addresses" ,style:    TextStyle(fontSize: 11, fontWeight: FontWeight.w400)),),

                      ],
                    ),

                    const Padding(
                      padding: const EdgeInsets.only(left:15,right: 15,top:10),
                      child: Icon(Icons.keyboard_arrow_right, color: Color.fromRGBO(155, 155, 155, 1),),
                    )
                  ],
                ),
              ),
            ),
          ),


          InkWell(
            onTap: (){},
            child: Container(
              decoration: const BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                      width: 0.5 ,
                      color: Color.fromRGBO(155, 155, 155, 1)
                      )
                  )
              ),

              child: Padding(
                padding: const EdgeInsets.fromLTRB(0,0,0,0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [ 
                    
                     Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                          padding: const EdgeInsets.fromLTRB(15, 19, 0, 0),
                          child: Text("Payment methods", style:    TextStyle(fontSize: 16, fontWeight: FontWeight.w900)),),

                        Padding(
                          padding: const EdgeInsets.fromLTRB(15,6,0,16),
                          child: Text("Visa  **34" ,style:    TextStyle(fontSize: 11, fontWeight: FontWeight.w400)),),

                      ],
                    ),

                    const Padding(
                      padding: const EdgeInsets.only(left:15,right: 15,top:10),
                      child: Icon(Icons.keyboard_arrow_right, color: Color.fromRGBO(155, 155, 155, 1),),
                    )
                  ],
                ),
              ),
            ),
          ),


          InkWell(
            onTap: (){},
            child: Container(
              decoration: const BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                      width: 0.5 ,
                      color: Color.fromRGBO(155, 155, 155, 1)
                      )
                  )
              ),

              child: Padding(
                padding: const EdgeInsets.fromLTRB(0,0,0,0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [ 

                     Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                          padding: const EdgeInsets.fromLTRB(15, 19, 0, 0),
                          child: Text("Promocodes", style:    TextStyle(fontSize: 16, fontWeight: FontWeight.w900)),),

                        Padding(
                          padding: const EdgeInsets.fromLTRB(16,6,0,16),
                          child: Text("You have special promocodes" ,style:    TextStyle(fontSize: 11, fontWeight: FontWeight.w400)),),

                      ],
                    ),

                    const Padding(
                      padding: const EdgeInsets.only(left:15,right: 15,top:10),
                      child: Icon(Icons.keyboard_arrow_right, color: Color.fromRGBO(155, 155, 155, 1),),
                    )
                  ],
                ),
              ),
            ),
          ),


          InkWell(
            onTap: (){},
            child: Container(
              decoration: const BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                      width: 0.5 ,
                      color: Color.fromRGBO(155, 155, 155, 1)
                      )
                  )
              ),

              child: Padding(
                padding: const EdgeInsets.fromLTRB(0,0,0,0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [ 
                    
                     Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                          padding: const EdgeInsets.fromLTRB(15, 19, 0, 0),
                          child: Text("My reviews", style:    TextStyle(fontSize: 16, fontWeight: FontWeight.w900)),),

                        Padding(
                          padding: const EdgeInsets.fromLTRB(16,6,0,16),
                          child: Text("Reviews for $items items" ,style:    TextStyle(fontSize: 11, fontWeight: FontWeight.w400)),),
                      ],
                    ),

                    const Padding(
                      padding: const EdgeInsets.only(left:15,right: 15,top:10),
                      child: Icon(Icons.keyboard_arrow_right, color: Color.fromRGBO(155, 155, 155, 1),),
                    )
                  ],
                ),
              ),
            ),
          ),



          InkWell(
            onTap: (){
              Get.to(()=>Setting());
            },
            child: Container(
              decoration: const BoxDecoration(
                border: Border(
                  bottom: BorderSide.none
                  )
              ),

              child: Padding(
                padding: const EdgeInsets.fromLTRB(0,0,0,0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [ 
                    
                     Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                          padding: const EdgeInsets.fromLTRB(15, 19, 0, 0),
                          child: Text("Settings", style:    TextStyle(fontSize: 16, fontWeight: FontWeight.w900)),),

                        Padding(
                          padding: const EdgeInsets.fromLTRB(15,6,0,16),
                          child: Text("Notifications, password" ,style:    TextStyle(fontSize: 11, fontWeight: FontWeight.w400)),),

                      ],
                    ),

                    const Padding(
                      padding: const EdgeInsets.only(left:15,right: 15,top:10),
                      child: Icon(Icons.keyboard_arrow_right, color: Color.fromRGBO(155, 155, 155, 1),),
                    )
                  ],
                ),
              ),
            ),
          ),
          

        ],
      ),
      ),
    
    );
    
    
  }
}