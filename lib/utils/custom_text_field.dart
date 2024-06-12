// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_delivery/utils/colors.dart';

import '../themes/text_field_theme.dart';

class CustomTextFormField extends StatelessWidget {
  //final TextEditingController controller;
 // final String title;
  final String? label;
  final String hint;
  final IconData? suffix;
  final bool readOnly;
  final TextInputType keyBoard;
  final int maxLength;
  const CustomTextFormField({
    super.key,
   // this.controller,
    this.hint = 'hint',
 //   this.title = 'title',
    this.readOnly = false,
    required this.keyBoard,
    this.maxLength = 6,
     this.suffix,
     this.label,

  });

  @override
  Widget build(BuildContext context) {
    var width= MediaQuery.sizeOf(context).width;
    return  TextField(
       // controller:controller,
        keyboardType: keyBoard,
        decoration: InputDecoration(
          counterText: label,
          labelText: label,
          hintText: hint,
          errorMaxLines: TTextFieldTheme.lightInputDecorationTheme.errorMaxLines,
          suffixIconColor: TTextFieldTheme.lightInputDecorationTheme.suffixIconColor,
          prefixIconColor: TTextFieldTheme.lightInputDecorationTheme.prefixIconColor,
          labelStyle: TTextFieldTheme.lightInputDecorationTheme.labelStyle,
          hintStyle: TTextFieldTheme.lightInputDecorationTheme.hintStyle,
          errorStyle: TTextFieldTheme.lightInputDecorationTheme.errorStyle,
          floatingLabelStyle: TTextFieldTheme.lightInputDecorationTheme.floatingLabelStyle,
          border: TTextFieldTheme.lightInputDecorationTheme.border,
          enabledBorder: TTextFieldTheme.lightInputDecorationTheme.enabledBorder,
          focusedBorder: TTextFieldTheme.lightInputDecorationTheme.focusedBorder,
          errorBorder: TTextFieldTheme.lightInputDecorationTheme.errorBorder,
          focusedErrorBorder: TTextFieldTheme.lightInputDecorationTheme.focusedErrorBorder,
        ),);
  }
}
