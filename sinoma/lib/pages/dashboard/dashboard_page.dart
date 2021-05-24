import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sinoma/pages/account/account_page.dart';
import 'package:sinoma/pages/dashboard/dashboard_controller.dart';
import 'package:sinoma/pages/diagnose/diagnose_page.dart';
import 'package:sinoma/pages/help/help_page.dart';
import 'package:sinoma/pages/home/home_page.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:sinoma/themes/theme.dart';

class DashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<DashboardController>(builder: (controller) {
      return Scaffold(
        body: SafeArea(
            child: IndexedStack(
          index: controller.tabIndex,
          children: [
            HomePage(),
            DiagnosePage(),
            HelpPage(),
            AccountPage(),
          ],
        )),
        bottomNavigationBar: BottomNavyBar(
          selectedIndex: controller.tabIndex,
          showElevation: true,
          itemCornerRadius: 16,
          curve: Curves.easeIn,
          onItemSelected: controller.changeTabIndex,
          items: <BottomNavyBarItem>[
            BottomNavyBarItem(
              icon: Icon(Icons.home_rounded),
              title: Text('Home'),
              activeColor: blueColor,
              inactiveColor: greyColor,
              textAlign: TextAlign.center,
            ),
            BottomNavyBarItem(
              icon: Icon(Icons.camera_alt_rounded),
              title: Text('Diagnose'),
              activeColor: blueColor,
              inactiveColor: greyColor,
              textAlign: TextAlign.center,
            ),
            BottomNavyBarItem(
              icon: Icon(Icons.help_center_rounded),
              title: Text('Help'),
              activeColor: blueColor,
              inactiveColor: greyColor,
              textAlign: TextAlign.center,
            ),
            BottomNavyBarItem(
              icon: Icon(Icons.settings_applications_rounded),
              title: Text('Settings'),
              activeColor: blueColor,
              inactiveColor: greyColor,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      );
    });
  }
}
