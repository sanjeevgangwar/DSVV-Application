import 'package:dsvv/Pages/Home/main_controller.dart';
import 'package:dsvv/Pages/Home/splash_screen.dart';
import 'package:dsvv/Pages/Student_Corner/Screens/student_corner_landing_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

//  Token: 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

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(const MyApp());
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky,
      overlays: [SystemUiOverlay.top]);
  SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: Colors.black));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'DSVV Application',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      // home: const HomePage(),
      // home: const DashboardPage(),
      home: const SplashScreen(),
    );
  }
}
