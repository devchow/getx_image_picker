import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'image_controller.dart';

class Image extends StatefulWidget {
  const Image({Key? key}) : super(key: key);

  @override
  State<Image> createState() => _ImageState();
}

class _ImageState extends State<Image> {
  //
  final ImagePickerController _imagePickerController = ImagePickerController();
  //
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Image Picker'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Obx(() => _imagePickerController.imagePath.value == ''
                ? const Center(child: Text("Select an Image"),)
                : Image.file()
            ),
          ],
        ),
      )
    );
  }
}