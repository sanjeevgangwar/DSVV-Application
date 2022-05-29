import 'package:dsvv/Pages/Student_Corner/Screens/color_palette.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SocialInternshipLandingPage extends StatefulWidget {
  const SocialInternshipLandingPage({Key? key}) : super(key: key);

  @override
  State<SocialInternshipLandingPage> createState() =>
      _SocialInternshipLandingPageState();
}

class _SocialInternshipLandingPageState
    extends State<SocialInternshipLandingPage> {
  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height * 0.88;
    var screenWidth = MediaQuery.of(context).size.width * 0.82;

    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(30),
          bottomRight: Radius.circular(30),
        ),
      ),
      height: MediaQuery.of(context).size.height * 88,
      width: MediaQuery.of(context).size.width * 82,
      child: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: <Widget>[
          SliverAppBar(
            pinned: false,
            stretch: true,
            onStretchTrigger: () async {
              print('Load new data!');
            },
            centerTitle: true,
            backgroundColor: Colors.transparent,
            automaticallyImplyLeading: false,
            expandedHeight: screenHeight * 0.60,
            flexibleSpace: FlexibleSpaceBar(
              stretchModes: const [
                StretchMode.zoomBackground,
                StretchMode.fadeTitle,
                StretchMode.blurBackground,
              ],
              title: const Padding(
                padding: EdgeInsets.only(left: 10.0),
                child: Text(
                  'Social Internship',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),
              centerTitle: true,
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
                      height: screenHeight * 0.60,
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
                      height: screenHeight * 0.35,
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
                      height: screenHeight * 0.35,
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
                      height: screenHeight * 0.35,
                      width: screenWidth,
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                          bottomRight: Radius.circular(30.0),
                          bottomLeft: Radius.circular(30.0),
                        ),
                        color: ColorPalette().secondSlice.withOpacity(0.9),
                      ),
                    ),

                    // const Positioned(
                    //   top: 35.0,
                    //   left: 20.0,
                    //   child: Icon(
                    //     Icons.arrow_back_ios,
                    //     color: Colors.white,
                    //   ),
                    // ),
                    // const Positioned(
                    //   top: 35.0,
                    //   right: 20.0,
                    //   child: Icon(
                    //     FeatherIcons.shoppingBag,
                    //     color: Colors.white,
                    //   ),
                    // ),

                    // Image
                    Positioned(
                      top: screenHeight * 0.20,
                      left: screenWidth / 4.3,
                      child: Hero(
                        tag: "social_internship",
                        child: Container(
                          height: 175,
                          width: 175,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(340),
                            ),
                            image: DecorationImage(
                              image: AssetImage(
                                "assets/images/fully_residential.jpg",
                              ),
                              fit: BoxFit.cover,
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
              [
                Container(
                  height: screenHeight * 1.35,
                  width: screenWidth,
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
                                'One of the things that set DSVV education apart is the endeavor of the social Internship Program. It is one of the few learning opportunities available to students, and it is methodically planned and implemented for at least one month for each student. This one-of-a-kind program not only ensures that students use what they\'ve learned in class(academics, Life management classes, Geeta classes) but also gives them the chance to get significant career-related experience, build contacts in their chosen profession, and improve the world via their knowledge.',
                                style: GoogleFonts.bigShouldersText(
                                  color: const Color(0xFFB5ABB8),
                                  fontSize: 15.0,
                                ),
                              ),
                            ),
                            const SizedBox(height: 40.0),
                            SizedBox(
                              height: 150.0,
                              width: screenWidth,
                              child: ListView(
                                scrollDirection: Axis.horizontal,
                                children: [
                                  buildOneItem(),
                                  const SizedBox(width: 20.0),
                                  buildOneItem(),
                                  const SizedBox(width: 20.0),
                                ],
                              ),
                            ),
                            const SizedBox(height: 20),
                            SizedBox(
                              width: screenWidth - 40.0,
                              child: Text(
                                'Social internships are conducted for final year students where they get to have exposure to the real world by practicing various facets of the social world like health, education, alternative remedies, social service, and mass awakening experiences. Student form groups and conducts their program in a specific region allotted.  They perform various activities such as Yoga, Yagya, Awareness camp, health care camps, Plantation, and other activities for the welfare of people. This builds their public speaking skills, engagement, and service behavior.',
                                style: GoogleFonts.bigShouldersText(
                                  color: const Color(0xFFB5ABB8),
                                  fontSize: 15.0,
                                ),
                              ),
                            ),
                            const SizedBox(height: 40.0),
                            SizedBox(
                              height: 150.0,
                              width: screenWidth,
                              child: ListView(
                                scrollDirection: Axis.horizontal,
                                children: [
                                  buildOneItem(),
                                  const SizedBox(width: 20.0),
                                  buildOneItem(),
                                  const SizedBox(width: 20.0),
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
          ),
        ],
      ),
    );
  }

  buildOneItem() {
    return Stack(
      children: [
        Container(
          height: 125.0,
          width: 200.0,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(30),
            ),
            image: DecorationImage(
              image: AssetImage('assets/images/fully_residential.jpg'),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ],
    );
  }
}
