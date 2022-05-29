import 'package:dsvv/Pages/Student_Corner/Screens/color_palette.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/route_manager.dart';
import 'package:google_fonts/google_fonts.dart';

class UtsavPage extends StatefulWidget {
  final imgPath, headerColor, cardName;

  const UtsavPage(
      {Key? key,
      required this.imgPath,
      required this.headerColor,
      required this.cardName})
      : super(key: key);

  @override
  State<UtsavPage> createState() => _UtsavPageState();
}

class _UtsavPageState extends State<UtsavPage> {
  List<String> utsavImagesFirstPart = [
    "assets/images/Student_Corner/Student_Choice/Utsav/utsav.jpg",
    "assets/images/Student_Corner/Student_Choice/Utsav/utsav1.png",
    "assets/images/Student_Corner/Student_Choice/Utsav/utsav2.jpg",
    "assets/images/Student_Corner/Student_Choice/Utsav/utsav3.jpg",
    "assets/images/Student_Corner/Student_Choice/Utsav/utsav5.jpg",
    "assets/images/Student_Corner/Student_Choice/Utsav/utsav6.jpg",
    "assets/images/Student_Corner/Student_Choice/Utsav/utsav7.jpg",
    "assets/images/Student_Corner/Student_Choice/Utsav/utsav8.jpg",
    "assets/images/Student_Corner/Student_Choice/Utsav/utsav9.jpg",
    "assets/images/Student_Corner/Student_Choice/Utsav/utsav10.jpg",
  ];
  List<String> utsavImagesSecondPart = [
    "assets/images/Student_Corner/Student_Choice/Utsav/utsav11.jpg",
    "assets/images/Student_Corner/Student_Choice/Utsav/utsav12.jpg",
    "assets/images/Student_Corner/Student_Choice/Utsav/utsav13.jpg",
    "assets/images/Student_Corner/Student_Choice/Utsav/utsav14.jpg",
    "assets/images/Student_Corner/Student_Choice/Utsav/utsav15.jpg",
    "assets/images/Student_Corner/Student_Choice/Utsav/utsav16.jpg",
    "assets/images/Student_Corner/Student_Choice/Utsav/utsav17.jpg",
    "assets/images/Student_Corner/Student_Choice/Utsav/utsav18.jpg",
    "assets/images/Student_Corner/Student_Choice/Utsav/utsav19.jpg",
    "assets/images/Student_Corner/Student_Choice/Utsav/utsav20.jpg",
  ];
  List<String> utsavImagesThirdPart = [
    "assets/images/Student_Corner/Student_Choice/Utsav/utsav21.jpg",
    "assets/images/Student_Corner/Student_Choice/Utsav/utsav22.jpg",
    "assets/images/Student_Corner/Student_Choice/Utsav/utsav23.jpg",
    "assets/images/Student_Corner/Student_Choice/Utsav/utsav24.jpg",
    "assets/images/Student_Corner/Student_Choice/Utsav/utsav25.jpg",
    "assets/images/Student_Corner/Student_Choice/Utsav/utsav26.jpg",
    "assets/images/Student_Corner/Student_Choice/Utsav/utsav27.jpg",
    "assets/images/Student_Corner/Student_Choice/Utsav/utsav28.jpg",
    "assets/images/Student_Corner/Student_Choice/Utsav/utsav29.jpg",
    "assets/images/Student_Corner/Student_Choice/Utsav/utsav30.jpg",
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
                'Utsav',
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
                          tag: "utsav",
                          child: Container(
                            height: screenWidth * 0.45,
                            width: screenWidth * 0.55,
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(25),
                              ),
                              image: DecorationImage(
                                image: AssetImage(
                                  "assets/images/Student_Corner/Student_Choice/Utsav/utsav4.jpg",
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
                  height: screenHeight * 2,
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
                                '"Utsavv" or "Utsava" stands for a festival or a joyous celebration that instills tranquility, ecstasy, jubilation, enthusiasm, passion, and gaiety in life. The festival has a great deal of significance.',
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
                                itemCount: utsavImagesFirstPart.length,
                                itemBuilder: ((context, index) {
                                  return Container(
                                    margin: const EdgeInsets.only(right: 10),
                                    child: buildOneItem(
                                        utsavImagesFirstPart[index]),
                                  );
                                }),
                              ),
                            ),
                            const SizedBox(height: 50),
                            SizedBox(
                              width: screenWidth - 40.0,
                              child: Text(
                                'It is where our sages have conveyed our life philosophy. Important threads of life comprehension and development are hidden underneath this. Amid, of regular chores of life, a student finds it a great source of energy, joy, and rejuvenation. The event improves both the quality and direction of life. It is the annual function at the university, and stands along with the saying “It brings in the best in you "',
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
                                itemCount: utsavImagesSecondPart.length,
                                itemBuilder: ((context, index) {
                                  return Container(
                                    margin: const EdgeInsets.only(right: 10),
                                    child: buildOneItem(
                                        utsavImagesSecondPart[index]),
                                  );
                                }),
                              ),
                            ),
                            const SizedBox(height: 50),
                            SizedBox(
                              width: screenWidth - 40.0,
                              child: Text(
                                'Dev Sanskriti Vishwavidayaylaya endeavors to develop and reinforce the abilities that students have by holding numerous contests at the curricular, co-curricular, and extra-curricular levels, as well as academic studies, throughout the year for the student\'s holistic growth. Various individual activities and team activities were organized in a three-day event to evoke the true spirits of "Utsavv" in the students.',
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
                                itemCount: utsavImagesThirdPart.length,
                                itemBuilder: ((context, index) {
                                  return Container(
                                    margin: const EdgeInsets.only(right: 10),
                                    child: buildOneItem(
                                        utsavImagesThirdPart[index]),
                                  );
                                }),
                              ),
                            ),
                            const SizedBox(height: 50),
                            SizedBox(
                              width: screenWidth - 40.0,
                              child: Text(
                                'There are various competitions organized like- rangoli, mehndi making, volleyball, singing, kho-kho, cricket, badminton, kabaddi, folk dance, extempore, poetry, drawing, debate, chess, table tennis, tug of war, drawing, and many more to divulge and reinforce hidden talent of students. It creates a very joyous aura and spirit in the university and can be witnessed by the enthusiastic participants and a large and delightful audience.',
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
