import 'package:dsvv/Pages/Student_Corner/Screens/color_palette.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/route_manager.dart';
import 'package:google_fonts/google_fonts.dart';

class GeetaClassesPage extends StatefulWidget {
  final imgPath, headerColor, cardName;

  const GeetaClassesPage(
      {Key? key,
      required this.imgPath,
      required this.headerColor,
      required this.cardName})
      : super(key: key);

  @override
  State<GeetaClassesPage> createState() => _GeetaClassesPageState();
}

class _GeetaClassesPageState extends State<GeetaClassesPage> {
  List<String> geetaImagesFirstPart = [
    "assets/images/Student_Corner/Special_Classes/Geeta_Classes/geeta1.jpeg",
    "assets/images/Student_Corner/Special_Classes/Geeta_Classes/geeta2.jpg",
    "assets/images/Student_Corner/Special_Classes/Geeta_Classes/geeta3.jpg",
    "assets/images/Student_Corner/Special_Classes/Geeta_Classes/geeta4.jpg",
  ];
  List<String> geetaImagesSecondPart = [
    "assets/images/Student_Corner/Special_Classes/Geeta_Classes/geeta5.jpg",
    "assets/images/Student_Corner/Special_Classes/Geeta_Classes/geeta7.jpg",
    "assets/images/Student_Corner/Special_Classes/Geeta_Classes/geeta8.jpg",
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
                'Geeta Classes',
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

                    // Image
                    Center(
                      child: Positioned(
                        top: screenHeight * 0.25,
                        // left: screenWidth / 4.3,
                        child: Hero(
                          tag: "dhyaan_classes",
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
                                  "assets/images/Student_Corner/Special_Classes/Geeta_Classes/geeta6.jpg",
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
                  height: screenHeight * 1.64,
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
                                'The Bhagavad Gita ("Song of God" or "Song of the Lord") is one of Hinduism\'s most important and well-known sacred scriptures.',
                                style: GoogleFonts.bigShouldersText(
                                  color: const Color.fromARGB(255, 69, 67, 69),
                                  fontSize: 15.0.sp,
                                  fontWeight: FontWeight.bold,
                                  decoration: TextDecoration.none,
                                ),
                                textAlign: TextAlign.justify,
                              ),
                            ),
                            const SizedBox(height: 50.0),
                            SizedBox(
                              width: screenWidth - 40.0,
                              child: Text(
                                'Understanding the Bhagavad Gita\'s eternal guiding principles can help us get a deeper understanding of the how’s and why’s of everyday life. The younger generation can be empowered and helped to build positive values by understanding the substance of the Bhagavad Gita. Every week, the honorable chancellor takes a Bhagawad Gita and meditation session, which is attended by all university students with great enthusiasm.',
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
                                itemCount: geetaImagesFirstPart.length,
                                itemBuilder: ((context, index) {
                                  return Container(
                                    margin: const EdgeInsets.only(right: 10),
                                    child: buildOneItem(
                                        geetaImagesFirstPart[index]),
                                  );
                                }),
                              ),
                            ),
                            const SizedBox(height: 50),
                            SizedBox(
                              width: screenWidth - 40.0,
                              child: Text(
                                'Through Gita, the Revered Chancellor has created a heavenly elixir that can modify one\'s behaviors, ideas, and personality. Weekly Gita classes are the means via which students get this holy truth. The chancellor motivates students to take on the difficulties of the real world with fervor and confidence in these sessions. With the generation, inclining toward westernization there comes a high risk of aberrancement of young minds; Geeta is a savior and solution to all. The psychological components of the Gita that he discusses in his interpretation are rather distinctive.',
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
                                itemCount: geetaImagesSecondPart.length,
                                itemBuilder: ((context, index) {
                                  return Container(
                                    margin: const EdgeInsets.only(right: 10),
                                    child: buildOneItem(
                                        geetaImagesSecondPart[index]),
                                  );
                                }),
                              ),
                            ),
                            const SizedBox(height: 50),
                            SizedBox(
                              width: screenWidth - 40.0,
                              child: Text(
                                'The chancellor imparts practical knowledge of Jnana, Karma, and Bhakti Yoga to the students through the Bhagawad Gita. The chancellor is well known for giving talks all around the world on many parts of the Gita, including corporate excellence, the art of living, and a holistic approach to life. For not only the welfare of students but the classes are also conducted for the residents, teachers, wardens, and every person of the university who can access the holy blessings through these teachings.',
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
