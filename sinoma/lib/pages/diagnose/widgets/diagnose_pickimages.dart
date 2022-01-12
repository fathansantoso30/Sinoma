import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sinoma/constants/asset_path.dart';
import 'package:sinoma/constants/sizeConfig.dart';
import 'package:sinoma/controllers/diagnoseController.dart';
import 'package:sinoma/themes/const.dart';
import 'package:sinoma/widgets/button_custom.dart';

/// Tampilan pilih gambar yang akan dirun ke model
class DiagnosePickImages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final DiagnoseController _diagnoseController = Get.find();
    return SafeArea(
      child: Scaffold(
          extendBodyBehindAppBar: true,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            leading: BackButton(color: blueColor),
          ),
          body: Container(
            child: Padding(
              padding: const EdgeInsets.only(top: 50, left: 20, right: 20),
              child: Column(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Upload Foto bagian mulut yang diduga lesi',
                        style: blackTitle,
                      ),
                      Text(
                        'Pilih dari galeri atau foto langsung',
                        style: greySubtitle,
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    child: Image.asset(
                      diagnosisPickImages,
                      height: SizeConfig.safeBlockVertical * 50,
                      width: SizeConfig.safeBlockHorizontal * 80,
                    ),
                  ),
                  CustomButton(
                      text: 'Ambil Foto',
                      onTap: _diagnoseController.pickCameraImage),
                  CustomButton(
                      text: 'Ambil dari Galeri',
                      onTap: _diagnoseController.pickGalleryImage),
                ],
              ),
            ),
          )),
    );
  }
}
