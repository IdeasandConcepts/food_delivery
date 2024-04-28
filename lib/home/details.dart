

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:food_delivery/const.dart';

class DetailsScreenOne extends StatefulWidget {
  const DetailsScreenOne({Key? key}) : super(key: key);

  @override
  State<DetailsScreenOne> createState() => _DetailsScreenOneState();
}

class _DetailsScreenOneState extends State<DetailsScreenOne> {


  bool isBeefChecked = false;
  bool isCheeseChecked = false;
  bool isFriesSChecked = false;
  bool isFriesRChecked = false;
  bool isFriesMChecked = false;
  bool iFriesLChecked = false;
  bool isGrandSaladChecked = false;
  bool isSideSaladChecked = false;
  bool isKetchupChecked = false;
  bool isCocaColaSChecked = false;
  bool isCocaColaMChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(height: MediaQuery.of(context).size.height-100,
      child: MaterialButton(

          onPressed: (){
    Get.defaultDialog(
    title: "",
    content: Container(
    width: MediaQuery.of(context).size.width-100,
    height: MediaQuery.of(context).size.height-145,
    child: ListView(
    shrinkWrap: true,
    //  child:  Wrap(
    children: [
    Padding(
    padding: const EdgeInsets.only(
        left:15.0,right: 15.0,top: 10.0),
      //child: ,
    ),

      Padding(
    padding: const EdgeInsets.only(
    left:15.0,right: 15.0,top: 10.0),
    child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //crossAxisAlignment: CrossAxisAlignment.start,
    children: [
    Text("Beef"),
    Text("${20}"),
    Checkbox(
    checkColor: Colors.white,
    value: isBeefChecked,
    shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(5.0))),
    onChanged: (bool? value) {
    setState(() {
    isBeefChecked = value!;
    });
    },
    ),
    ],
    ),

    ),

    Padding(
    padding: const EdgeInsets.only(
    left:15.0,right: 15.0,top: 10.0),
    child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //crossAxisAlignment: CrossAxisAlignment.start,
    children: [
    Text("Cheese"),
    Text("${20}"),
    Checkbox(
    checkColor: Colors.white,
    value: isCheeseChecked,
    shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(5.0))),
    onChanged: (bool? value) {
    setState(() {
    isCheeseChecked = value!;
    });
    },
    ),
    ],
    ),

    ),


    Padding(
    padding: const EdgeInsets.only(
    left:15.0,right: 15.0,top: 10.0),
    child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //crossAxisAlignment: CrossAxisAlignment.start,
    children: [
    Text("Fries-S"),
    Text("${20}"),
    Checkbox(
    checkColor: Colors.white,
    value: isFriesSChecked,
    shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(5.0))),
    onChanged: (bool? value) {
    setState(() {
    isFriesSChecked = value!;
    });
    },
    ),
    ],
    ),

    ),


    Padding(
    padding: const EdgeInsets.only(
    left:15.0,right: 15.0,top: 10.0),
    child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //crossAxisAlignment: CrossAxisAlignment.start,
    children: [
    Text("Fries-R"),
    Text("${20}"),
    Checkbox(
    checkColor: Colors.white,
    value: isFriesRChecked,
    shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(5.0))),
    onChanged: (bool? value) {
    setState(() {
    isFriesRChecked = value!;
    });
    },
    ),
    ],
    ),

    ), Padding(
    padding: const EdgeInsets.only(
    left:15.0,right: 15.0,top: 10.0),
    child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //crossAxisAlignment: CrossAxisAlignment.start,
    children: [
    Text("Fries-M"),
    Text("${20}"),
    Checkbox(
    checkColor: Colors.white,
    value: isFriesMChecked,
    shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(5.0))),
    onChanged: (bool? value) {
    setState(() {
    isFriesMChecked = value!;
    });
    },
    ),
    ],
    ),

    ),
    Padding(
    padding: const EdgeInsets.only(
    left:15.0,right: 15.0,top: 10.0),
    child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //crossAxisAlignment: CrossAxisAlignment.start,
    children: [
    Text("Fries-L"),
    Text("${20}"),
    Checkbox(
    checkColor: Colors.white,
    value: iFriesLChecked,
    shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(5.0))),
    onChanged: (bool? value) {
    setState(() {
    iFriesLChecked = value!;
    });
    },
    ),
    ],
    ),

    ), Padding(
    padding: const EdgeInsets.only(
    left:15.0,right: 15.0,top: 10.0),
    child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //crossAxisAlignment: CrossAxisAlignment.start,
    children: [
    Text("Grand Salad"),
    Text("${20}"),
    Checkbox(
    checkColor: Colors.white,
    value: isGrandSaladChecked,
    shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(5.0))),
    onChanged: (bool? value) {
    setState(() {
    isGrandSaladChecked = value!;
    });
    },
    ),
    ],
    ),

    ), Padding(
    padding: const EdgeInsets.only(
    left:15.0,right: 15.0,top: 10.0),
    child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //crossAxisAlignment: CrossAxisAlignment.start,
    children: [
    Text("Side Salad"),
    Text("${20}"),
    Checkbox(
    checkColor: Colors.white,
    value: isSideSaladChecked,
    shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(5.0))),
    onChanged: (bool? value) {
    setState(() {
    isSideSaladChecked = value!;
    });
    },
    ),
    ],
    ),

    ), Padding(
    padding: const EdgeInsets.only(
    left:15.0,right: 15.0,top: 10.0),
    child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //crossAxisAlignment: CrossAxisAlignment.start,
    children: [
    Text("Ketchup"),
    Text("${20}"),
    Checkbox(
    checkColor: Colors.white,
    value: isKetchupChecked,
    shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(5.0))),
    onChanged: (bool? value) {
    setState(() {
    isKetchupChecked = value!;
    });
    },
    ),
    ],
    ),

    ), Padding(
    padding: const EdgeInsets.only(
    left:15.0,right: 15.0,top: 10.0),
    child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //crossAxisAlignment: CrossAxisAlignment.start,
    children: [
    Text("Coca-Cola-S"),
    Text("${20}"),
    Checkbox(
    checkColor: Colors.white,
    value: isCocaColaSChecked,
    shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(5.0))),
    onChanged: (bool? value) {
    setState(() {
    isCocaColaSChecked = value!;
    });
    },
    ),
    ],
    ),

    ), Padding(
    padding: const EdgeInsets.only(
    left:15.0,right: 15.0,top: 10.0),
    child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //crossAxisAlignment: CrossAxisAlignment.start,
    children: [
    Text("Coca-Cola-M"),
    Text("${20}"),
    Checkbox(
    checkColor: Colors.white,
    value: isCocaColaMChecked,
    shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(5.0))),
    onChanged: (bool? value) {
    setState(() {
    isCocaColaMChecked = value!;
    });
    },
    ),
    ],
    ),

    ),
    ],
    ),
    )
    );
    },
      child: Container(
          height: 50,
          width: 100,
          decoration: BoxDecoration(
              border: Border.all(),
              color: kprimaryColor.withOpacity(0.5),
              borderRadius:BorderRadius.circular(25)),
          child: Center(child: Text('List'.tr))),
    ),
      ),
    );
  }
}
