import 'package:flutter/material.dart';
import 'package:sinoma/constants/asset_path.dart';
import 'package:sinoma/constants/sizeConfig.dart';
import 'package:sinoma/themes/const.dart';

/// Tampilan tentang Sinoma, bagian dari Settings
class TentangSinoma extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: BackButton(color: whiteColor),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                banner,
                fit: BoxFit.cover,
                width: SizeConfig.safeBlockHorizontal * 100,
                height: SizeConfig.safeBlockVertical * 30,
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Tentang Sinoma",
                        style: blackTitle,
                      ),
                      Divider(
                        color: whiteColor,
                      ),
                      Text(
                        "Aplikasi skrining dini kanker mulut pertama di Indonesia. Sinoma adalah aplikasi terkait kanker mulut yang saat ini masih berfokus pada pengembangan fitur skrining dan edukasi. Sinoma dikembangkan di Indonesia tahun 2021 dengan misi membantu penanganan kanker mulut di Indonesia melalui teknologi. Berawal dari proyek mahasiswa, Sinoma diharapkan dapat membantu lebih banyak mulut di masa depan.",
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
