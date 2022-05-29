import 'package:dsvv/Pages/Student_Corner/Menu_Screens/Freshers/freshers_landing_page.dart';
import 'package:dsvv/Pages/Student_Corner/Menu_Screens/Special_Classes/special_classes_landing_page.dart';
import 'package:dsvv/Pages/Student_Corner/Menu_Screens/Student_Choices/student_choices_landing_page.dart';
import 'package:dsvv/Pages/Student_Corner/Menu_Screens/scientific_spirituality_landing_page.dart';
import 'package:dsvv/Pages/Student_Corner/Menu_Screens/social_internship_landing_page.dart';
import 'package:dsvv/Pages/Student_Corner/Screens/color_palette.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/route_manager.dart';
import 'package:google_fonts/google_fonts.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  var _selectedOption = 0;

  List allOptions = [
    const FreshersLandingPage(),
    const SpecialClassesLandingPage(),
    const StudentChoiceLandingPage(),
    const ScientificSpiritualityPage(),
    const SocialInternshipLandingPage(),
  ];

  List isSelected = [true, false, false, false, false];

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;

    return ScreenUtilInit(builder: () {
      return Scaffold(
        body: Stack(
          children: <Widget>[
            // Whole Container
            Container(
              height: screenHeight,
              width: screenWidth,
              color: Colors.transparent,
            ),

            // Menu Box
            Container(
              width: screenWidth * 0.18,
              height: screenHeight,
              color: Colors.orange.withOpacity(0.2),
            ),

            // Content Box
            Positioned(
              left: screenWidth * 0.18,
              child: SizedBox(
                height: screenHeight,
                width: screenWidth * 0.82,
              ),
            ),

            // Menu Icon
            Positioned(
              top: 35.0,
              left: 20.0,
              child: GestureDetector(
                onTap: () {
                  Get.back();
                },
                child: const Icon(
                  FeatherIcons.arrowLeft,
                ),
              ),
            ),

            // Side Nav Bar
            buildSideNavigator(),

            // Menu Content
            Positioned(
              top: 0,
              left: (screenWidth * 0.18),
              child: Container(
                decoration: BoxDecoration(
                  color: ColorPalette().leftBarColor,
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30),
                  ),
                ),
                height: screenHeight * 0.88,
                width: screenWidth * 0.82,
                child: allOptions[_selectedOption],
              ),
            ),

            // Student Corner Content
            Positioned(
              bottom: 0,
              left: (screenWidth * 0.20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const SizedBox(height: 20.0),
                  SizedBox(
                    child: Text(
                      "Student Corner",
                      style: GoogleFonts.bigShouldersText(
                        color: const Color(0xFF23163D),
                        fontSize: 40.0,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.65,
                    child: Text(
                      "A lot can happen over Celebrations",
                      style: GoogleFonts.bigShouldersText(
                        color: const Color(0xFF23163D),
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                  const SizedBox(height: 10.0),
                ],
              ),
            ),
          ],
        ),
      );
    });
  }

  buildSideNavigator() {
    return Positioned(
      top: 75.0,
      child: RotatedBox(
        quarterTurns: 3,
        child: SizedBox(
          width: MediaQuery.of(context).size.height - 75,
          height: MediaQuery.of(context).size.width * 0.18,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              buildOption('Freshers', 0),
              buildOption('Special Classes', 1),
              buildOption('Students Choice', 2),
              buildOption('Scientific Spirituality', 3),
              buildOption('Social Internship', 4),
            ],
          ),
        ),
      ),
    );
  }

  buildOption(String title, int index) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        GestureDetector(
          onTap: () {
            setState(() {
              _selectedOption = index;
              isOptionSelected(index);
            });
          },
          child: isSelected[index]
              ? Container(
                  height: 8.0,
                  width: 8.0,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xFF23163D),
                  ),
                )
              : Container(
                  height: 8.0,
                  width: 8.0,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.transparent,
                  ),
                ),
        ),
        const SizedBox(height: 5.0),
        GestureDetector(
          onTap: () {
            setState(() {
              _selectedOption = index;
              isOptionSelected(index);
            });
          },
          child: Text(
            title,
            style: isSelected[index]
                ? GoogleFonts.bigShouldersText(
                    color: const Color(0xFF23163D),
                    fontSize: 18.0.sp,
                  )
                : GoogleFonts.bigShouldersText(
                    color: const Color(0xFFA59FB0),
                    fontSize: 17.0.sp,
                  ),
          ),
        )
      ],
    );
  }

  isOptionSelected(index) {
    var previousIndex = isSelected.indexOf(true);
    if (previousIndex >= 0 && previousIndex != index) {
      isSelected[index] = true;
      isSelected[previousIndex] = false;
    }
  }
}
