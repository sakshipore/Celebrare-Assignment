import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RectangleImage extends StatelessWidget {
  final File image;
  RectangleImage({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Container(
        height: 100.h,
        width: 200.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.r),
          boxShadow: [
            BoxShadow(
              blurRadius: 10.0,
              spreadRadius: 2.h,
              color: Colors.black,
            )
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10.r),
          child: Image.file(image, fit: BoxFit.fill,),),
      ),
    );
  }
}
