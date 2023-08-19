import 'dart:io';

import 'package:flutter/material.dart';

class CircleImage extends StatelessWidget {
  final File image;
  CircleImage({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      child: Image.file(image),
    );
  }
}
