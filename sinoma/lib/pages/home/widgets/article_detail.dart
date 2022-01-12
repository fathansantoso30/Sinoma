import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sinoma/constants/sizeConfig.dart';
import 'package:sinoma/themes/const.dart';

/// Bagian dari halaman home / awal ketika aplikasi dibuka
/// Class ini menampilkan detail dari artikel yang ada di Home
class ArticleDetail extends StatelessWidget {
  final article = Get.arguments;

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
              Hero(
                tag: article.tag,
                child: Image.asset(
                  article.imagePath,
                  fit: BoxFit.cover,
                  width: SizeConfig.safeBlockHorizontal * 100,
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
                        article.title,
                        style: blackTitle,
                      ),
                      Divider(
                        color: whiteColor,
                      ),
                      (article.tag == 7)
                          ? Center(
                              child: Image.asset(
                                article.body,
                                fit: BoxFit.cover,
                                width: SizeConfig.safeBlockHorizontal * 80,
                                height: SizeConfig.safeBlockVertical * 50,
                              ),
                            )
                          : Text(
                              article.body,
                              style: regularblackText,
                              textAlign: TextAlign.start,
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
