import 'package:get/get.dart';

/// mengontrol layar login untuk ditampilkan atau tidak
class AppController extends GetxController {
  static AppController instance = Get.find();
  RxBool isLoginWidgetDisplayed = true.obs;

  changeDIsplayedAuthWidget() {
    isLoginWidgetDisplayed.value = !isLoginWidgetDisplayed.value;
  }
}
