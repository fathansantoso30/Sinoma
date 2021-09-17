import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:sinoma/constants/firebase.dart';
import 'package:sinoma/helpers/loading_widget.dart';
import 'package:sinoma/models/user.dart';
import 'package:sinoma/pages/authentication/authentication.dart';
import 'package:sinoma/pages/dashboard/dashboard_page.dart';
import 'package:sinoma/themes/const.dart';

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

  // RxString userDisplayName = "".obs;

  @override
  void onReady() {
    super.onReady();
    firebaseUser = Rx<User>(auth.currentUser);
    firebaseUser.bindStream(auth.userChanges());
    ever(firebaseUser, _setInitialScreen);
  }

  _setInitialScreen(User user) {
    if (user == null) {
      Get.offAll(() => AuthPage());
    } else {
      Get.offAll(
        () => Scaffold(
          body: DashboardPage(),
        ),
        // arguments: userDisplayName.value
      ); //TODO
    }
  }

  _checkisAgreed() async {
    if (isAgreed.value == false) {
      Get.offAll(() => AuthPage());
      Get.snackbar("Mohon cek ketentuan terlebih dulu", "Coba lagi",
          colorText: Colors.red,
          backgroundColor: whiteColor,
          duration: Duration(seconds: 5));
    } else {
      await auth
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

  void deleteAccount() async {
    String _userId = auth.currentUser.uid;
    _deleteUser(_userId);
  }

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

  // getDisplayName(String userId) async {
  //   userDisplayName.value = await firebaseFirestore
  //       .collection(usersCollection)
  //       .doc(userId)
  //       .get()
  //       .then((value) => value.data()["name"]);
  // }

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

  _addUserToFirestore(String userId) {
    firebaseFirestore.collection(usersCollection).doc(userId).set(
        {"name": name.text.trim(), "id": userId, "email": email.text.trim()});
  }

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

  _initializeUserModel(String userId) async {
    userModel.value = await firebaseFirestore
        .collection(usersCollection)
        .doc(userId)
        .get()
        .then((doc) => UserModel.fromSnapshot(doc));
  }

  clearControllers() {
    name.clear();
    email.clear();
    password.clear();
  }
}
