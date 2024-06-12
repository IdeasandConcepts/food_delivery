import 'package:flutter/material.dart';
import 'package:food_delivery/auth/auth_page.dart';
import 'package:food_delivery/const.dart';
import 'package:get/get.dart';





class SuccessScreen extends StatefulWidget {
  const SuccessScreen({super.key});

  @override
  State<SuccessScreen> createState() => _SuccessScreenState();
}

class _SuccessScreenState extends State<SuccessScreen> {
  @override
  Widget build(BuildContext context) {
    final currentWidth = MediaQuery.of(context).size.width-36.4285;
    final currenheight = MediaQuery.of(context).size.height+128.571429;
    //return const Placeholder();
    
    return Scaffold(

      body: Container(
        height: currenheight,
        width: currentWidth,
        decoration: BoxDecoration(
          color: Colors.white
        ),
        child: Column(
        
        children:  [
          
          Padding(
            padding: const EdgeInsets.fromLTRB(70, 192, 0, 0),
            child: Image.asset('assets/images/bags.png', height: 213,width: 208,),
          ),
          
          Padding(
            padding: EdgeInsets.fromLTRB(115, 46 , 0, 0),
            child: Text("Success!",style: TextStyle( fontSize: 34,fontWeight: FontWeight.w700)),
          ),

          Padding(
            padding: const EdgeInsets.only(left:10, right:10 , top:40),
            child: Container(
              alignment: Alignment.center,
              height: 42,
              width: 195,
              
              child: Text("Your order will be delivered soon. Thank you for choosing our app!", 
              style: TextStyle(fontSize: 14, fontWeight:FontWeight.w400 ))),
          ),

          Padding(
            padding: const EdgeInsets.only(left:20, right:20 , top:40),
            child: Container(

              height: 48,
              width: 343,
              decoration: BoxDecoration(
                color: kprimaryColor,
                borderRadius: BorderRadius.circular(25)
              ),
              child: TextButton( onPressed: (){
                Get.to(()=>AndroidAuthPage());
              // Navigator.push(context, MaterialPageRoute(
              // builder:(context)=> MyApp()));
                    },
                  child: Text("CONTINUE SHOPPING",style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w700)) )),
          ),
          
        ],
      ),

      )
      
      
      



    );
    
    

    




  }
  
  


}