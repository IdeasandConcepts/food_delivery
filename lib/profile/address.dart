import 'package:flutter/material.dart';


class address extends StatefulWidget {
  const address({super.key});

  @override
  State<address> createState() => _addressState();
}

class _addressState extends State<address> {
  @override
  Widget build(BuildContext context) {
    final currentWidth = MediaQuery.of(context).size.width-36.4285;
    final currenheight = MediaQuery.of(context).size.height+128.571429;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        shadowColor:Colors.white,
        iconTheme: const IconThemeData(color: Colors.black),
        title: Text("Adding Shipping Address" , 
        style:   TextStyle(fontSize: 18,fontWeight: FontWeight.w900,color: Colors.black)),
        leading: IconButton(
          icon: const Icon(Icons.chevron_left),
          onPressed: (){},
        ),
       
      ),

      body:  Column (
          children: [

             Padding(
              padding: const EdgeInsets.fromLTRB(17, 35 ,0,0),
              child: Container(
                height: 64,
                width: 343,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.05),
                      spreadRadius: 0,
                      blurRadius: 8,
                      offset: Offset(0, 1), // changes position of shadow
                       ),
                         ],
                ),
                 child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Full name",
                      filled: true,
                      fillColor:Color.fromRGBO(255, 255, 255, 1) ,
                      hintStyle:  TextStyle(fontSize: 11, fontWeight: FontWeight.w400, color: Color.fromRGBO(155, 155, 155, 1))) , 

                  ),
              ),
            ),

           // Container()

           Padding(
              padding: const EdgeInsets.fromLTRB(16, 20 ,0,0),
              child: Container(
                height: 64,
                width: 343,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.05),
                      spreadRadius: 0,
                      blurRadius: 8,
                      offset: Offset(0, 1), // changes position of shadow
                       ),
                         ],
                ),
                 child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      //border: BorderRadius.circular(4),
                      labelText: "Address",
                      filled: true,
                      fillColor:Color.fromRGBO(255, 255, 255, 1) ,
                      labelStyle:  TextStyle(fontSize: 11, fontWeight: FontWeight.w400, color: Color.fromRGBO(155, 155, 155, 1))) , 
                    ),
                  ),

            ),


            Padding(
              padding: const EdgeInsets.fromLTRB(16, 20 ,0,0),
              child: Container(
                height: 64,
                width: 343,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.05),
                      spreadRadius: 0,
                      blurRadius: 8,
                      offset: Offset(0, 1), // changes position of shadow
                       ),
                         ],
                ),
                 child: TextFormField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      labelText: "City"  ,
                      filled: true,
                      fillColor:Color.fromRGBO(255, 255, 255, 1) ,
                      labelStyle:  TextStyle(fontSize: 11, fontWeight: FontWeight.w400, color: Color.fromRGBO(155, 155, 155, 1))) , 
                    ),
                  ),

            ),


            Padding(
              padding: const EdgeInsets.fromLTRB(17, 20 ,0,0),
              child: Container(
                height: 64,
                width: 343,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.05),
                      spreadRadius: 0,
                      blurRadius: 8,
                      offset: Offset(0, 1), // changes position of shadow
                       ),
                         ],
                ),
                 child: TextFormField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      labelText: "State/Province/Region"  ,
                      filled: true,
                      fillColor:Color.fromRGBO(255, 255, 255, 1) ,
                      labelStyle:  TextStyle(fontSize: 11, fontWeight: FontWeight.w400, color: Color.fromRGBO(155, 155, 155, 1))) , 
                    ),
                  ),

            ),


            Padding(
              padding: const EdgeInsets.fromLTRB(16, 20 ,0,0),
              child: Container(
                height: 64,
                width: 343,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.05),
                      spreadRadius: 0,
                      blurRadius: 8,
                      offset: Offset(0, 1), // changes position of shadow
                       ),
                         ],
                ),
                 child: TextFormField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      labelText: "Zip Code (Postal Code)"  ,
                      filled: true,
                      fillColor:Color.fromRGBO(255, 255, 255, 1) ,
                      labelStyle:  TextStyle(fontSize: 11, fontWeight: FontWeight.w400, color: Color.fromRGBO(155, 155, 155, 1))) , 
                    ),
                  ),

            ),

            
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 20 ,0,0),
              child: Container(
                height: 64,
                width: 343,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.05),
                      spreadRadius: 0,
                      blurRadius: 8,
                      offset: Offset(0, 1), // changes position of shadow
                       ),
                         ],
                ),
                 child: TextFormField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      labelText: "Country"  ,
                      filled: true,
                      fillColor:Color.fromRGBO(255, 255, 255, 1) ,
                      labelStyle:  TextStyle(fontSize: 11, fontWeight: FontWeight.w400, color: Color.fromRGBO(155, 155, 155, 1))) , 
                    ),
                  ),

            ),

            Container(
              height: 48,
              width: 343,
              decoration:  BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Color.fromRGBO(33, 150, 83, 1),
                
              ),
              child: TextButton(onPressed: shippingAddress(), 
                      child: const Text("SAVE ADDRESS" ,style: TextStyle(
    color: Colors.white, fontSize: 14, fontWeight: FontWeight.w500),)),
            ),
            




          ],
        ),
      



    );
    //return const Placeholder();
  }
  
  shippingAddress() {}
}