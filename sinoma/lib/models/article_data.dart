import 'package:sinoma/constants/asset_path.dart';

/// model untuk data artikel yang dipakai di home page
class ArticleData {
  int tag;
  String title;
  String imagePath;
  String body;

  ArticleData({this.tag, this.title, this.imagePath, this.body});

  static List<ArticleData> article;

  /// menambahkan data sesuai model diatas, tag berfungsi untuk animasi Hero
  ArticleData.init() {
    article = [];
    article.add(ArticleData(
      tag: 0,
      title: "Tentang Kanker Mulut",
      imagePath: homePendahuluan,
      body:
          "Kanker mulut merupakan pertumbuhan jaringan abnormal yang terjadi di lapisan dalam mulut, lidah, bibir, dan tenggorokan bagian atas. Kanker mulut ini termasuk dalam kategori 10 kanker paling banyak yang menyerang manusia. Penyebab paling umum kanker mulut meliputi kebiasaan merokok dan mengonsumsi minuman beralkohol. Pengetahuan dan kewaspadaan terhadap kanker mulut merupakan hal yang harus diprioritaskan karena dapat mencegah dan mengurangi angka kejadian penyakit ini.\n\nKanker mulut diawali dengan pertumbuhan sel-sel yang tidak terkontrol. Penyakit ini seringkali dimulai sebagai bercak putih tanpa rasa sakit. Bercak ini kemudian menebal dan berkembang menjadi bercak merah. Bercak ini akan berubah menjadi benjolan yang semakin lama akan terus tumbuh membesar. Apabila kanker ini terjadi di bibir, biasanya terlihat seperti ulkus pengerasan kulit yang tidak kunjung sembuh, dan tumbuh perlahan. Apabila kanker sudah semakin parah, akan memunculkan gejala lain seperti kesulitan atau rasa nyeri saat menelan, adanya benjolan baru atau benjolan di leher, pembengkakan di mulut, atau perasaan mati rasa di mulut atau bibir.",
    ));
    article.add(ArticleData(
      tag: 1,
      title: "Epidemiologi",
      imagePath: homeEpidemiologi,
      body:
          "Sepanjang tahun 2020, penambahan kasus kanker mulut terjadi hingga mencapai 377.713 kasus di seluruh dunia. Di antara angka tersebut, sebanyak 5.780 kasus terjadi di Indonesia dengan tren insidensi yang terus meningkat dibandingkan tahun-tahun sebelumnya. Dengan angka yang besar tersebut, kanker mulut menempati peringkat keenam penyebab kanker terbesar di seluruh dunia. Sayangnya, data statistik menunjukkan angka 5-year survival penyakit ini hanya mencapai 50%. Artinya, persentase orang yang hidup hingga 5 tahun atau lebih sejak terdiagnosa kanker mulut hanya sekitar 50 dari 100 orang. Angka tersebut menjadi jauh lebih kecil apabila kanker baru terdeteksi pada tahap parah. Padahal, hingga saat ini data yang ada menunjukkan hanya sekitar sepertiga dari seluruh kasus kanker mulut dapat terdeteksi pada tahap awal.\n\nKanker mulut paling banyak terjadi pada pasien berusia 40 tahun, namun biasanya baru terdiagnosa ketika pasien berusia 60-65 tahun. Beberapa penelitian menunjukkan penyakit ini lebih banyak terjadi pada laki-laki daripada perempuan dalam hubungannya dengan tingkat kebiasaan merokok. Pasien yang terdiagnosa dengan kanker mulut biasanya memiliki resiko lebih besar untuk terkena penyakit keganasan lain.",
    ));
    article.add(ArticleData(
      tag: 2,
      title: "Faktor dan Resiko",
      imagePath: homeFaktor,
      body:
          "Faktor resiko mencakup beberapa hal yang dapat meningkatkan resiko terkena kanker mulut; antara lain terdiri dari :\n\n- Konsumsi bahan yang mengandung tembakau.\n\n- Kebiasaan menyirih (campuran daun sirih dengan pinang).\n\n- Konsumsi alkohol.\n\n- Paparan sinar matahari UV (kanker bibir).\n\n- Konsumsi marijuana.\n\n- Adanya permasalahan kesehatan gigi dan mulut yang buruk.\n\n- Menderita penyakit seperti HIV, HSV, dan HPV.\n\n- Faktor genetik.",
    ));
    article.add(ArticleData(
      tag: 3,
      title: "Tanda dan Gejala",
      imagePath: homeTanda,
      body:
          "Kapan kita harus khawatir suatu luka/tanda di mulut adalah kanker mulut? Berikut ini beberapa tanda dan gejala yang dapat diwaspadai merupakan awal dari kanker mulut:\n\n- Bercak putih atau merah pada mulut atau lidah.\n\n- Sariawan yang terasa sakit dan tidak sembuh dalam beberapa minggu.\n\n-Benjolan yang muncul secara tiba-tiba dan tidak kunjung hilang di mulut atau leher.\n\n- Mati rasa atau perubahan yang tidak biasa pada bibir atau lidah.\n\n- Sulit atau sakit saat menelan.\n\n-Perubahan pelafalan saat bicara.\n\n-Gigi goyang atau lepas yang tidak kunjung sembuh setelah dicabut.\n\nHal-hal di atas dapat lebih diperhatikan apabila anda mempunyai kebiasaan merokok atau mengkonsumsi alkohol. Apabila anda mempunyai tanda dan gejala yang mengganggu lebih dari dua minggu, anda dapat segera menghubungi dokter gigi terdekat.",
    ));
    article.add(ArticleData(
      tag: 4,
      title: "Diagnosis & Cancer Staging",
      imagePath: homeDiagnosis,
      body:
          "Tindakan biopsi merupakan gold-standard untuk mendiagnosis penyakit kanker mulut. Tindakan ini dilakukan dengan mengambil sampel jaringan untuk diperiksa di laboratorium. Tindakan biopsi biasanya dilakukan apabila dokter spesialis penyakit mulut menemukan gejala atau luka yang mencurigakan pada rongga mulut pasien.\n\nStaging dilakukan untuk menentukan sejauh mana tingkat perluasan kanker yang terjadi. Secara umum, digolongkan menjadi : \n\nStadium 1\t: Jaringan kanker berukuran <2 cm tanpa penyebaran pada jaringan tubuh lainnya. \n\nStadium 2\t: Jaringan kanker berukuran antara 2 hingga 4 cm tanpa adanya penyebaran pada jaringan tubuh lainnya.\n\nStadium 3\t: Jaringan kanker berukuran lebih dari 4 cm atau terdapat tanda-tanda penyebaran pada kelenjar getah bening.\n\nStadium 4\t: Terjadi pembesaran kelenjar getah bening akibat kanker yang menandakan penyebaran penyakit ini telah mencapai organ tubuh lainnya.",
    ));
    article.add(ArticleData(
      tag: 5,
      title: "Pencegahan",
      imagePath: homePencegahan,
      body:
          "Cara mencegah kanker yang paling umum adalah deteksi dini dan pengobatan yang tepat waktu. Pencegahan kanker mulut yang paling mudah dilakukan adalah dengan mengubah gaya hidup dan menekan faktor pemicu yang ada. Selain itu, edukasi tentang kanker mulut bagi mereka yang mempunyai resiko terkena kanker mulut mempunyai peran penting untuk mencegah timbulnya kanker ini. Tentunya hal-hal diatas harus diimbangi dengan pembaharuan layanan kesehatan mengenai mulut.",
    ));
    article.add(ArticleData(
      tag: 6,
      title: "Pengobatan",
      imagePath: homePengobatan,
      body:
          "Pengobatan yang dilakukan pada kanker mulut umumnya tergantung pada keparahan dan lokasi terjadinya kanker. Beberapa pengobatan untuk mengobati kanker mulut antara lain seperti terapi radiasi, terapi koadjutant (kemoterapi), dan pembedahan. Pengobatan utama yang diberikan merupakan tindakan pembedahan dengan mengangkat jaringan yang mengalami kanker. Pada kanker mulut yang terjadi di area bibir, tindakan ini bahkan dapat meningkatkan 5-year survival rate secara signifikan hingga 90%. Untuk kanker yang telah mencapai stadium lanjut, tindakan kemoterapi biasanya diberikan sebagai pengobatan lanjutan pasca pembedahan untuk mencegah timbulnya kanker kembali.",
    ));
    article.add(ArticleData(
      tag: 7,
      title: "Contoh Kanker Mulut",
      imagePath: homeContoh,
      body: homeContoh2,
    ));
  }
}
