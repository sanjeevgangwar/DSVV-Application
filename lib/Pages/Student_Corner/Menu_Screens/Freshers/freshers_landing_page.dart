import 'package:dsvv/Pages/Student_Corner/Menu_Screens/Freshers/Menus/gyaandeeksha_page.dart';
import 'package:dsvv/Pages/Student_Corner/Menu_Screens/Freshers/Menus/orientation_page.dart';
import 'package:dsvv/Pages/Student_Corner/Menu_Screens/Freshers/Menus/unnayan_page.dart';
import 'package:dsvv/Pages/Student_Corner/Screens/color_palette.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/route_manager.dart';
import 'package:google_fonts/google_fonts.dart';

class FreshersLandingPage extends StatefulWidget {
  const FreshersLandingPage({Key? key}) : super(key: key);

  @override
  State<FreshersLandingPage> createState() => _FreshersLandingPageState();
}

class _FreshersLandingPageState extends State<FreshersLandingPage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const BouncingScrollPhysics(),
      children: <Widget>[
        buildListItem(
          'Gyaan Deeksha',
          "assets/images/Student_Corner/Freshers/Gyaan_Deeksha/gyaan4.jpg",
          ColorPalette().secondSlice,
        ),
        buildListItem(
          'Orientation',
          "assets/images/Student_Corner/Freshers/Orientation/orientation1.jpg",
          ColorPalette().firstSlice,
        ),
        buildListItem(
          'Unnayan',
          "assets/images/Student_Corner/Freshers/Unnayan/unnayan2.jpg",
          ColorPalette().secondSlice,
        ),
      ],
    );
  }

  buildListItem(String cardName, String imgPath, Color bgColor) {
    return GestureDetector(
      onTap: () {
        if (cardName == "Orientation") {
          Get.to(
            () => OrientationPage(
              imgPath: imgPath,
              headerColor: bgColor,
              cardName: cardName,
            ),
            duration: const Duration(
              milliseconds: 400,
            ),
            transition: Transition.downToUp,
          );
        } else if (cardName == "Gyaan Deeksha") {
          Get.to(
            () => GyaandeekshaPage(
              imgPath: imgPath,
              headerColor: bgColor,
              cardName: cardName,
            ),
            duration: const Duration(
              milliseconds: 400,
            ),
            transition: Transition.downToUp,
          );
        } else if (cardName == "Unnayan") {
          Get.to(
            () => UnnayanPage(
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
                    // Container(
                    //   width: 200.0,
                    //   child: Row(
                    //     mainAxisAlignment: MainAxisAlignment.center,
                    //     crossAxisAlignment: CrossAxisAlignment.center,
                    //     children: <Widget>[
                    //       GestureDetector(
                    //         onTap: () {},
                    //         child: Container(
                    //           width: 75.0,
                    //           height: 30.0,
                    //           decoration: BoxDecoration(
                    //             borderRadius: BorderRadius.circular(7.0),
                    //             color: Colors.white,
                    //           ),
                    //           child: Row(
                    //             mainAxisAlignment: MainAxisAlignment.center,
                    //             children: [
                    //               const Icon(Icons.add, size: 17.0),
                    //               const SizedBox(width: 5.0),
                    //               Text(
                    //                 'Add',
                    //                 style: GoogleFonts.bigShouldersText(
                    //                   color: const Color(0xFF23163D),
                    //                   fontSize: 15.0.sp,
                    //                 ),
                    //               ),
                    //             ],
                    //           ),
                    //         ),
                    //       ),
                    //     ],
                    //   ),
                    // ),
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
