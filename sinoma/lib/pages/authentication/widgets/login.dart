import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sinoma/constants/asset_path.dart';
import 'package:sinoma/constants/controllers.dart';
import 'package:sinoma/constants/sizeconfig.dart';
import 'package:sinoma/helpers/validator.dart';
import 'package:sinoma/pages/authentication/widgets/form_input_field_with_icon.dart';
import 'package:sinoma/pages/authentication/widgets/resetPassword.dart';
import 'package:sinoma/pages/authentication/widgets/text_bottom.dart';
import 'package:sinoma/themes/const.dart';
import 'package:sinoma/widgets/button_custom.dart';

// ignore: must_be_immutable
class LoginWidget extends StatelessWidget {
  var _hidePassword = true.obs;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Form(
      key: _formKey,
      child: Container(
        margin: EdgeInsets.all(16),
        decoration: BoxDecoration(
            color: whiteColor,
            boxShadow: [
              BoxShadow(
                color: greyColor.withOpacity(.5),
                blurRadius: 10,
              )
            ],
            borderRadius: BorderRadius.circular(8)),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Wrap(
            children: [
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 30),
                      child: Image.asset(
                        logoSinoma,
                        height: SizeConfig.safeBlockVertical * 16,
                        fit: BoxFit.contain,
                      ),
                    ),
                    SizedBox(
                      height: SizeConfig.safeBlockVertical * 1,
                    ),
                    Text('Sinoma', style: sinoma),
                    Text(
                      'Masuk untuk cek mulut anda sekarang',
                      style: TextStyle(
                        fontSize: SizeConfig.safeBlockHorizontal * 4.5,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: SizeConfig.safeBlockVertical * 1,
              ),
              Padding(
                  padding: const EdgeInsets.fromLTRB(10, 30, 10, 10),
                  child: FormInputFieldWithIcon(
                    controller: authController.email,
                    iconPrefix: Icons.email_rounded,
                    labelText: 'Email',
                    validator: Validator().email,
                    keyboardType: TextInputType.emailAddress,
                    onChanged: (value) => null,
                    onSaved: (value) => authController.email.text = value,
                  )),
              Padding(
                  padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                  child: Obx(
                    () => FormInputFieldWithIcon(
                      controller: authController.password,
                      iconPrefix: Icons.lock_rounded,
                      labelText: 'Password',
                      validator: Validator().password,
                      obscureText: _hidePassword.value,
                      suffix: InkWell(
                        onTap: () {
                          _hidePassword.value = !_hidePassword.value;
                        },
                        child: _hidePassword.value
                            ? Icon(Icons.visibility_off, color: Colors.grey)
                            : Icon(Icons.visibility, color: blueColor),
                      ),
                      onChanged: (value) => null,
                      onSaved: (value) => authController.password.text = value,
                      maxLines: 1,
                    ),
                  )),
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
                child: CustomButton(
                    text: "Masuk",
                    bgColor: blueColor,
                    txtColor: whiteColor,
                    onTap: () {
                      authController.signIn();
                    }),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Center(
                  child: TextBottomWidget(
                    onTap: () {
                      authController.clearControllers();
                      Get.to(ResetPassword());
                    },
                    text2: "Lupa password?",
                    color2: blueColor,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
