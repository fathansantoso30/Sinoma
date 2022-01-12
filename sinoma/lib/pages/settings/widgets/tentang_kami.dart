import 'package:flutter/material.dart';
import 'package:sinoma/constants/asset_path.dart';
import 'package:sinoma/constants/sizeConfig.dart';
import 'package:sinoma/themes/const.dart';

/// Tampilan TentangKami / Pengembang, bagian dari settings
class TentangKami extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: BackButton(color: blueColor),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(40),
                child: Image.asset(
                  settingsTentang,
                  fit: BoxFit.contain,
                  width: SizeConfig.safeBlockHorizontal * 80,
                  height: SizeConfig.safeBlockVertical * 30,
                ),
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Tentang Kami",
                        style: blackTitle,
                      ),
                      Divider(
                        color: whiteColor,
                      ),
                      Text(
                        "Sinoma dikembangkan oleh 4 mahasiswa Universitas Gadjah Mada yaitu Kayla Queenazima Santoso, Fathan Hudyaussie Santoso, Mutia Fitri Akmalia , dan Safhira Anggraini Putri dengan bimbingan dari bapak Dr.Eng. Sunu Wibirama, S.T., M.Eng. sebagai bagian dari rangkaian Program Kreativitas Mahasiswa 2021 oleh Kemenristekdikti.\n\nHubungi kami lebih lanjut melalui email di: sinoma.app@gmail.com",
                        style: regularblackText,
                        textAlign: TextAlign.justify,
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
