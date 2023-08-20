import 'dart:developer';
import 'dart:io';

import 'package:celebrare_assignment/widgets/circle_image.dart';
import 'package:celebrare_assignment/widgets/original_image.dart';
import 'package:get/get.dart';
import 'package:celebrare_assignment/utils/pick_image.dart';

class HomeController extends GetxController {
  File? image;
  bool isLoading = true;
  int index = 0;

  Future<void> pickingImage() async {
    File? temp = await pickImage();
    if (temp != null) {
      image = temp;
      update();
    } else {
      log("Image was not picked");
    }
  }

  getShape(int index) {
    try {
      if (index == 0) {
        OriginalImage(image: image!);
      }
      if (index == 1) {
        CircleImage(image: image!);
      }
    } catch (e) {
      log(e.toString());
    } finally {
      update();
    }
  }
}
