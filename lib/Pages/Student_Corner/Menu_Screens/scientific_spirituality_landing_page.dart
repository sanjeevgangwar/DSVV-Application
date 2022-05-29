import 'package:dsvv/Pages/Student_Corner/Screens/color_palette.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ScientificSpiritualityPage extends StatefulWidget {
  const ScientificSpiritualityPage({Key? key}) : super(key: key);

  @override
  State<ScientificSpiritualityPage> createState() =>
      _ScientificSpiritualityPageState();
}

class _ScientificSpiritualityPageState
    extends State<ScientificSpiritualityPage> {
  List<String> scientificSpiritualityImagesFirstPart = [
    "assets/images/Student_Corner/Special_Classes/Geeta_Classes/geeta5.jpg",
    "assets/images/Student_Corner/Special_Classes/Geeta_Classes/geeta7.jpg",
    "assets/images/Student_Corner/Special_Classes/Geeta_Classes/geeta8.jpg",
  ];

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
                  'Scientific Spirituality',
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
                        color: ColorPalette().firstSlice.withOpacity(0.9),
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
                        tag: "scientific_spirituality",
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
                  height: screenHeight * 1,
                  width: screenWidth,
                  // color: Colors.red,
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
                                'A subjective experience in which an individual\'s ego transcends their typical, finite sense of self to include a larger, infinite sense of truth or reality is referred to as spiritual awakening. “Awakening Divinity in Human Being” is a course taught by Department of Scientific Spirituality by Dr. Saurabh Mishra includes presentations to instill the teachings, based on the English translation of the discourses of Revered Gurudev, Pandit Shriram Sharma Acharya ji. Student go through the presentations and understand the teachings imparted therein.',
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
                              child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                physics: const BouncingScrollPhysics(),
                                itemCount: scientificSpiritualityImagesFirstPart
                                    .length,
                                itemBuilder: ((context, index) {
                                  return Container(
                                    margin: const EdgeInsets.only(right: 10),
                                    child: buildOneItem(
                                        scientificSpiritualityImagesFirstPart[
                                            index]),
                                  );
                                }),
                              ),
                            ),
                            const SizedBox(height: 20),
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
          height: 125.0,
          width: 200.0,
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
