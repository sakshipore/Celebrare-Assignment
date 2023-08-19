import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyTextStyle {
  static const String poppinsFont = "Poppins";

  static TextStyle get titleTextStyle => TextStyle(
        fontFamily: poppinsFont,
        fontWeight: FontWeight.w400,
        color: Colors.black54,
        fontSize: 20.sp,
        fontStyle: FontStyle.italic
      );

  static TextStyle get subTitleTextStyle => TextStyle(
        fontFamily: poppinsFont,
        fontWeight: FontWeight.w300,
        color: Colors.black45,
        fontSize: 14.sp,
        fontStyle: FontStyle.italic
      );

  static TextStyle get normalTextStyle => TextStyle(
    fontFamily: poppinsFont, 
    fontWeight: FontWeight.w400, 
    color: Colors.white, 
    fontSize: 14.sp,
  );
}
