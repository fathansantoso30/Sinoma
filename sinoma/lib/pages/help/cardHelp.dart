import 'package:flutter/material.dart';
import 'package:sinoma/constants/sizeConfig.dart';
import 'package:sinoma/themes/const.dart';

/// Digunakan untuk mempermudah pembuatan bagian help dari dashboard dengan Card
class CardHelpText extends StatelessWidget {
  final String text;

  const CardHelpText({Key key, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Column(
      children: [
        Divider(),
        Card(
          color: blueColor,
          clipBehavior: Clip.antiAlias,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          child: Container(
            padding: EdgeInsets.all(20),
            child: Text(
              text,
              style: lightwhiteText,
              textAlign: TextAlign.start,
            ),
          ),
        ),
      ],
    );
  }
}

class CardHelpImageOne extends StatelessWidget {
  final String image;
  final String desc;

  const CardHelpImageOne({Key key, this.image, this.desc}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Column(
      children: [
        Divider(),
        Card(
          color: blueColor,
          clipBehavior: Clip.antiAlias,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          child: Container(
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  Image.asset(
                    image,
                    fit: BoxFit.cover,
                    width: SizeConfig.safeBlockHorizontal * 60,
                    height: SizeConfig.safeBlockVertical * 30,
                  ),
                  Divider(),
                  Text(
                    desc,
                    style: lightwhiteText,
                    textAlign: TextAlign.center,
                  )
                ],
              )),
        ),
      ],
    );
  }
}

class CardHelpImageTwo extends StatelessWidget {
  final String image1;
  final String image2;
  final String desc;

  const CardHelpImageTwo({
    Key key,
    this.image1,
    this.image2,
    this.desc,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Column(
      children: [
        Divider(),
        Card(
          color: blueColor,
          clipBehavior: Clip.antiAlias,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          child: Container(
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        image1,
                        fit: BoxFit.fill,
                        width: SizeConfig.safeBlockHorizontal * 34,
                        height: SizeConfig.safeBlockVertical * 30,
                      ),
                      Divider(),
                      Image.asset(
                        image2,
                        fit: BoxFit.fill,
                        width: SizeConfig.safeBlockHorizontal * 34,
                        height: SizeConfig.safeBlockVertical * 30,
                      ),
                    ],
                  ),
                  Divider(),
                  Text(
                    desc,
                    style: lightwhiteText,
                    textAlign: TextAlign.center,
                  )
                ],
              )),
        ),
      ],
    );
  }
}
