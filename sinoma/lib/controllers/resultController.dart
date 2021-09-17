import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sinoma/constants/asset_path.dart';
import 'package:sinoma/themes/const.dart';
import 'package:tflite/tflite.dart';

class ResultController extends GetxController {
  var loading = true.obs;
  var image = Get.arguments;
  var result;
  var isCancer = true.obs;
  TextStyle stylehasil;
  String hasil;
  // Load model on start
  @override
  void onInit() {
    super.onInit();
    try {
      loadModel();
      classifyImage(image);
    } catch (e) {
      Get.back();
      Get.snackbar("Terjadi Kesalahan", "Coba Lagi",
          colorText: Colors.red,
          backgroundColor: whiteColor,
          duration: Duration(seconds: 5));
    }
  }

  // Dispose Tflite
  @override
  void dispose() {
    super.dispose();
    Tflite.close();
  }

  // Load Tflite Model method
  loadModel() async {
    await Tflite.loadModel(
        model: modelTF, labels: labelTF); // TODO : Deploy Model
  }

  // classify method
  classifyImage(File image) async {
    var output = await Tflite.runModelOnImage(
      path: image.path,
      numResults: 2,
      threshold: 0.5,
      imageMean: 127.5,
      imageStd: 127.5,
    );
    result = output;

    if (result[0]['label'] == '1 cancer') {
      isCancer.value = true;
    } else {
      isCancer.value = false;
    }
    hasilController();
    styleController();
    update();
    loading.value = false;
  }

  void styleController() {
    isCancer.value == true
        ? stylehasil = lightredText
        : stylehasil = lightgreenText;
  }

  void hasilController() {
    isCancer.value == true
        ? hasil =
            "Sistem menunjukkan terdapat indikasi yang mengarah ke kanker dengan posibilitas ${(result[0]['confidence'] * 100).toStringAsFixed(1)}%"
        : hasil =
            "Sistem menunjukkan tidak terdapat indikasi yang mengarah ke kanker dengan posibilitas ${(result[0]['confidence'] * 100).toStringAsFixed(1)}%";
  }
}
