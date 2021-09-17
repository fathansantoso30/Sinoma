import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sinoma/constants/sizeConfig.dart';
import 'package:sinoma/models/article_data.dart';
import 'package:sinoma/pages/home/widgets/article_detail.dart';
import 'package:sinoma/themes/const.dart';

class CardBanner extends StatelessWidget {
  final String imgpath;
  final String title;
  final Function onTap;
  final int tag;

  const CardBanner({Key key, this.imgpath, this.title, this.onTap, this.tag})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    ArticleData.init();
    SizeConfig().init(context);
    return Container(
      height: SizeConfig.safeBlockVertical * 37,
      padding: EdgeInsets.only(bottom: 10, top: 5),
      child: ListView.separated(
          shrinkWrap: true,
          cacheExtent: 4,
          itemBuilder: (_, index) => GestureDetector(
                onTap: () {
                  Get.to(() => ArticleDetail(),
                      arguments: ArticleData.article[index]);
                },
                child: Card(
                  clipBehavior: Clip.antiAlias,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                  child: Column(
                    children: [
                      Stack(
                        children: [
                          Hero(
                            tag: ArticleData.article[index].tag,
                            child: Image.asset(
                              ArticleData.article[index].imagePath,
                              fit: BoxFit.cover,
                              width: SizeConfig.safeBlockHorizontal * 100,
                              height: SizeConfig.safeBlockVertical * 22,
                            ),
                          ),
                          Positioned(
                              bottom: 16,
                              right: 16,
                              left: 16,
                              child: Text(
                                ArticleData.article[index].title,
                                style: whiteCardTitle,
                              )),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
          separatorBuilder: (context, position) {
            return Divider(
              color: whiteColor,
            );
          },
          itemCount: ArticleData.article.length),
    );
  }
}

// class CardBanner extends StatelessWidget {
//   final String imgpath;
//   final String title;
//   final Function onTap;
//   final int tag;

//   const CardBanner({Key key, this.imgpath, this.title, this.onTap, this.tag})
//       : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     SizeConfig().init(context);
//     return Card(
//       clipBehavior: Clip.antiAlias,
//       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
//       child: Column(
//         children: [
//           Stack(
//             children: [
//               Hero(
//                 tag: tag,
//                 child: Image.asset(
//                   imgpath,
//                   fit: BoxFit.cover,
//                   width: SizeConfig.safeBlockHorizontal * 100,
//                   height: SizeConfig.safeBlockVertical * 22,
//                 ),
//               ),
//               // Image.asset(
//               //   imgpath,
//               //   fit: BoxFit.cover,
//               //   width: SizeConfig.safeBlockHorizontal * 100,
//               //   height: SizeConfig.safeBlockVertical * 22,
//               // ),
//               Positioned(
//                   bottom: 16,
//                   right: 16,
//                   left: 16,
//                   child: Text(
//                     title,
//                     style: whiteCardTitle,
//                   )),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }
