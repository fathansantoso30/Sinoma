import 'package:get/get.dart';
import 'package:sinoma/pages/dashboard/dashboard_binding.dart';
import 'package:sinoma/pages/dashboard/dashboard_page.dart';
import 'package:sinoma/routes/app_routes.dart';

class AppPages {
  static var list = [
    GetPage(
        name: AppRoutes.DASHBOARD,
        page: () => DashboardPage(),
        binding: DashboardBinding())
  ];
}
