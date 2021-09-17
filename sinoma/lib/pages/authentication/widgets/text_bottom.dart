import 'package:flutter/material.dart';
import 'package:sinoma/constants/sizeconfig.dart';

class TextBottomWidget extends StatelessWidget {
  final Function onTap;
  final String text1;
  final String text2;
  final Color color1;
  final Color color2;

  const TextBottomWidget(
      {Key key, this.onTap, this.text1, this.text2, this.color1, this.color2})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return GestureDetector(
      onTap: onTap,
      child: RichText(
          text: TextSpan(children: [
        TextSpan(
            text: text1,
            style: TextStyle(
              color: color1,
              fontSize: SizeConfig.safeBlockHorizontal * 4.5,
            )),
        TextSpan(
            text: " $text2",
            style: TextStyle(
                color: color2,
                fontWeight: FontWeight.bold,
                fontSize: SizeConfig.safeBlockHorizontal * 4.5))
      ])),
    );
  }
}
