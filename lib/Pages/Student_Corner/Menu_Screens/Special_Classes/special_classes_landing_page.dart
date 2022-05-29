import 'package:dsvv/Pages/Student_Corner/Menu_Screens/Special_Classes/Menus/dhyan_classes_page.dart';
import 'package:dsvv/Pages/Student_Corner/Menu_Screens/Special_Classes/Menus/geeta_classes_page.dart';
import 'package:dsvv/Pages/Student_Corner/Menu_Screens/Special_Classes/Menus/lm_classes.dart';
import 'package:dsvv/Pages/Student_Corner/Screens/color_palette.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/route_manager.dart';
import 'package:google_fonts/google_fonts.dart';

class SpecialClassesLandingPage extends StatefulWidget {
  const SpecialClassesLandingPage({Key? key}) : super(key: key);

  @override
  State<SpecialClassesLandingPage> createState() =>
      _SpecialClassesLandingPageState();
}

class _SpecialClassesLandingPageState extends State<SpecialClassesLandingPage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const BouncingScrollPhysics(),
      children: <Widget>[
        buildListItem(
          'Dhyaan Classes',
          "assets/images/Student_Corner/Special_Classes/Dhyan_Classes/dhyaan5.jpg",
          ColorPalette().secondSlice,
        ),
        buildListItem(
          'Geeta Classes',
          "assets/images/Student_Corner/Special_Classes/Geeta_Classes/geeta6.jpg",
          ColorPalette().firstSlice,
        ),
        buildListItem(
          'LM Classes',
          "assets/images/Student_Corner/Special_Classes/LM_Classes/lm1.jpg",
          ColorPalette().secondSlice,
        ),
      ],
    );
  }

  buildListItem(String cardName, String imgPath, Color bgColor) {
    return GestureDetector(
      onTap: () {
        if (cardName == "Dhyaan Classes") {
          Get.to(
            () => DhyanClassesPage(
              imgPath: imgPath,
              headerColor: bgColor,
              cardName: cardName,
            ),
            duration: const Duration(
              milliseconds: 400,
            ),
            transition: Transition.downToUp,
          );
        } else if (cardName == "Geeta Classes") {
          Get.to(
            () => GeetaClassesPage(
              imgPath: imgPath,
              headerColor: bgColor,
              cardName: cardName,
            ),
            duration: const Duration(
              milliseconds: 400,
            ),
            transition: Transition.downToUp,
          );
        } else if (cardName == "LM Classes") {
          Get.to(
            () => LMClassesPage(
              imgPath: imgPath,
              headerColor: bgColor,
              cardName: cardName,
            ),
            duration: const Duration(
              milliseconds: 400,
            ),
            transition: Transition.downToUp,
          );
        }
      },
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Container(
            height: 0.40.sh,
            width: 0.78.sw,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25.0),
              color: Colors.transparent,
            ),
          ),
          Positioned(
            top: 0.25.sw,
            child: Container(
              height: 0.50.sw,
              width: 0.70.sw,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25.0),
                image: const DecorationImage(
                  image: AssetImage('assets/images/doodle.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Positioned(
            top: 0.25.sw,
            child: Container(
              height: 0.50.sw,
              width: 0.70.sw,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25.0),
                color: Colors.white.withOpacity(0.6),
              ),
            ),
          ),
          Positioned(
            top: 0.25.sw,
            child: Container(
              height: 0.50.sw,
              width: 0.70.sw,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25.0),
                color: bgColor.withOpacity(0.6),
              ),
            ),
          ),

          // Floating Image
          Positioned(
            right: 0.20.sw,
            top: 55.0,
            child: Hero(
              tag: imgPath,
              child: Container(
                height: 0.30.sw,
                width: 0.40.sw,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(30.0),
                  ),
                  image: DecorationImage(
                    image: AssetImage(imgPath),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),

          //Written Card Content
          Positioned(
            top: 0.45.sw,
            // left: 0.15.sw,
            child: Center(
              child: Container(
                width: 0.70.sw,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    const SizedBox(height: 20.0),
                    Text(
                      cardName,
                      style: GoogleFonts.bigShouldersText(
                        color: const Color(0xFF23163D),
                        fontSize: 27.0.sp,
                      ),
                    ),
                    const SizedBox(height: 2.0),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
