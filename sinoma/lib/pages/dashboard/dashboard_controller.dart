import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:sinoma/pages/diagnose/widgets/diagnose_start.dart';
import 'package:sinoma/pages/help/help_page.dart';
import 'package:sinoma/pages/home/home_page.dart';
import 'package:sinoma/pages/settings/settings_page.dart';

/// Mengatur navigasi pada dashboard
class DashboardController extends GetxController {
  int _navigatorValue = 0;

  get navigatorValue => _navigatorValue;

  Widget currentScreen = HomePage();
  final screens = [
    HomePage(),
    DiagnoseStartPage(),
    HelpPage(),
    SettingsPage(),
  ];

  void onInit() {
    super.onInit();
    _navigatorValue = 0;
    update();
  }

  void changeSelectedValue(int selectedValue) {
    _navigatorValue = selectedValue;
    update();
  }
}
