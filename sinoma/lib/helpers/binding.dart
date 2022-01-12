import 'package:get/get.dart';
import 'package:sinoma/controllers/diagnoseController.dart';
import 'package:sinoma/pages/dashboard/dashboard_controller.dart';

/// binding controller
class Binding extends Bindings {
  @override
  void dependencies() {
    Get.put((DashboardController()));
    Get.put((DiagnoseController()));
  }
}
