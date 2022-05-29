import 'package:dsvv/Pages/Student_Corner/Screens/color_palette.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/route_manager.dart';
import 'package:google_fonts/google_fonts.dart';

class UtkarshPage extends StatefulWidget {
  final imgPath, headerColor, cardName;

  const UtkarshPage(
      {Key? key,
      required this.imgPath,
      required this.headerColor,
      required this.cardName})
      : super(key: key);

  @override
  State<UtkarshPage> createState() => _UtkarshPageState();
}

class _UtkarshPageState extends State<UtkarshPage> {
  List<String> utkarshImagesFirstPart = [
    "assets/images/Student_Corner/Student_Choice/Utkarsh/utkarsh1.jpg",
    "assets/images/Student_Corner/Student_Choice/Utkarsh/utkarsh2.jpg",
    "assets/images/Student_Corner/Student_Choice/Utkarsh/utkarsh3.jpg",
    "assets/images/Student_Corner/Student_Choice/Utkarsh/utkarsh4.jpg",
    "assets/images/Student_Corner/Student_Choice/Utkarsh/utkarsh5.jpg",
    "assets/images/Student_Corner/Student_Choice/Utkarsh/utkarsh7.jpg",
    "assets/images/Student_Corner/Student_Choice/Utkarsh/utkarsh8.jpg",
  ];
  List<String> utkarshImagesSecondPart = [
    "assets/images/Student_Corner/Student_Choice/Utkarsh/utkarsh9.jpg",
    "assets/images/Student_Corner/Student_Choice/Utkarsh/utkarsh10.jpg",
    "assets/images/Student_Corner/Student_Choice/Utkarsh/utkarsh11.jpg",
    "assets/images/Student_Corner/Student_Choice/Utkarsh/utkarsh12.jpg",
    "assets/images/Student_Corner/Student_Choice/Utkarsh/utkarsh13.jpg",
    "assets/images/Student_Corner/Student_Choice/Utkarsh/utkarsh14.jpg",
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
                'Utkarsh',
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
                                  "assets/images/Student_Corner/Student_Choice/Utkarsh/utkarsh6.jpg",
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
                  height: screenHeight * 1.3,
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
                                '“Utkarsh” portrays the flourishment of the festival of Ganesh Chaturthi also known as Vinayaka Chaturthi at Dev Sanskriti Vishwavidayaylaya where we celebrate the arrival of Lord Ganesh to earth from Kailash Parvat with his mother Goddess Parvati/Gauri.',
                                style: GoogleFonts.bigShouldersText(
                                  color: const Color.fromARGB(255, 75, 73, 75),
                                  fontSize: 15.0.sp,
                                  fontWeight: FontWeight.bold,
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
                                itemCount: utkarshImagesFirstPart.length,
                                itemBuilder: ((context, index) {
                                  return Container(
                                    margin: const EdgeInsets.only(right: 10),
                                    child: buildOneItem(
                                        utkarshImagesFirstPart[index]),
                                  );
                                }),
                              ),
                            ),
                            const SizedBox(height: 50),
                            SizedBox(
                              width: screenWidth - 40.0,
                              child: Text(
                                'Utkarsh is a festival of divinity and great exuberance at the university. Lord Ganesh\'s clay murtis are placed as part of the event. The prayers are chanted during the morning and evening hours. The festival brings enthusiasm, compassion, and joy to everyone. Each department is scheduled a day to make certain arrangements like- decoration, rangoli, prasad, singing, dance, bhajan sandhya, invitation of guests, and a lot more.',
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
                                itemCount: utkarshImagesSecondPart.length,
                                itemBuilder: ((context, index) {
                                  return Container(
                                    margin: const EdgeInsets.only(right: 10),
                                    child: buildOneItem(
                                        utkarshImagesSecondPart[index]),
                                  );
                                }),
                              ),
                            ),
                            const SizedBox(height: 50),
                            SizedBox(
                              width: screenWidth - 40.0,
                              child: Text(
                                'The event ends on the tenth day after it began when the idol is brought in a public ceremony with music and group chanting before being immersed in the university\'s biotic center, known as visarjan.',
                                style: GoogleFonts.bigShouldersText(
                                  color: const Color(0xFFB5ABB8),
                                  fontSize: 15.0.sp,
                                  decoration: TextDecoration.none,
                                ),
                                textAlign: TextAlign.justify,
                              ),
                            ),
                            const SizedBox(height: 50),
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
