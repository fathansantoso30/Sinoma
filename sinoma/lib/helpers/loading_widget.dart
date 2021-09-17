import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sinoma/themes/const.dart';

showLoading() {
  Get.defaultDialog(
      title: "Loading...",
      backgroundColor: whiteColor,
      content: CircularProgressIndicator(
        valueColor: AlwaysStoppedAnimation(blueColor),
      ),
      barrierDismissible: false);
}

dismissLoadingWidget() {
  Get.back();
}
