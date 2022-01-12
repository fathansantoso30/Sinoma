import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sinoma/constants/asset_path.dart';
import 'package:sinoma/constants/sizeConfig.dart';
import 'package:sinoma/pages/diagnose/diagnose_panduan.dart';
import 'package:sinoma/pages/diagnose/widgets/diagnose_form.dart';
import 'package:sinoma/pages/diagnose/widgets/diagnose_pickimages.dart';
import 'package:sinoma/themes/const.dart';
import 'package:sinoma/widgets/button_custom.dart';

class DiagnoseStartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Skrining dan Survei',
                  style: blackTitle,
                ),
                Text(
                  'Skrining mulut anda dan isi survei kesehatan kami',
                  style: greySubtitle,
                ),
              ],
            ),
            SizedBox(
              height: SizeConfig.safeBlockVertical * 5,
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              height: SizeConfig.safeBlockVertical * 30,
              width: SizeConfig.safeBlockHorizontal * 80,
              child: Image.asset(
                diagnosisStart,
                fit: BoxFit.contain,
              ),
            ),
            SizedBox(
              height: SizeConfig.safeBlockVertical * 5,
            ),
            Column(
              children: [
                CustomButton(
                    text: 'Panduan',
                    onTap: () {
                      Get.to(() => DiagnosePanduan());
                    }),
                CustomButton(
                    text: 'Isi Survey',
                    onTap: () {
                      Get.to(() => DiagnoseForm());
                    }),
                CustomButton(
                    text: 'Cek Mulut anda',
                    onTap: () {
                      Get.to(() => DiagnosePickImages());
                    }),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
