/// Kode ini digunakan untuk mendapatkan path asset dan path model TensorFlow

final String imageAssetsRoot = "assets/images/";
final String modelAssetsRoot = "assets/model/";

final String logoSinoma = _getImagePath("logo.png");
final String logoGoogle = _getImagePath("google_logo.png");
final String banner = _getImagePath("banner.png");
final String home = _getImagePath("home.png");
final String homePendahuluan = _getImagePath("home_pendahuluan.jpg");
final String homeEpidemiologi = _getImagePath("home_epidemiologi.jpg");
final String homeFaktor = _getImagePath("home_faktor.jpg");
final String homeTanda = _getImagePath("home_tanda.jpg");
final String homeDiagnosis = _getImagePath("home_diagnosis.jpg");
final String homePencegahan = _getImagePath("home_pencegahan.jpg");
final String homePengobatan = _getImagePath("home_pengobatan.jpg");
final String homeContoh = _getImagePath("home_contoh.jpg");
final String homeContoh2 = _getImagePath("home_contoh2.png");
final String diagnosisStart = _getImagePath("diagnosis_start.png");
final String diagnosisPickImages = _getImagePath("diagnosis_pickImages.png");
final String help = _getImagePath("help.png");
final String panduan2a5b = _getImagePath("panduan_Gambar 2.1 a dan 5.1 b.png");
final String panduan2b = _getImagePath("panduan_Gambar 2.1 b.png");
final String panduan3 = _getImagePath("panduan_Gambar 3.1.png");
final String panduan4 = _getImagePath("panduan_Gambar 4.1.png");
final String panduan5a = _getImagePath("panduan_Gambar 5.1 a.png");
final String panduan6 = _getImagePath("panduan_Gambar 6.1.png");
final String panduan7 = _getImagePath("panduan_Gambar 7.1.png");
final String panduan8 = _getImagePath("panduan_Gambar 8.1.png");
final String panduan9 = _getImagePath("panduan_Gambar 9.1.png");
final String panduan10 = _getImagePath("panduan_Gambar 10.1.png");
final String panduan11 =
    _getImagePath("panduan_Gambar pemeriksaan bagian dalam pipi.png");
final String settingsTentang = _getImagePath("settings_tentang.png");
final String modelTF = _getModelPath("model.tflite");
final String labelTF = _getModelPath("labels.txt");
final String terms = _getModelPath("terms.md");
final String privacy = _getModelPath("privacy.md");

String _getImagePath(String filename) {
  return imageAssetsRoot + filename;
}

String _getModelPath(String filename) {
  return modelAssetsRoot + filename;
}
