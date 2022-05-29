import 'package:dsvv/Pages/Home/main_screen.dart';
import 'package:dsvv/Pages/Home/menu_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final ZoomDrawerController drawerController = ZoomDrawerController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: ZoomDrawer(
        controller: drawerController,
        menuScreen: MenuScreen(
          zoomDrawerController: drawerController,
        ),
        mainScreen: MainScreen(
          zoomDrawerController: drawerController,
        ),
        borderRadius: 24.0,
        showShadow: true,
        boxShadow: const [
          BoxShadow(color: Colors.amberAccent),
        ],
        angle: 0.0,
        backgroundColor: Colors.grey.shade300,
        slideWidth: MediaQuery.of(context).size.width * 0.55,
        openCurve: Curves.fastOutSlowIn,
        closeCurve: Curves.bounceIn,
      ),
    );
  }
}
