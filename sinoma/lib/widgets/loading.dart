import 'package:flutter/material.dart';
import 'package:sinoma/themes/const.dart';

/// Menampilkan animasi circular loading
class Loading extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: CircularProgressIndicator(
        valueColor: AlwaysStoppedAnimation(blueColor),
      )),
    );
  }
}
