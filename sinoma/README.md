# Sinoma

Aplikasi Skrining dini kanker mulut berbasis Machine Learning, App ini dibuat menggunakan Flutter dan Firebase. Pada intinya, flutter digunakan untuk membuat tampilan aplikasi dan Firebase digunakan untuk proses auth user dalam versi ini. Terdapat beberapa catatan untuk pengembang Sinoma selanjutnya, antara lain :

* Hasil survey yang dilakukan pengguna di bagian diagnosis belum dapat diintegrasikan ke Firebase.
* Model TensorFlow yang digunakan pada aplikasi saat ini masih versi yang lama dikarenakan besarnya size dari model tersebut sehingga kurang cocok apabila model tersebut di run langsung di device pengguna.

Selain hal diatas, beberapa hal yang belum sempat saya lakukan sebagai pengembang aplikasi sebelumnya antara lain : 

* Integrasi hasil diagnosis + foto yang dipilih user ke dalam database di Firebase.
* Menambah beberapa animasi transition antar page agar lebih halus
* Membuat kode untuk mengecek jaringan apabila kebutuhan jaringan di aplikasi sudah penting, contoh: run model di cloud, integrasi hasil online, dll.
* opsi lain jika kesulitan mengembangkan fitur survey dalam aplikasi yaitu dengan memasukkan link survey yang diakses melalui browser device.
* Membuat panduan penggunaan aplikasi yang menarik dan lebih mudah dipahami oleh user.

## Cara Penggunaan

**Step 1:**

Unduh atau clone repo ini dengan menggunakan tautan di bawah ini:

```
https://github.com/fathansantoso30/Sinoma.git
```

**Step 2:**

Buka root projek dan jalankan perintah berikut di konsol untuk mendapatkan dependensi yang diperlukan:

```
flutter pub get 
```

**Step 3:**

Jalankan projek dengan perintah berikut di konsol:

```
flutter pub run
```

## Dokumentasi

### Detail File & Folder

Berikut adalah rincian dan penjelasan untuk setiap folder penting yang ada di project ini :

* #### assets
Digunakan untuk menyimpan file seperti Gambar dan Model TensorFlow yang digunakan.

* #### lib/constants
Berisi Kode File yang berfungsi untuk memudahkan beberapa hal, lebih detailnya ada di comment masing-masing file.

* #### lib/controllers
Berisi berbagai Controller dari package GetX yang digunakan mengatur berbagai hal.

* #### lib/helpers
Berisi file binding, loading, dan validator untuk form. Sebenarnya dapat dipisah lagi dan digabungkan dengan beberapa file di folder constants.

* #### lib/models
Berisi Kode file yang berfungsi sebagai model data yang akan dipakai.

* #### lib/pages
Berisi widget yang akan ditampilan di dashboard dan halaman dipisah berdasarkan fiturnya.

* #### lib/themes
Berisi kode file yang mengatur warna dan jenis font yang digunakan.

* #### lib/widgets
Berisi widget yang dapat dipakai kembali.

### Detail Packages 
Berikut adalah list packages yang digunakan beserta penjelasan pemakaiannya untuk project ini :

* #### google_fonts 2.1.0
Diperlukan untuk menggunakan font.

* #### flutter_native_splash 1.2.1
Digunakan dalam pembuatan splash screen aplikasi.

* #### get 3.26.0
Digunakan untuk Routing, Navigasi, dan Controller.

* #### cloud_firestore 1.0.4
Untuk menggunakan fitur firebase firestore guna menyimpan data user ke firestore.

* #### firebase_auth & firebase_core
Untuk autentikasi user menggunakan firebase.

* #### flutter_launcher_icons 0.9.0
Untuk menset icon aplikasi.

* #### survey_kit 0.0.8
Untuk membuat Form Page di bagian diagnosa.
NB : Belum bisa mengambil data hasil akhir form.

* #### tflite 1.1.1
Untuk mengolah model TensorFlow dan mengklasifikasikan berdasarkan label yang ada.

* #### image_picker 0.8.2
Untuk mengambil gambar yang akan digunakan model nantinya, baik dari kamera maupun galeri.

* #### babstrap_settings_screen 0.1.0
Untuk membuat tampilan settings.

* #### flutter_markdown 0.6.6
Untuk menampilkan file ekstensi .md dan digunakan untuk menampilkan bagian privacy policy.

* #### animations 2.0.1
Menambahkan beberapa animasi di beberapa widget.

## Catatan Tambahan
Saya menyarankan untuk cukup meng-clone / fork project ini dari github dan membuat repo baru agar dapat dimantain lebih mudah. Saya selaku pengembang aplikasi ini sebelumnya mohon maaf apabila terdapat beberapa kekurangan maupun ketidakjelasan pada kualitas kode saya karena masih dalam tahap belajar. Sekian & Terima Kasih, saya ucapkan kepada pengembang selanjutnya agar dimudahkan dalam pengembangan aplikasi ini. Sukses selalu, Fathan HS.

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
