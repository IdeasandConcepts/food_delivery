import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_delivery/const.dart';



class CustomBouttm extends  StatelessWidget {
 // final void Function() onTap;
  final Color color;
  final String title;
  final double width;
  final double height;
  final double fontSize;
  final double radius;
  final FontWeight fontWeight;
  const CustomBouttm({
    super.key,
   // required this.onTap,
    required this.color,
    required this.title,
    this.width = 72,
    this.height = 26.73,
    this.fontSize = 14,
    this.fontWeight = FontWeight.w500,
    this.radius = 5,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width.w,
      height: height.h,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: color, borderRadius: BorderRadius.circular(radius.r)),
      child: Text(
        title,
        style: TextStyle(
            color:fontColor3,
            fontSize: fontSize.sp,
            fontWeight: fontWeight),
      ),
    );
  }
}
