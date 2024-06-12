

import 'package:flutter/material.dart';
import 'package:food_delivery/themes/app_bar_theme.dart';
import 'package:food_delivery/themes/buttom_sheet_theme.dart';
import 'package:food_delivery/themes/chip_theme.dart';
import 'package:food_delivery/themes/elevated_button_theme.dart';
import 'package:food_delivery/themes/outline_button_theme.dart';
import 'package:food_delivery/themes/text_field_theme.dart';

import 'check_box_theme.dart';
import 'text_theme.dart';

class TAppTheme {
TAppTheme._();

static ThemeData lightTheme =ThemeData(
  useMaterial3: true,
  brightness: Brightness.light,
 // backgroundColor: ,
  //  textStyle:TextStyle
  primaryColor: Colors.yellowAccent,
  textTheme: TTextTheme.lightTextThem,
  chipTheme: TChipTheme.lightChipTheme,
  scaffoldBackgroundColor: Colors.white,
  appBarTheme: TAppBarTheme.lightAppBarTheme,
  checkboxTheme: TCheckBoxTheme.lightCheckBoxTheme,
  bottomSheetTheme: TBottomSheetThem.lightBottomSheetTheme,
  elevatedButtonTheme: TElevatedButtonTheme.lightElevatedButtonTheme,
  outlinedButtonTheme: TOutLineButtonTheme.lightOutlinebuttonTheme,
  inputDecorationTheme: TTextFieldTheme.lightInputDecorationTheme
);

static ThemeData darkTheme =ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.black,
    textTheme: TTextTheme.darkTextThem,
    chipTheme: TChipTheme.darkChipTheme,
    appBarTheme: TAppBarTheme.darkAppBarTheme,
    checkboxTheme: TCheckBoxTheme.darkCheckBoxTheme,
    bottomSheetTheme: TBottomSheetThem.darkBottomSheetTheme,
    elevatedButtonTheme: TElevatedButtonTheme.darkElevatedButtonTheme,
    outlinedButtonTheme: TOutLineButtonTheme.darkOutlinebuttonTheme,
    inputDecorationTheme: TTextFieldTheme.darkInputDecorationTheme
);
}