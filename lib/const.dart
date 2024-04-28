import 'package:flutter/material.dart';


const kprimaryColor = Color(0xFFFFBE18);
//Color.fromARGB(2, 2, 92, 102);
const kprimatyLightColor = Color(0xFFFFECDF);

const kBackgroundColor = Color(0xFFF8F8F1);
const kActiveIconColor = Color(0xFFE68342);
//const kTextColor=Color(0xFF222B45);
const kBlueLightColor = Color(0xFFC7BBF5);
const kBlueColor = Color(0xFF817DC0);
const kShadowColor = Color(0xFFE6E6E6);

const kprimaryGradientColor = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [Color(0xFFFFA53E), Color(0xFFFF7643)],
);
const kSecondoryColor = Color(0xFF979797);
const kTextColor = Color(0xFF757575);

const kAnimationDuration = Duration(milliseconds: 350);

// Errors
final List<String> errors = [
  //"enter a valid  Email Address!!",
  //  "Enter a strong Password",
];
// form Errors
final RegExp emailValidatorRegExp =
RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
const String emptydataError = "emptydata";
const String kIvalidValueError = "please Enter a valid phone_number";
const String kEmailNullError = "Please Enter Your Email";
const String kInvalidEmailError = "Please Enter a Valid E_mail Address ";
const String kPassNullError = "Please Enter Your Password";
const String kshortPassError = "You Entered Short Password";
const String kMatchPassError = "Passwords don't match";
const String validphonenumbernumber = "Plase Enter valid phonenumber number";
const String validIdnumber = "Plase Enter valid Iqama number ";
const String validBithday = "Plase Enter valid Birthday  ";
final otpInputDecoration = InputDecoration(
  contentPadding: EdgeInsets.symmetric(vertical: 15),
  enabledBorder: outLineInputBorder(),
  focusedBorder: outLineInputBorder(),
  border: outLineInputBorder(),
);

OutlineInputBorder outLineInputBorder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(15),
    borderSide: BorderSide(color: kTextColor),
  );
}
