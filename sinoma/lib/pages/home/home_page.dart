import 'package:flutter/material.dart';
import 'package:sinoma/constants/asset_path.dart';
import 'package:sinoma/constants/sizeConfig.dart';

import 'package:sinoma/pages/home/widgets/cardbanner.dart';
import 'package:sinoma/themes/const.dart';

/// Tampilan Home yang merupakan bagian dari dashboard
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      padding: EdgeInsets.all(20),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Sinoma',
                  style: sinomaTitle,
                ),
                Text(
                  'Mari menjaga senyum bersama Sinoma',
                  style: greySubtitle,
                ),
                Container(
                  margin: EdgeInsets.only(top: 20),
                  child: Image.asset(
                    home,
                    height: SizeConfig.safeBlockVertical * 30,
                    width: SizeConfig.safeBlockHorizontal * 80,
                    fit: BoxFit.contain,
                  ),
                ),
                SizedBox(
                  height: SizeConfig.safeBlockVertical * 2.5,
                ),
                Text(
                  'Pelajari lebih lanjut terkait kanker mulut',
                  style: blackSubdivider,
                ),
                Divider(
                  height: SizeConfig.safeBlockVertical * 2.5,
                  thickness: 1,
                  color: greyColor,
                ),
                CardBanner(),
                Divider(
                  height: SizeConfig.safeBlockVertical * 1,
                  thickness: 1,
                  color: greyColor,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
