import 'dart:developer';
import 'dart:io';

import 'package:get/get.dart';
import 'package:celebrare_assignment/utils/pick_image.dart';

class HomeController extends GetxController {
  File? image;
  bool isLoading = true;

  Future<void> pickingImage() async {
    File? temp = await pickImage();
    if (temp != null) {
      image = temp;
      update();
    } else {
      log("Image was not picked");
    }
  }


}
