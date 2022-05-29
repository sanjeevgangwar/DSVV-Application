import 'package:dsvv/Pages/Student_Corner/Menu_Screens/Special_Classes/Menus/dhyan_classes_page.dart';
import 'package:dsvv/Pages/Student_Corner/Menu_Screens/Special_Classes/Menus/geeta_classes_page.dart';
import 'package:dsvv/Pages/Student_Corner/Menu_Screens/Special_Classes/Menus/lm_classes.dart';
import 'package:dsvv/Pages/Student_Corner/Menu_Screens/Student_Choices/Menus/utkarsh_page.dart';
import 'package:dsvv/Pages/Student_Corner/Menu_Screens/Student_Choices/Menus/utsav_page.dart';
import 'package:dsvv/Pages/Student_Corner/Menu_Screens/Student_Choices/Menus/workshop_webinar_page.dart';
import 'package:dsvv/Pages/Student_Corner/Screens/color_palette.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/route_manager.dart';
import 'package:google_fonts/google_fonts.dart';

class StudentChoiceLandingPage extends StatefulWidget {
  const StudentChoiceLandingPage({Key? key}) : super(key: key);

  @override
  State<StudentChoiceLandingPage> createState() =>
      _StudentChoiceLandingPageState();
}

class _StudentChoiceLandingPageState extends State<StudentChoiceLandingPage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const BouncingScrollPhysics(),
      children: <Widget>[
        buildListItem(
          'Utkarsh',
          "assets/images/Student_Corner/Student_Choice/Utkarsh/utkarsh6.jpg",
          ColorPalette().secondSlice,
        ),
        buildListItem(
          'Utsav',
          "assets/images/Student_Corner/Student_Choice/Utsav/utsav4.jpg",
          ColorPalette().firstSlice,
        ),
        buildListItem(
          'Workshop Webinar',
          "assets/images/Student_Corner/Student_Choice/Utsav/utsav3.jpg",
          ColorPalette().secondSlice,
        ),
      ],
    );
  }

  buildListItem(String cardName, String imgPath, Color bgColor) {
    return GestureDetector(
      onTap: () {
        if (cardName == "Utkarsh") {
          Get.to(
            () => UtkarshPage(
              imgPath: imgPath,
              headerColor: bgColor,
              cardName: cardName,
            ),
            duration: const Duration(
              milliseconds: 400,
            ),
            transition: Transition.downToUp,
          );
        } else if (cardName == "Utsav") {
          Get.to(
            () => UtsavPage(
              imgPath: imgPath,
              headerColor: bgColor,
              cardName: cardName,
            ),
            duration: const Duration(
              milliseconds: 400,
            ),
            transition: Transition.downToUp,
          );
        } else if (cardName == "Workshop Webinar") {
          Get.to(
            () => WorkshopWebinarPage(
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
        ],
      ),
    );
  }
}
