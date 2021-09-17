import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sinoma/constants/sizeConfig.dart';
import 'package:sinoma/pages/dashboard/dashboard_controller.dart';
import 'package:sinoma/themes/const.dart';

class DashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return GetBuilder<DashboardController>(
      builder: (controller) => SafeArea(
        child: Scaffold(
          body: IndexedStack(
              index: controller.navigatorValue, children: controller.screens),
          bottomNavigationBar: SizedBox(
              height: SizeConfig.blockSizeVertical * 8,
              child: bottomNavigationBar()),
        ),
      ),
    );
  }

  Widget bottomNavigationBar() {
    return GetBuilder<DashboardController>(
      init: DashboardController(),
      builder: (controller) => BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              label: 'Home',
              icon: Icon(
                Icons.home_rounded,
              )),
          BottomNavigationBarItem(
              label: 'Skrining',
              icon: Icon(
                Icons.camera_alt_rounded,
              )),
          BottomNavigationBarItem(
              label: 'Panduan',
              icon: Icon(
                Icons.help_center_rounded,
              )),
          BottomNavigationBarItem(
              label: 'Pengaturan',
              icon: Icon(
                Icons.settings_applications_rounded,
              )),
        ],
        currentIndex: controller.navigatorValue,
        onTap: (index) {
          controller.changeSelectedValue(index);
        },
        elevation: 0,
        selectedItemColor: blueColor,
        unselectedItemColor: greyColor,
        selectedLabelStyle: navbarblueLabel,
        unselectedLabelStyle: navbargreyLabel,
        iconSize: SizeConfig.safeBlockHorizontal * 8,
        showUnselectedLabels: true,
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}
