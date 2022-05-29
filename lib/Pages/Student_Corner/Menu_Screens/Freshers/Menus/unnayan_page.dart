import 'package:dsvv/Pages/Student_Corner/Screens/color_palette.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/route_manager.dart';
import 'package:google_fonts/google_fonts.dart';

class UnnayanPage extends StatefulWidget {
  final imgPath, headerColor, cardName;

  const UnnayanPage(
      {Key? key,
      required this.imgPath,
      required this.headerColor,
      required this.cardName})
      : super(key: key);

  @override
  State<UnnayanPage> createState() => _UnnayanPageState();
}

class _UnnayanPageState extends State<UnnayanPage> {
  List<String> orientationImagesFirstPart = [
    "assets/images/Student_Corner/Freshers/Unnayan/unnayan1.jpg",
    "assets/images/Student_Corner/Freshers/Unnayan/unnayan3.jpg",
    "assets/images/Student_Corner/Freshers/Unnayan/unnayan4.jpg",
    "assets/images/Student_Corner/Freshers/Unnayan/unnayan5.jpg",
    "assets/images/Student_Corner/Freshers/Unnayan/unnayan6.jpg",
    "assets/images/Student_Corner/Freshers/Unnayan/unnayan7.jpg",
  ];
  List<String> orientationImagesSecondPart = [
    "assets/images/Student_Corner/Freshers/Unnayan/unnayan8.jpg",
    "assets/images/Student_Corner/Freshers/Unnayan/unnayan9.jpg",
    "assets/images/Student_Corner/Freshers/Unnayan/unnayan10.jpg",
    "assets/images/Student_Corner/Freshers/Unnayan/unnayan11.jpg",
    "assets/images/Student_Corner/Freshers/Unnayan/unnayan12.jpg",
    "assets/images/Student_Corner/Freshers/Unnayan/unnayan13.jpg",
    "assets/images/Student_Corner/Freshers/Unnayan/unnayan14.jpg",
  ];
  List<String> orientationImagesThirdPart = [
    "assets/images/Student_Corner/Freshers/Unnayan/unnayan15.jpg",
    "assets/images/Student_Corner/Freshers/Unnayan/unnayan16.jpg",
    "assets/images/Student_Corner/Freshers/Unnayan/unnayan17.jpg",
    "assets/images/Student_Corner/Freshers/Unnayan/unnayan18.jpg",
    "assets/images/Student_Corner/Freshers/Unnayan/unnayan19.jpg",
    "assets/images/Student_Corner/Freshers/Unnayan/unnayan20.jpg",
    "assets/images/Student_Corner/Freshers/Unnayan/unnayan21.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;

    return Container(
      decoration: BoxDecoration(
        color: ColorPalette().leftBarColor,
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(30),
          bottomRight: Radius.circular(30),
        ),
      ),
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: <Widget>[
          SliverAppBar(
            pinned: false,
            stretch: true,
            centerTitle: true,
            onStretchTrigger: () async {
              // print('Load new data!');
            },
            backgroundColor: Colors.transparent,
            automaticallyImplyLeading: false,
            expandedHeight: screenHeight * 0.45,
            flexibleSpace: FlexibleSpaceBar(
              stretchModes: const [
                StretchMode.zoomBackground,
                StretchMode.fadeTitle,
              ],
              centerTitle: true,
              title: const Text(
                'Unnayan',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              background: DecoratedBox(
                position: DecorationPosition.foreground,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.center,
                    colors: <Color>[
                      Colors.transparent,
                      Colors.transparent,
                    ],
                  ),
                ),
                child: Stack(
                  children: <Widget>[
                    // White Written Title Box
                    Container(
                      height: screenHeight * 0.45,
                      width: screenWidth,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(30.0),
                          bottomLeft: Radius.circular(30.0),
                        ),
                        color: Colors.white,
                      ),
                    ),

                    // Background Doodle
                    Container(
                      height: screenHeight * 0.23,
                      width: screenWidth,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(30.0),
                          bottomLeft: Radius.circular(30.0),
                        ),
                        image: DecorationImage(
                          image: AssetImage('assets/images/doodle.png'),
                          fit: BoxFit.none,
                        ),
                      ),
                    ),

                    // White Layer
                    Container(
                      height: screenHeight * 0.23,
                      width: screenWidth,
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                          bottomRight: Radius.circular(30.0),
                          bottomLeft: Radius.circular(30.0),
                        ),
                        color: Colors.white.withOpacity(0.6),
                      ),
                    ),

                    // skin Color Box
                    Container(
                      height: screenHeight * 0.23,
                      width: screenWidth,
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                          bottomRight: Radius.circular(30.0),
                          bottomLeft: Radius.circular(30.0),
                        ),
                        color: widget.headerColor.withOpacity(0.9),
                      ),
                    ),

                    // Back Button
                    Positioned(
                      top: 35.0,
                      left: 20.0,
                      child: GestureDetector(
                        onTap: () {
                          Get.back();
                        },
                        child: Icon(
                          Icons.keyboard_arrow_down_outlined,
                          color: Colors.white,
                          size: 35.sp,
                        ),
                      ),
                    ),
                    // const Positioned(
                    //   top: 35.0,
                    //   right: 20.0,
                    //   child: Icon(
                    //     FeatherIcons.shoppingBag,
                    //     color: Colors.white,
                    //   ),
                    // ),

                    // Image
                    Center(
                      child: Positioned(
                        top: screenHeight * 0.25,
                        child: Hero(
                          tag: "unnayan",
                          child: Container(
                            height: screenWidth * 0.45,
                            width: screenWidth * 0.55,
                            // width: 175,
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(25),
                              ),
                              image: DecorationImage(
                                image: AssetImage(
                                  "assets/images/Student_Corner/Freshers/Unnayan/unnayan2.jpg",
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              <Widget>[
                Container(
                  height: screenHeight * 1.8,
                  width: screenWidth,
                  padding: const EdgeInsets.only(left: 2, right: 5, top: 10),
                  child: Stack(
                    children: <Widget>[
                      Positioned(
                        top: screenWidth * 0.1,
                        left: screenWidth * 0.05,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            const SizedBox(height: 10.0),
                            SizedBox(
                              width: screenWidth - 40.0,
                              child: Text(
                                '“Unnayan” is the celebration of commencement at the university, which embarks on the reformation of newly admitted students.',
                                style: GoogleFonts.bigShouldersText(
                                  color: const Color.fromARGB(255, 98, 95, 99),
                                  fontSize: 15.0.sp,
                                  decoration: TextDecoration.none,
                                ),
                                textAlign: TextAlign.justify,
                              ),
                            ),
                            const SizedBox(height: 50.0),
                            Container(
                              padding: const EdgeInsets.only(right: 40),
                              height: screenWidth * 0.55,
                              width: screenWidth,
                              child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                physics: const BouncingScrollPhysics(),
                                itemCount: orientationImagesFirstPart.length,
                                itemBuilder: ((context, index) {
                                  return Container(
                                    margin: const EdgeInsets.only(right: 10),
                                    child: buildOneItem(
                                        orientationImagesFirstPart[index]),
                                  );
                                }),
                              ),
                            ),
                            const SizedBox(height: 50),
                            SizedBox(
                              width: screenWidth - 40.0,
                              child: Text(
                                'The event reveres the presence of all the dignitaries of the university. It is a decorous and cordial welcome by the senior students of their juniors. The program enlights the motive and direction of the new endeavor of the students.',
                                style: GoogleFonts.bigShouldersText(
                                  color: const Color(0xFFB5ABB8),
                                  fontSize: 15.0.sp,
                                  decoration: TextDecoration.none,
                                ),
                                textAlign: TextAlign.justify,
                              ),
                            ),
                            const SizedBox(height: 50.0),
                            Container(
                              padding: const EdgeInsets.only(right: 40),
                              height: screenWidth * 0.55,
                              width: screenWidth,
                              child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                physics: const BouncingScrollPhysics(),
                                itemCount: orientationImagesSecondPart.length,
                                itemBuilder: ((context, index) {
                                  return Container(
                                    margin: const EdgeInsets.only(right: 10),
                                    child: buildOneItem(
                                        orientationImagesSecondPart[index]),
                                  );
                                }),
                              ),
                            ),
                            const SizedBox(height: 50),
                            SizedBox(
                              width: screenWidth - 40.0,
                              child: Text(
                                'International students are bestowed with Mantra chadar as a souvenir to mark their journey with the blessings of Gayatri Maa. It is a cultural event where various activities like- dance, drama, and music. The day is feasted with delicious refreshments for the students. The day embarks on the commitment of students towards a prosperous journey.',
                                style: GoogleFonts.bigShouldersText(
                                  color: const Color(0xFFB5ABB8),
                                  fontSize: 15.0.sp,
                                  decoration: TextDecoration.none,
                                ),
                                textAlign: TextAlign.justify,
                              ),
                            ),
                            const SizedBox(height: 50.0),
                            Container(
                              padding: const EdgeInsets.only(right: 40),
                              height: screenWidth * 0.55,
                              width: screenWidth,
                              child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                physics: const BouncingScrollPhysics(),
                                itemCount: orientationImagesThirdPart.length,
                                itemBuilder: ((context, index) {
                                  return Container(
                                    margin: const EdgeInsets.only(right: 10),
                                    child: buildOneItem(
                                        orientationImagesThirdPart[index]),
                                  );
                                }),
                              ),
                            ),
                            const SizedBox(height: 50.0),
                            SizedBox(
                              width: screenWidth - 40.0,
                              child: Text(
                                'Their relevant topic specialists, volunteers, and department heads contributed the information. The event witnessed the presence of various dignitaries from various departments.  During the program\'s closing ceremony, the Vice-Chancellor of the University, Shri Sharad Pandey, welcomed the students and explained the significance of the phrase "New Admission," namely, to collaborate with new constructive streams of thinking.',
                                style: GoogleFonts.bigShouldersText(
                                  color: const Color(0xFFB5ABB8),
                                  fontSize: 15.0.sp,
                                  decoration: TextDecoration.none,
                                ),
                                textAlign: TextAlign.justify,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  buildOneItem(String imgPath) {
    return Stack(
      children: [
        Container(
          height: MediaQuery.of(context).size.width * 0.55,
          width: MediaQuery.of(context).size.width * 0.8,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(
              Radius.circular(30),
            ),
            image: DecorationImage(
              image: AssetImage(imgPath),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ],
    );
  }
}
