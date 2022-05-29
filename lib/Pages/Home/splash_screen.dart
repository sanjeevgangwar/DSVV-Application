import 'dart:async';
import 'package:dsvv/Pages/Home/main_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  double height = Get.width;
  double width = Get.width;

  @override
  void initState() {
    super.initState();
    navigateToHomepage();
  }

  navigateToHomepage() =>
      Timer(const Duration(seconds: 3), () => Get.off(() => const HomePage()));
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(builder: () {
      return Scaffold(
        body: Container(
          height: 1.sh,
          width: 1.sw,
          color: Colors.orange,
          child: Center(
            child: AnimatedContainer(
              decoration: const BoxDecoration(
                shape: BoxShape.rectangle,
                image: DecorationImage(
                  image: AssetImage('assets/images/logo.png'),
                  fit: BoxFit.fitHeight,
                ),
              ),
              duration: const Duration(seconds: 2),
              height: height,
              width: width,
            ),
          ),
        ),
      );
    });
  }
}
