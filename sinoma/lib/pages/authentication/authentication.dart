import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sinoma/constants/controllers.dart';
import 'package:sinoma/constants/sizeConfig.dart';
import 'package:sinoma/controllers/appController.dart';
import 'package:sinoma/pages/authentication/widgets/login.dart';
import 'package:sinoma/pages/authentication/widgets/register.dart';
import 'package:sinoma/pages/authentication/widgets/text_bottom.dart';
import 'package:sinoma/themes/const.dart';

class AuthPage extends StatelessWidget {
  final AppController _appController = Get.find();

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
        backgroundColor: blueColor,
        body: Center(
          child: SafeArea(
            child: Obx(
              () => SingleChildScrollView(
                child: Stack(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Visibility(
                            visible:
                                _appController.isLoginWidgetDisplayed.value,
                            child: LoginWidget()),
                        Visibility(
                            visible:
                                !_appController.isLoginWidgetDisplayed.value,
                            child: RegisterWidget()),
                        Visibility(
                          visible: _appController.isLoginWidgetDisplayed.value,
                          child: TextBottomWidget(
                            onTap: () {
                              _appController.changeDIsplayedAuthWidget();
                              authController.clearControllers();
                            },
                            text1: "Baru di Sinoma?",
                            text2: "Daftar",
                          ),
                        ),
                        Visibility(
                          visible: !_appController.isLoginWidgetDisplayed.value,
                          child: TextBottomWidget(
                            onTap: () {
                              _appController.changeDIsplayedAuthWidget();
                              authController.clearControllers();
                            },
                            text1: "Sudah punya akun?",
                            text2: "Masuk",
                            color1: whiteColor,
                            color2: whiteColor,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
