import 'dart:io';

import 'package:image_picker/image_picker.dart';

File? pickedImage;

Future<File?> pickImage() async {
  final image = await ImagePicker().pickImage(source: ImageSource.gallery);
  if (image == null) return null;

  final img = File(image.path);
  pickedImage = img;
  return pickedImage;
}
