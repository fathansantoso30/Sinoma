import 'package:flutter/material.dart';

/// Class untuk mendapatkan screen size device dan men-set safearea
class SizeConfig {
  static MediaQueryData _mediaQueryData;
  static double screenWidth;
  static double screenHeight;
  static double blockSizeHorizontal;
  static double blockSizeVertical;

  static double _safeAreaHorizontal;
  static double _safeAreaVertical;
  static double safeBlockHorizontal;
  static double safeBlockVertical;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);

    /// Get the width & height of the device
    screenWidth = _mediaQueryData.size.width;
    screenHeight = _mediaQueryData.size.height;

    /// atur safe area screen berdasarkan padding ukuran layar device
    _safeAreaHorizontal =
        _mediaQueryData.padding.left + _mediaQueryData.padding.right;
    _safeAreaVertical =
        _mediaQueryData.padding.top + _mediaQueryData.padding.bottom;

    /// Buat 100 x 100 blok dari safearea device
    safeBlockHorizontal = (screenWidth - _safeAreaHorizontal) / 100;
    safeBlockVertical = (screenHeight - _safeAreaVertical) / 100;
  }
}
