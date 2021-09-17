import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:sinoma/constants/sizeConfig.dart';

Color darkblueColor = Color(0xff2F2E41);
Color blueColor = Color(0xff1FA2FF);
Color greyColor = Color(0xff7D7D7D);
Color lightgreyColor = Color(0xffD3D3D3);
Color blackColor = Color(0xff3F414E);
Color whiteColor = Color(0xffFFFFFF);

TextStyle navbargreyLabel = TextStyle(
    fontWeight: FontWeight.normal,
    color: greyColor,
    fontSize: SizeConfig.safeBlockHorizontal * 3.5);

TextStyle navbarblueLabel = TextStyle(
    fontWeight: FontWeight.normal,
    color: blueColor,
    fontSize: SizeConfig.safeBlockHorizontal * 3.5);

TextStyle btnwhiteText = TextStyle(
    fontWeight: FontWeight.normal,
    color: whiteColor,
    fontSize: SizeConfig.safeBlockHorizontal * 4.5);

TextStyle btnblackText = TextStyle(
    fontWeight: FontWeight.normal,
    color: blackColor,
    fontSize: SizeConfig.safeBlockHorizontal * 4.5);

TextStyle regularblackText = TextStyle(
  fontWeight: FontWeight.normal,
  color: blackColor,
  fontSize: SizeConfig.safeBlockHorizontal * 4.5,
);

TextStyle regulargreyText = TextStyle(
  fontWeight: FontWeight.normal,
  color: greyColor,
  fontSize: SizeConfig.safeBlockHorizontal * 4,
);

TextStyle lightwhiteText = TextStyle(
  fontWeight: FontWeight.w300,
  color: whiteColor,
  fontSize: SizeConfig.safeBlockHorizontal * 4.5,
);

TextStyle lightredText = TextStyle(
  fontWeight: FontWeight.w300,
  color: Colors.red,
  fontSize: SizeConfig.safeBlockHorizontal * 4,
);

TextStyle lightgreenText = TextStyle(
  fontWeight: FontWeight.w300,
  color: Colors.green,
  fontSize: SizeConfig.safeBlockHorizontal * 4.5,
);

TextStyle lightblackText = TextStyle(
  fontWeight: FontWeight.w300,
  color: blackColor,
  fontSize: SizeConfig.safeBlockHorizontal * 4.5,
);

TextStyle boldwhiteText = TextStyle(
  fontWeight: FontWeight.bold,
  color: whiteColor,
  fontSize: SizeConfig.safeBlockHorizontal * 10,
);

TextStyle boldblueText = TextStyle(
  fontWeight: FontWeight.w700,
  color: blueColor,
  fontSize: SizeConfig.safeBlockHorizontal * 10,
);

TextStyle boldblackText = TextStyle(
  fontWeight: FontWeight.w700,
  color: blackColor,
  fontSize: SizeConfig.safeBlockHorizontal * 5,
);

TextStyle blackTitle = TextStyle(
    fontWeight: FontWeight.w700,
    color: blackColor,
    fontSize: SizeConfig.safeBlockHorizontal * 5.5);

TextStyle sinomaTitle = TextStyle(
  // fontFamily: 'attika',
  fontWeight: FontWeight.w700,
  color: blueColor,
  fontSize: SizeConfig.safeBlockHorizontal * 5.5,
);

TextStyle greySubtitle = TextStyle(
    fontWeight: FontWeight.normal,
    color: greyColor,
    fontSize: SizeConfig.safeBlockHorizontal * 4.5);

TextStyle blackSubdivider = TextStyle(
    fontWeight: FontWeight.bold,
    color: blackColor,
    fontSize: SizeConfig.safeBlockHorizontal * 4.5);

TextStyle whiteCardTitle = TextStyle(
    fontWeight: FontWeight.w700,
    color: whiteColor,
    fontSize: SizeConfig.safeBlockHorizontal * 4.5);

TextStyle sinoma = TextStyle(
    fontFamily: 'attika',
    fontSize: SizeConfig.safeBlockHorizontal * 16,
    color: blueColor);

OutlineInputBorder formBorder = OutlineInputBorder(
    borderSide: BorderSide(
      color: greyColor,
      width: 1,
    ),
    borderRadius: BorderRadius.circular(16));
