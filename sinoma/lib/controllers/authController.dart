import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:sinoma/constants/firebase.dart';
import 'package:sinoma/helpers/loading_widget.dart';
import 'package:sinoma/models/user.dart';
import 'package:sinoma/pages/authentication/authentication.dart';
import 'package:sinoma/pages/dashboard/dashboard_page.dart';
import 'package:sinoma/themes/const.dart';

/// meng-kontrol autentikasi user
class AuthController extends GetxController {
  static AuthController instance = Get.find();
  Rx<User> firebaseUser;
  RxBool isLoggedIn = false.obs;
  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  String usersCollection = "users";
  Rx<UserModel> userModel = UserModel().obs;
  var isAgreed = false.obs;

  @override
  void onReady() {
    super.onReady();
    firebaseUser = Rx<User>(auth.currentUser);
    firebaseUser.bindStream(auth.userChanges());
    ever(firebaseUser, _setInitialScreen);
  }

  /// cek kondisi, jika pengguna telah masuk maka buka dashboard page sebaliknya
  /// tampilkan auth page bagi pengguna untuk login
  _setInitialScreen(User user) {
    if (user == null) {
      Get.offAll(() => AuthPage());
    } else {
      Get.offAll(
        () => Scaffold(
          body: DashboardPage(),
        ),
      );
    }
  }

  /// cek user sudah mencentang bagian ketentuan terlebih dahulu,
  /// jika belum maka muncul snackbar dan dikembalikan ke auth page
  _checkisAgreed() async {
    if (isAgreed.value == false) {
      Get.offAll(() => AuthPage());
      Get.snackbar("Mohon cek ketentuan terlebih dulu", "Coba lagi",
          colorText: Colors.red,
          backgroundColor: whiteColor,
          duration: Duration(seconds: 5));
    } else {
      await auth

          /// membuat data auth berdasarkan form yang diisi lalu memasukkan data ke
          /// Firebase Firestore
          .createUserWithEmailAndPassword(
              email: email.text.trim(), password: password.text.trim())
          .then((result) {
        String _userId = result.user.uid;
        _addUserToFirestore(_userId);
        _initializeUserModel(_userId);
        clearControllers();
      });
    }
  }

  /// fungsi untuk sign in / masuk dengan metode email & password
  void signIn() async {
    try {
      showLoading();
      await auth
          .signInWithEmailAndPassword(
              email: email.text.trim(), password: password.text.trim())
          .then((result) {
        String _userId = result.user.uid;
        _initializeUserModel(_userId);
        clearControllers();
      });
    } catch (e) {
      clearControllers();
      Get.offAll(() => AuthPage());
      Get.snackbar("E-mail anda tidak terdaftar", e.message,
          colorText: Colors.red,
          backgroundColor: whiteColor,
          duration: Duration(seconds: 5));
    }
  }

  /// fungsi untuk melakukan registrasi / membuat akun
  void signUp() async {
    showLoading();
    try {
      _checkisAgreed();
    } catch (e) {
      clearControllers();
      Get.offAll(() => AuthPage());
      Get.snackbar("Terjadi kesalahan", e.message,
          colorText: Colors.red,
          backgroundColor: whiteColor,
          duration: Duration(seconds: 10));
    }
  }

  /// fungsi untuk menghapus akun
  void deleteAccount() async {
    String _userId = auth.currentUser.uid;
    _deleteUser(_userId);
  }

  /// fungsi untuk mengirim email guna me-reset password akun
  Future<void> sendPasswordResetEmail(BuildContext context) async {
    showLoading();
    try {
      await auth.sendPasswordResetEmail(email: email.text);
      Get.back();
      Get.snackbar("Berhasil", "Silahkan cek Email anda",
          duration: Duration(seconds: 5),
          backgroundColor: whiteColor,
          colorText: Colors.green);
    } catch (e) {
      Get.back();
      Get.snackbar('Terjadi Kesalahan', e.message,
          duration: Duration(seconds: 10),
          backgroundColor: whiteColor,
          colorText: Colors.red);
    }
  }

  /// fungsi untuk log out akun
  void signOut() async {
    try {
      clearControllers();
      await auth.signOut();
    } catch (e) {
      Get.back();
      Get.snackbar("Terjadi kesalahan", e.message,
          colorText: Colors.red,
          backgroundColor: whiteColor,
          duration: Duration(seconds: 10));
    }
  }

  /// fungsi untuk menambahkan data user yang dibuat saat registrasi ke firestore
  _addUserToFirestore(String userId) {
    firebaseFirestore.collection(usersCollection).doc(userId).set(
        {"name": name.text.trim(), "id": userId, "email": email.text.trim()});
  }

  /// fungsi untuk menghapus data user di firestore
  _deleteUser(String userId) async {
    try {
      await FirebaseAuth.instance.currentUser.delete();
      firebaseFirestore.collection(usersCollection).doc(userId).delete();
      Get.snackbar("Berhasil", "Akun telah terhapus",
          colorText: Colors.green,
          backgroundColor: whiteColor,
          duration: Duration(seconds: 5));
    } catch (e) {
      Get.back();
      Get.snackbar("Terjadi kesalahan", e.message,
          colorText: Colors.red,
          backgroundColor: whiteColor,
          duration: Duration(seconds: 10));
    }
  }

  /// me-load data user dari firestore sesuai UserModel
  _initializeUserModel(String userId) async {
    userModel.value = await firebaseFirestore
        .collection(usersCollection)
        .doc(userId)
        .get()
        .then((doc) => UserModel.fromSnapshot(doc));
  }

  /// menghapus data di field form
  clearControllers() {
    name.clear();
    email.clear();
    password.clear();
  }
}
