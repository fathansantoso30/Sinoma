# sinoma

Aplikasi Skrining dini kanker mulut berbasis Machine Learning

## Dokumentasi

### Detail File & Folder

Berikut adalah rincian dan penjelasan untuk setiap folder penting yang ada di project ini :

#### assets
Digunakan untuk menyimpan file seperti Gambar dan Model TensorFlow yang digunakan.

#### lib/constants
Berisi Kode File yang berfungsi untuk memudahkan beberapa hal, lebih detailnya ada di comment masing-masing file.

#### lib/controllers
Berisi berbagai Controller dari package GetX yang digunakan mengatur berbagai hal.

#### lib/helpers
Berisi file binding, loading, dan validator untuk form. Sebenarnya dapat dipisah lagi dan digabungkan dengan beberapa file di folder constants.

#### lib/models
Berisi Kode file yang berfungsi sebagai model data yang akan dipakai.

#### lib/pages
Berisi widget yang akan ditampilan di dashboard dan halaman dipisah berdasarkan fiturnya.

#### lib/themes
Berisi kode file yang mengatur warna dan jenis font yang digunakan.

#### lib/widgets
Berisi widget yang dapat dipakai kembali.

### Detail Packages 
Berikut adalah list packages yang digunakan beserta penjelasan pemakaiannya untuk project ini :

#### google_fonts 2.1.0
Diperlukan untuk menggunakan font.

#### flutter_native_splash 1.2.1
Digunakan dalam pembuatan splash screen aplikasi.

#### get 3.26.0
Digunakan untuk Routing, Navigasi, dan Controller.

#### cloud_firestore 1.0.4
Untuk menggunakan fitur firebase firestore guna menyimpan data user ke firestore.

#### firebase_auth & firebase_core
Untuk autentikasi user menggunakan firebase.

#### flutter_launcher_icons 0.9.0
Untuk menset icon aplikasi.

#### survey_kit 0.0.8
Untuk membuat Form Page di bagian diagnosa.
NB : Belum bisa mengambil data hasil akhir form.

#### tflite 1.1.1
Untuk mengolah model TensorFlow dan mengklasifikasikan berdasarkan label yang ada.

#### image_picker 0.8.2
Untuk mengambil gambar yang akan digunakan model nantinya, baik dari kamera maupun galeri.

#### babstrap_settings_screen 0.1.0
Untuk membuat tampilan settings.

#### flutter_markdown 0.6.6
Untuk menampilkan file ekstensi .md dan digunakan untuk menampilkan bagian privacy policy.

#### animations 2.0.1
Menambahkan beberapa animasi di beberapa widget.

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
