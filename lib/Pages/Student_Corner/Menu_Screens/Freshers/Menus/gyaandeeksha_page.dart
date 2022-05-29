import 'package:dsvv/Pages/Student_Corner/Screens/color_palette.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/route_manager.dart';
import 'package:google_fonts/google_fonts.dart';

class GyaandeekshaPage extends StatefulWidget {
  final imgPath, headerColor, cardName;

  const GyaandeekshaPage(
      {Key? key,
      required this.imgPath,
      required this.headerColor,
      required this.cardName})
      : super(key: key);

  @override
  State<GyaandeekshaPage> createState() => _GyaandeekshaPageState();
}

class _GyaandeekshaPageState extends State<GyaandeekshaPage> {
  List<String> orientationImagesFirstPart = [
    "assets/images/Student_Corner/Freshers/Gyaan_Deeksha/gyaan1.jpg",
    "assets/images/Student_Corner/Freshers/Gyaan_Deeksha/gyaan2.jpg",
    "assets/images/Student_Corner/Freshers/Gyaan_Deeksha/gyaan3.jpg",
  ];
  List<String> orientationImagesSecondPart = [
    "assets/images/Student_Corner/Freshers/Gyaan_Deeksha/gyaan5.jpg",
    "assets/images/Student_Corner/Freshers/Gyaan_Deeksha/gyaan6.jpg",
    "assets/images/Student_Corner/Freshers/Gyaan_Deeksha/gyaan7.jpg",
    "assets/images/Student_Corner/Freshers/Gyaan_Deeksha/gyaan8.jpg",
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
                'Gyaan Deeksha',
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
                        // left: screenWidth / 4.3,
                        child: Hero(
                          tag: "scientific_spirituality",
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
                                  "assets/images/Student_Corner/Freshers/Gyaan_Deeksha/gyaan4.jpg",
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
                  height: screenHeight * 1.45,
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
                                'With the commencement of each semester, a traditional invocation ritual is held, in which new and returning students, as well as faculty members, are acquainted with the University’s value system and are anticipated to follow the shadow while studying or teaching on campus. “Gyaan Deekhsha “- The invocation ritual that is held on the first day of classes for all students at the university.',
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
                                'The offering of a mantra or an initiation by the guru (in the Guru–shishya tradition) of Indian religions are known Deeksha, which means "preparation or consecration for a religious ritual." Deeksha is bestowed in a one-on-one ceremony and usually entails the acceptance of a severe spiritual practice. When the guru and disciple\'s minds become one, we say that the disciple is been initiated by the guru.',
                                style: GoogleFonts.bigShouldersText(
                                  color: const Color(0xFFB5ABB8),
                                  fontSize: 15.0.sp,
                                  decoration: TextDecoration.none,
                                ),
                                textAlign: TextAlign.justify,
                              ),
                            ),
                            const SizedBox(height: 50),
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
                                'The University is determined that if there can be an end to Deeksha (Deekshant), then there should be a beginning to Deeksha as well, and this ceremony was created with that goal in mind. They are greeted with a Gayatri Mantra Dupatta and a Tulsi seedling, which signify their need to strive for refined intellect and purity in life, respectively. It is a prayer that invokes God\'s presence and preaches to students the values of the university.',
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
