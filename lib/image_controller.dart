import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class ImagePickerController extends GetxController {
  var imagePath = ''.obs;
  var imageSize = ''.obs;

  //
  void getImage(ImageSource _imageSource) async
  {
    final pickedFile = await ImagePicker().pickImage(source: _imageSource);
    //
    if (pickedFile != null) {
      imagePath.value = pickedFile.path;
      // imageSize.value = '${((File(imagePath.value).lengthSync()) / 1024).toStringAsFixed(2)} KB';
      imageSize.value = '${((File(imagePath.value).lengthSync()) / 1024 / 1024).toStringAsFixed(2)} Mb';
      //
    } else {
      Get.snackbar("Error", "No image selected",
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.red,
        colorText: Colors.blueGrey,
      );
    }
  }
}