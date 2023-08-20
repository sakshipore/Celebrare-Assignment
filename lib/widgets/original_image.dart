
import 'dart:io';

import 'package:flutter/material.dart';

class OriginalImage extends StatelessWidget {
  final File image;
  OriginalImage({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Image.file(image),
    );
  }
}
