import 'package:flutter/material.dart';
import 'package:sinoma/constants/sizeConfig.dart';
import 'package:sinoma/themes/const.dart';
// import 'package:sinoma/themes/const.dart';
// import 'package:sinoma/widgets/text_custom.dart';

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
    // return GestureDetector(
    //   onTap: onTap,
    //   child: Container(
    //     width: SizeConfig.safeBlockHorizontal * 82,
    //     margin: EdgeInsets.only(top: 20),
    //     child: PhysicalModel(
    //       color: Colors.grey.withOpacity(.4),
    //       elevation: 5,
    //       borderRadius: BorderRadius.circular(8),
    //       child: Container(
    //           width: SizeConfig.safeBlockHorizontal * 82,
    //           decoration: BoxDecoration(
    //             borderRadius: BorderRadius.circular(8),
    //             color: bgColor ?? blueColor,
    //           ),
    //           child: Container(
    //             margin: EdgeInsets.all(14),
    //             alignment: Alignment.center,
    //             child: CustomText(
    //               text: text,
    //               color: txtColor ?? whiteColor,
    //               size: SizeConfig.safeBlockHorizontal * 5,
    //               weight: FontWeight.normal,
    //             ),
    //           )),
    //     ),
    //   ),
    // );
  }
}
