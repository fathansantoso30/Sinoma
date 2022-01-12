import 'package:flutter/material.dart';
import 'package:sinoma/constants/sizeConfig.dart';
import 'package:sinoma/themes/const.dart';

/// Dipakai untuk membuat button
class CustomButton extends StatelessWidget {
  final String text;
  final Color txtColor;
  final Color bgColor;
  final Function onTap;

  const CustomButton(
      {Key key,
      @required this.text,
      this.txtColor,
      this.bgColor,
      @required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      margin: EdgeInsets.only(
        top: 20,
      ),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            minimumSize:
                Size(double.infinity, SizeConfig.safeBlockVertical * 6),
            primary: bgColor ?? blueColor,
            elevation: 5,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(8))),
        onPressed: onTap,
        child: Text(
          text,
          style: TextStyle(
              color: txtColor ?? whiteColor,
              fontSize: SizeConfig.safeBlockHorizontal * 4.5,
              fontWeight: FontWeight.normal),
        ),
      ),
    );
  }
}
