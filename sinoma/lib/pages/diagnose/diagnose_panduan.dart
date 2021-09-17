import 'package:flutter/material.dart';
import 'package:sinoma/pages/help/help_page.dart';
import 'package:sinoma/themes/const.dart';

class DiagnosePanduan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: BackButton(color: blueColor),
      ),
      body: HelpPage(),
    ));
  }
}
