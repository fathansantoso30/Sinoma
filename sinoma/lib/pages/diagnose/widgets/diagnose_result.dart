import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sinoma/constants/sizeConfig.dart';
import 'package:sinoma/controllers/resultController.dart';
import 'package:sinoma/pages/dashboard/dashboard_page.dart';
import 'package:sinoma/themes/const.dart';
import 'package:sinoma/widgets/button_custom.dart';

class DiagnoseResult extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    final ResultController _resultController = Get.put(ResultController());
    return SafeArea(
      child: Obx(
        () => _resultController.loading.value == true
            ? Center(
                child: CircularProgressIndicator(),
              )
            : Scaffold(
                body: SingleChildScrollView(
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Hasil Skrining',
                              style: blackTitle,
                            ),
                            Text(
                              'Hasil dan rekomendasi penanganan lanjut dari Sinoma',
                              style: greySubtitle,
                            )
                          ],
                        ),
                        Container(
                          alignment: Alignment.center,
                          padding: EdgeInsets.all(20).copyWith(bottom: 0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                child: Center(
                                  child: Container(
                                    height: 250,
                                    width: 250,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(8),
                                      child: Image.file(
                                        _resultController.image,
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Divider(
                                height: 25,
                                thickness: 1,
                              ),
                              Text(
                                _resultController.hasil,
                                style: _resultController.stylehasil,
                                textAlign: TextAlign.center,
                              ),
                              Divider(
                                height: 25,
                                thickness: 1,
                              ),
                            ],
                          ),
                        ),
                        Card(
                          elevation: 5,
                          child: Row(
                            children: [
                              Container(
                                padding: EdgeInsets.all(20),
                                child: Icon(
                                  Icons.announcement_rounded,
                                  size: SizeConfig.safeBlockHorizontal * 4.5,
                                  color: Colors.red,
                                ),
                              ),
                              Expanded(
                                child: Text(
                                  "Hasil identifikasi ini berupa prediksi dan bukan diagnosis medis",
                                  style: lightredText,
                                  maxLines: 4,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              )
                            ],
                          ),
                        ),
                        Stack(children: [
                          Visibility(
                            visible: _resultController.isCancer.value,
                            child: Card(
                              elevation: 5,
                              child: Container(
                                padding: EdgeInsets.all(20),
                                child: Text(
                                  "Hasil identifikasi sistem menunjukkan terdapat kecurigaan yang mengarah pada penyakit kanker mulut. Hasil ini bukan merupakan diagnosis medis yang mutlak. Perlu diketahui bahwa penegakan diagnosis untuk kanker mulut meliputi berbagai tahap yang cukup kompleks dari pemeriksaan klinis, pemeriksaan penunjang, serta biopsi.\n\nKami menyarankan anda berkonsultasi dengan dokter spesialis penyakit mulut untuk mendapatkan hasil pemeriksaan yang lebih akurat. Dokter juga akan membantu anda untuk mengobati luka yang terdapat pada rongga mulut anda.\n\nUntuk informasi lebih lanjut terkait pengobatan kanker mulut dapat dilihat di halaman Home bagian Informasi.",
                                  style: regularblackText,
                                  textAlign: TextAlign.start,
                                ),
                              ),
                            ),
                          ),
                          Visibility(
                            visible: !_resultController.isCancer.value,
                            child: Card(
                              elevation: 5,
                              child: Container(
                                alignment: Alignment.center,
                                padding: EdgeInsets.all(20),
                                child: Text(
                                  "Hasil identifikasi sistem tidak menunjukkan kecurigaan yang mengarah pada penyakit kanker mulut. Hasil ini bukan merupakan diagnosis medis yang mutlak. Perlu diketahui bahwa penegakan diagnosis untuk kanker mulut meliputi berbagai tahap yang cukup kompleks dari pemeriksaan klinis, pemeriksaan penunjang, serta biopsi.\n\nUntuk informasi lebih lanjut terkait pencegahan kanker mulut dapat dilihat di halaman Home bagian Informasi.",
                                  style: regularblackText,
                                  textAlign: TextAlign.start,
                                ),
                              ),
                            ),
                          ),
                        ]),
                        Container(
                          margin: EdgeInsets.only(bottom: 20),
                          child: CustomButton(
                              text: 'Selesai',
                              onTap: () => Get.offAll(() => DashboardPage())),
                        ),
                      ],
                    ),
                  ),
                ),
              )),
      ),
    );
  }
}
