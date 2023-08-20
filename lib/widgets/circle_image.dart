import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CircleImage extends StatelessWidget {
  final File image;
  CircleImage({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 25.h,
      width: 25.w, 
      child: ClipRRect(
        borderRadius: BorderRadius.circular(25.r),
        child: Image.file(image, fit: BoxFit.fill,)),
    );
  }
}
