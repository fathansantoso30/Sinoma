import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sinoma/controllers/appController.dart';
import 'package:sinoma/controllers/authController.dart';
import 'package:sinoma/helpers/binding.dart';
import 'package:sinoma/widgets/loading.dart';
import 'constants/firebase.dart';

void main() async {
  // Initialize auth controller
  WidgetsFlutterBinding.ensureInitialized();
  await initialization.then((value) {
    Get.put(AppController());
    Get.put(AuthController());
  });
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Loading(),
      title: "Sinoma",
      theme: ThemeData(
        textTheme: GoogleFonts.robotoTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
      debugShowCheckedModeBanner: false,
      initialBinding: Binding(),
    );
  }
}
