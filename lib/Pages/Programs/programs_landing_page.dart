import 'package:dsvv/Pages/Programs/programs_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/route_manager.dart';

class ProgramsLandingPage extends StatefulWidget {
  const ProgramsLandingPage({Key? key}) : super(key: key);

  @override
  State<ProgramsLandingPage> createState() => _ProgramsLandingPageState();
}

class _ProgramsLandingPageState extends State<ProgramsLandingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: const Icon(
            Icons.arrow_back_outlined,
            color: Colors.white,
          ),
        ),
        elevation: 0,
        backgroundColor: Colors.orange,
        title: const Text(
          "Programs",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: false,
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              "assets/icons/notification.svg",
            ),
          ),
        ],
      ),
      body: const ProgramsBody(),
      backgroundColor: Colors.orange,
    );
  }
}
