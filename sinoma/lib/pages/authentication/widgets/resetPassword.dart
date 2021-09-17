import 'package:flutter/material.dart';
import 'package:sinoma/constants/asset_path.dart';
import 'package:sinoma/constants/controllers.dart';
import 'package:sinoma/constants/sizeConfig.dart';
import 'package:sinoma/helpers/validator.dart';
import 'package:sinoma/pages/authentication/widgets/form_input_field_with_icon.dart';
import 'package:sinoma/themes/const.dart';
import 'package:sinoma/widgets/button_custom.dart';

class ResetPassword extends StatelessWidget {
  static final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: blueColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: BackButton(color: whiteColor),
      ),
      body: Form(
        key: _formKey,
        child: Center(
          child: SingleChildScrollView(
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
                            'Isi form berikut untuk reset password',
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
                      padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
                      child: CustomButton(
                          text: "Reset Password",
                          bgColor: blueColor,
                          txtColor: whiteColor,
                          onTap: () async {
                            if (_formKey.currentState.validate()) {
                              await authController
                                  .sendPasswordResetEmail(context);
                            }
                          }),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
