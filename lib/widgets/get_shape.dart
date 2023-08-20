import 'dart:io';

import 'package:celebrare_assignment/widgets/circle_image.dart';
import 'package:celebrare_assignment/widgets/original_image.dart';
import 'package:celebrare_assignment/widgets/rectangle_image.dart';
import 'package:celebrare_assignment/widgets/square_image.dart';
import 'package:flutter/material.dart';

Widget getShape(int index, File image) {
    if (index == 0) {
      return OriginalImage(image: image);
    } else if (index == 2) {
      return SquareImage(image: image);
    } else if (index == 3) {
      return CircleImage(image: image);
    } else if (index == 4) {
      return RectangleImage(image: image);
    }

    return SizedBox();
  }