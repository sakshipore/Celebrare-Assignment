
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OriginalImage extends StatelessWidget {
  final File image;
  OriginalImage({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150.h,
      width: 50.w,
      child: Image.file(image),
    );
  }
}
