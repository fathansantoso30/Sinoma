import 'package:flutter/material.dart';
import 'package:sinoma/constants/asset_path.dart';
import 'package:sinoma/constants/sizeConfig.dart';
import 'package:sinoma/pages/help/cardHelp.dart';
import 'package:sinoma/themes/const.dart';

/// Tampilan dari bagian Help dari dashboard
class HelpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Panduan pengambilan gambar',
                  style: blackTitle,
                ),
                Text(
                  'Cermati instruksi pengambilan gambar untuk skrining',
                  style: greySubtitle,
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              height: SizeConfig.safeBlockVertical * 30,
              width: SizeConfig.safeBlockHorizontal * 80,
              child: Image.asset(
                help,
              ),
            ),
            CardHelpText(
              text:
                  "Skrining gambar lesi menggunakan aplikasi ini dapat dilakukan oleh 2 orang dengan 1 orang sebagai pemeriksa dan 1 orang lainnya yang diperiksa. Orang yang akan diperiksa memposisikan diri dalam posisi duduk.",
            ),
            CardHelpText(
              text:
                  "Pengambilan gambar dilakukan menggunakan kamera belakang dan dianjurkan menggunakan FLASH. Apabila tidak memungkinkan penggunaan flash, pastikan berada di tempat yang cukup cahaya",
            ),
            CardHelpImageTwo(
              image1: panduan2a5b,
              image2: panduan2b,
              desc:
                  "contoh pencahayaan baik (kiri) dan pencahayaan buruk (kanan)",
            ),
            CardHelpText(
              text:
                  "Posisikan daerah yang ingin diperiksa pada area tengah gambar yang diambil, hindari pengambilan gambar seperti contoh di bawah ini",
            ),
            CardHelpImageOne(
              image: panduan3,
              desc:
                  "Gambar lesi atau daerah yang diperiksa ada di pojok kanan atas, tidak di area tengah gambar",
            ),
            CardHelpText(
              text:
                  "Untuk memeriksa bibir atas bagian dalam, tarik tepi bawah bibir atas ke arah atas. Sebaliknya, untuk memeriksa bibir bawah bagian dalam, tarik tepi atas bibir bawah ke arah bawah. Gambaran bibir bagian dalam akan tersibak seperti contoh berikut",
            ),
            CardHelpImageOne(
              image: panduan4,
              desc: "Pemeriksaan bibir bagian dalam",
            ),
            CardHelpImageTwo(
              image1: panduan5a,
              image2: panduan2a5b,
              desc:
                  "Pemeriksaan di area lidah dapat dilakukan baik dari depan maupun samping",
            ),
            CardHelpImageOne(
              image: panduan6,
              desc:
                  "Untuk memeriksa daerah di bawah lidah, angkat lidah sehingga gambar akan tampak seperti ini",
            ),
            CardHelpImageOne(
              image: panduan7,
              desc:
                  "Untuk memeriksa bagian dalam (mukosa) pipi, buka mulut selebar-lebarnya lalu ambil gambar dari arah sebaliknya (jika memeriksa bagian dalam pipi kanan, ambil gambar dari sebelah kiri), seperti contoh berikut",
            ),
            CardHelpImageOne(
              image: panduan8,
              desc:
                  "Untuk memeriksa gusi, pada prinsipnya pastikan daerah yang akan diperiksa dapat terlihat dengan jelas. Apabila tertutup area bibir atau pipi, sibakkan bibir atau pipi tersebut menggunakan jari sehingga daerah yang diperiksa tampak jelas sebagaimana gambar berikut",
            ),
            CardHelpImageOne(
              image: panduan9,
              desc:
                  "Untuk memeriksa bibir bagian luar, cukup posisikan gambar seperti ini",
            ),
            CardHelpImageOne(
              image: panduan10,
              desc:
                  "Khusus pada daerah langit-langit mulut, pengambilan gambar dilakukan dengan posisi orang yang diperiksa mendongak ke atas sehingga gambaran langit-langit mulut akan tampak seperti gambar berikut",
            ),
            CardHelpText(
              text:
                  "Pastikan gambar yang diambil berwarna, tidak goyang, dan tidak menggunakan efek atau filter apapun",
            )
          ],
        ),
      ),
    );
  }
}
