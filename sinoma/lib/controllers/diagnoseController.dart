import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:sinoma/helpers/loading_widget.dart';
import 'package:sinoma/pages/diagnose/widgets/diagnose_result.dart';
import 'package:sinoma/themes/const.dart';

class DiagnoseController extends GetxController {
  File imageFile;
  final picker = ImagePicker();

  /// fungsi untuk mengambil gambar dari kamera langsung
  pickCameraImage() async {
    showLoading();
    try {
      var image = await picker.pickImage(source: ImageSource.camera);
      imageFile = File(image.path);
      Get.offAll(() => DiagnoseResult(), arguments: imageFile);
    } catch (e) {
      debugPrint(e.toString());
      Get.back();
      Get.snackbar("Terjadi Kesalahan", "Coba Lagi",
          colorText: Colors.red,
          backgroundColor: whiteColor,
          duration: Duration(seconds: 5));
    }
  }

  /// fungsi untuk mengambil gambar dari galeri
  pickGalleryImage() async {
    showLoading();
    try {
      var image = await picker.pickImage(source: ImageSource.gallery);
      imageFile = File(image.path);
      Get.offAll(() => DiagnoseResult(), arguments: imageFile);
    } catch (e) {
      debugPrint(e.toString());
      Get.back();
      Get.snackbar("Terjadi Kesalahan", "Coba Lagi",
          colorText: Colors.red,
          backgroundColor: whiteColor,
          duration: Duration(seconds: 5));
    }
  }
}
