import 'dart:async';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dsvv/Animations/fade_animation.dart';
import 'package:dsvv/Pages/Courses/courses_data.dart';
import 'package:dsvv/Pages/Courses/find_our_courses_redirect_pages.dart';
import 'package:dsvv/Pages/Home/our_student_are_at_section_home.dart';
import 'package:dsvv/Pages/Programs/programs_landing_page.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:get/route_manager.dart';
import 'package:get/get.dart';

class MainScreen extends StatefulWidget {
  final ZoomDrawerController zoomDrawerController;

  const MainScreen({Key? key, required this.zoomDrawerController})
      : super(key: key);

  @override
  // ignore: no_logic_in_create_state
  State<MainScreen> createState() => _MainScreenState(zoomDrawerController);
}

class _MainScreenState extends State<MainScreen> {
  final ZoomDrawerController zoomDrawerController;
  // Home Slider Functions Variables
  final CarouselController _carouselController = CarouselController();
  int _current = 0;
  // Find Courses Functions Variables
  late List<dynamic> allCourses;
  late List<dynamic> findCoursesCategoriesSlider;
  final List<dynamic> _movies = [
    {
      'title': 'Fully Residential',
      'image': "assets/images/fully_residential.jpg",
      'description': 'Fully Residential'
    },
    {
      'title': 'Lush Green Campus',
      'image': "assets/images/lush_greeen_campus.jpg",
      'description': 'Lush Green Campus'
    },
    {
      'title': 'Subsidized Education For All',
      'image': "assets/images/main_campus.jpg",
      'description': 'Subsidized Education For All'
    }
  ];
  int selectedIndex = 0;
  List categories = [
    "All",
    "Graduation",
    "Masters",
    "Diploma",
    "PG Diploma",
    "Certificate"
  ];
  Widget makeItem({courseName, tag}) {
    return Hero(
      tag: tag,
      child: GestureDetector(
        onTap: () {
          Get.to(
            () => CoursesDescription(
              courseName: courseName,
            ),
            duration: const Duration(
              milliseconds: 400,
            ),
            transition: Transition.downToUp,
          );
        },
        child: Container(
          height: 100,
          width: 150,
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.orange,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade400,
                blurRadius: 10,
                offset: const Offset(0, 10),
              )
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                courseName,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Why DSVV Written Content Card
  Widget _whyDSVV() {
    return Container(
      width: MediaQuery.of(context).size.width * 0.85,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.0),
        color: Colors.white,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
            margin: const EdgeInsets.all(20),
            child: const Text(
              "The Seeds Of The Dev Sanskriti University Were Sown When Kulmata, Bhagwati Devi Sharma (1926-1994) Recognized The Divine Samskaras (Spiritual Vibrations) Of This Place.",
              style: TextStyle(
                fontSize: 15.0,
                color: Colors.black,
              ),
              textAlign: TextAlign.justify,
            ),
          ),
        ],
      ),
    );
  }

  // Why DSVV Card Carousel Content
  Widget _whyDSVVCard(String number, String details) {
    return Container(
      height: 0.17.sh,
      margin: const EdgeInsets.only(
        left: 15,
      ),
      width: 0.80.sw,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Row(
        children: <Widget>[
          SizedBox(
            height: 0.17.sh,
            width: 100.0,
            child: Container(
              margin: const EdgeInsets.only(
                top: 15,
                bottom: 15,
                left: 5,
              ),
              padding: const EdgeInsets.only(
                left: 5,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
              ),
              height: 80,
              width: 100,
              child: CircleAvatar(
                backgroundColor: Colors.orange,
                child: Center(
                  child: Text(
                    number,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 23.sp,
                    ),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(width: 00.0),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(
                margin: const EdgeInsets.only(
                  left: 8,
                  right: 0,
                ),
                width: 0.45.sw,
                child: Column(
                  children: <Widget>[
                    Container(
                      width: double.maxFinite,
                      margin: const EdgeInsets.only(
                        top: 15,
                      ),
                      child: Column(
                        children: <Widget>[
                          Text(
                            details,
                            style: TextStyle(
                              fontFamily: 'Quicksand',
                              fontWeight: FontWeight.bold,
                              fontSize: 17.sp,
                            ),
                            textAlign: TextAlign.center,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 10.0),
              Container(
                height: 2.0,
                width: 75.0,
                color: Colors.deepOrangeAccent,
              ),
              const SizedBox(height: 10.0),
              Container(
                margin: const EdgeInsets.only(
                  bottom: 10,
                ),
                width: 0.25.sw,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    const SizedBox(
                      width: 10.0,
                    ),
                    Expanded(
                      child: Text(
                        number,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: 'Quicksand',
                          fontSize: 12.0.sp,
                          color: Colors.deepOrange,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    )
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  int _findCourseCategoriesList = 0;

  // University Highlights Section Slider Functions
  final Stream<QuerySnapshot> uniHighData =
      FirebaseFirestore.instance.collection('university_highlight').snapshots();

  final List<List<String>> universityHighlight = [
    [
      'assets/images/fully_residential.jpg',
      'I Am Very Happy That This Institution Has Been Created With The Motto Of Developing The Divine Culture Which Is Of Utmost Importance To Us While We Are In The Path Of Transforming India Into A Prosperous, Happy, Peaceful Society.',
      '~Dr. APJ Abdul Kalam, 11th President of India'
    ],
    [
      'assets/images/fully_residential.jpg',
      'My Visit To DSVV At Haridwar Has Not Only Taken Me Through A Spiritual Journey But Also Reminded Me Of The Remarkable Role Played By Our Ancient Gurukul System In The Holistic And Well-Rounded Development Of Individuals.',
      '~H.E.M. Venkaiah Naidu, Honourable Vice President ,India'
    ],
    [
      'assets/images/fully_residential.jpg',
      'I Am Really Very Fortunate That I Got Chance To Hoist The Pride Of The Country, Our National Flag On Such A Sacred And Divine Land',
      '~Shree Gurmit Singh, Governor, Uttrakhand'
    ],
    [
      'assets/images/fully_residential.jpg',
      'Only ‘Career Oriented Education’ Can Give You Material Happiness, Not Spiritual Peace. If You Want To Attain Spiritual Peace And Join The Journey That Is Going On For The Welfare Of The Country.',
      '~Shri Amit Shah, Home Minister of India'
    ],
    [
      'assets/images/fully_residential.jpg',
      'I Am Impressed By The Breadth And The Scope Of The Learning, Of The Experience, Of The Understanding Of The World That You Are Prepared With As You Go Out, And Help The Global Family. So I Congratulate You.',
      '~Sir Dominic Asquith, British High commissioner'
    ],
    [
      'assets/images/fully_residential.jpg',
      'Coming Here, It Seems That The Great Men Of The Country Made The Hypotheses That A University Should Go Ahead With Our Culture, Our Values ​​Scientifically, Today Every Countryman Can Be Proud To See All Those Hypotheses Being Fulfilled Here.',
      '~Shri Kailash Satyarthi, Activist (Nobel Peace Prize Winner)'
    ],
    [
      'assets/images/fully_residential.jpg',
      'This University Is Providing A New Direction To The Society And Education World.',
      '~Margaret Alva, 4th Governor of Uttarakhand',
    ],
    [
      'assets/images/fully_residential.jpg',
      'I Would Like To Avail Of This Occasion To Record My Appreciation Of The Great Ideas That Vishwavidyalaya Has Achieved In A Short Span Of A Decade.',
      '~Shri Pranab Mukherjee, 13th President of India'
    ]
  ];
  int currenIndex = 0;
  //University Highlight Slider Next Function
  void _next() {
    setState(() {
      if (currenIndex < universityHighlight.length - 1) {
        currenIndex++;
      } else {
        currenIndex = currenIndex;
      }
    });
  }

  //University Highlight Slider Next Function
  void _preve() {
    setState(() {
      if (currenIndex > 0) {
        currenIndex--;
      } else {
        currenIndex = 0;
      }
    });
  }

  @override
  void initState() {
    allCourses = courses[0] + courses[1] + courses[2] + courses[3];
    super.initState();

    // Our Students Are At
    WidgetsBinding.instance?.addPostFrameCallback((timeStamp) {
      double minScrollExtent1 = _scrollController1.position.minScrollExtent;
      double maxScrollExtent1 = _scrollController1.position.maxScrollExtent;

      animateTOMaxMin(maxScrollExtent1, minScrollExtent1, maxScrollExtent1, 50,
          _scrollController1);
    });
  }

  // Our Student Are At
  final ScrollController _scrollController1 = ScrollController();

  List company = [
    "our_students_section/amar.jpg",
    "our_students_section/appoldo.jpg",
    "our_students_section/etv.png",
    "our_students_section/goibibo.jpg",
    "our_students_section/infosys.jpg",
    "our_students_section/inshots.jpg",
    "our_students_section/john.jpg",
    "our_students_section/make.jpg",
    "our_students_section/ntpc.jpg",
    "our_students_section/pixar.jpg",
    "our_students_section/redchill.jpg",
    "our_students_section/tech.jpg",
    "our_students_section/thehindu.jpg",
    "our_students_section/tv.jpg",
    "our_students_section/uk.jpg",
    "our_students_section/wasemytrip.jpg",
    "our_students_section/wipro.jpg",
    "our_students_section/yatra.jpg",
    "our_students_section/zeee.jpg",
  ];

  animateTOMaxMin(double max, double min, double direction, int second,
      ScrollController scrollController) {
    scrollController
        .animateTo(direction,
            duration: Duration(seconds: second), curve: Curves.linear)
        .then((value) {
      direction = direction == max ? min : max;
      animateTOMaxMin(max, min, direction, second, scrollController);
    });
  }

  _MainScreenState(this.zoomDrawerController);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 772),
      builder: () => Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: <Widget>[
              // Slider And Main Screen Full View Image Start
              Stack(
                children: [
                  SizedBox(
                    child: Column(
                      children: <Widget>[
                        SizedBox(
                          height: 0.90.sh,
                          child: Stack(
                            children: [
                              SizedBox(
                                height: 1.6.sw,
                                width: 1.sw,
                                child: Stack(
                                  alignment: Alignment.topLeft,
                                  children: <Widget>[
                                    SizedBox(
                                      height: 1.55.sw,
                                      child: Image.asset(
                                        _movies[_current]['image'],
                                        fit: BoxFit.cover,
                                        color: Colors.black.withOpacity(0),
                                        colorBlendMode: BlendMode.darken,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Positioned(
                                top: 0,
                                left: 0,
                                right: 0,
                                bottom: 0,
                                child: Container(
                                  height: 0.3.sh,
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                        begin: Alignment.bottomCenter,
                                        end: Alignment.topCenter,
                                        colors: [
                                          Colors.grey.shade300.withOpacity(1),
                                          Colors.grey.shade500.withOpacity(1),
                                          Colors.grey.shade500.withOpacity(1),
                                          Colors.grey.shade900.withOpacity(1),
                                          Colors.grey.shade500.withOpacity(0.0),
                                          Colors.grey.shade500.withOpacity(0.0),
                                          Colors.grey.shade500.withOpacity(0.0),
                                          Colors.grey.shade500.withOpacity(0.0),
                                        ]),
                                  ),
                                ),
                              ),
                              Positioned(
                                bottom: 0,
                                height: 0.55.sh,
                                width: 1.sw,
                                child: CarouselSlider(
                                  options: CarouselOptions(
                                    height: 1.3.sw,
                                    aspectRatio: 16 / 9,
                                    viewportFraction: 0.70,
                                    enlargeCenterPage: true,
                                    onPageChanged: (index, reason) {
                                      setState(() {
                                        _current = index;
                                      });
                                    },
                                  ),
                                  carouselController: _carouselController,
                                  items: _movies.map((movie) {
                                    return Builder(
                                      builder: (BuildContext context) {
                                        return Container(
                                            width: 1.sw,
                                            margin: const EdgeInsets.symmetric(
                                              horizontal: 5.0,
                                            ),
                                            decoration: BoxDecoration(
                                              color: Colors.transparent,
                                              borderRadius:
                                                  BorderRadius.circular(20.0),
                                            ),
                                            child: SingleChildScrollView(
                                              child: Column(
                                                children: [
                                                  Container(
                                                    height: 1.sw,
                                                    margin:
                                                        const EdgeInsets.only(
                                                            top: 30),
                                                    clipBehavior: Clip.hardEdge,
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              20),
                                                    ),
                                                    child: Stack(
                                                      children: <Widget>[
                                                        Container(
                                                          decoration:
                                                              BoxDecoration(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        20.0),
                                                            image:
                                                                DecorationImage(
                                                              image: AssetImage(
                                                                  movie[
                                                                      'image']),
                                                              fit: BoxFit.cover,
                                                              colorFilter: ColorFilter.mode(
                                                                  Colors.black
                                                                      .withOpacity(
                                                                          0.6),
                                                                  BlendMode
                                                                      .darken),
                                                            ),
                                                          ),
                                                          height: 1.sw,
                                                        ),
                                                        Container(
                                                          height: 1.sw,
                                                          child: Column(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .center,
                                                            children: <Widget>[
                                                              const SizedBox(
                                                                  height: 20),
                                                              Padding(
                                                                padding:
                                                                    const EdgeInsets
                                                                        .all(20),
                                                                child:
                                                                    Container(
                                                                  width: 1.sw,
                                                                  alignment:
                                                                      Alignment
                                                                          .center,
                                                                  child: Text(
                                                                    movie[
                                                                        'title'],
                                                                    textAlign:
                                                                        TextAlign
                                                                            .center,
                                                                    style: TextStyle(
                                                                        fontSize:
                                                                            20.0
                                                                                .sp,
                                                                        color: Colors
                                                                            .white,
                                                                        fontWeight:
                                                                            FontWeight.bold),
                                                                  ),
                                                                ),
                                                              ),
                                                              // rating
                                                              const SizedBox(
                                                                  height: 0),
                                                              AnimatedOpacity(
                                                                duration: const Duration(
                                                                    milliseconds:
                                                                        1500),
                                                                opacity: _current ==
                                                                        _movies.indexOf(
                                                                            movie)
                                                                    ? 1.0
                                                                    : 0.0,
                                                                child:
                                                                    Container(
                                                                  child:
                                                                      OutlinedButton(
                                                                    onPressed:
                                                                        () {},
                                                                    style: OutlinedButton.styleFrom(
                                                                        primary: Colors.transparent,
                                                                        shadowColor: Colors.transparent,
                                                                        onSurface: Colors.transparent,
                                                                        backgroundColor: Colors.transparent,
                                                                        side: const BorderSide(
                                                                          width:
                                                                              1.0,
                                                                          color:
                                                                              Colors.transparent,
                                                                        )),
                                                                    child: Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .min,
                                                                      children: <
                                                                          Widget>[
                                                                        Text(
                                                                          'Learn More',
                                                                          style: TextStyle(
                                                                              fontSize: 13.0.sp,
                                                                              color: Colors.grey.shade300),
                                                                        ), // <-- Text
                                                                        const SizedBox(
                                                                          width:
                                                                              5,
                                                                        ),
                                                                        Icon(
                                                                          // <-- Icon
                                                                          Icons
                                                                              .arrow_forward_sharp,
                                                                          size:
                                                                              15.0.sp,
                                                                          color: Colors
                                                                              .grey
                                                                              .shade300,
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
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
                                            ));
                                      },
                                    );
                                  }).toList(),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    color: Colors.transparent,
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      children: <Widget>[
                        const Padding(
                          padding: EdgeInsets.only(
                            top: 60,
                          ),
                        ),
                        Container(
                          height: 50,
                          margin: const EdgeInsets.only(
                            left: 10,
                            right: 10,
                          ),
                          padding: const EdgeInsets.only(
                            left: 10,
                            right: 10,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.transparent,
                          ),
                          child: Container(
                            child: Material(
                              elevation: 30.0,
                              borderRadius: BorderRadius.circular(25.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  IconButton(
                                    onPressed: () =>
                                        zoomDrawerController.toggle!(),
                                    icon: const Icon(
                                      Icons.sort_outlined,
                                      color: Colors.red,
                                    ),
                                  ),
                                  IconButton(
                                    onPressed: () =>
                                        zoomDrawerController.toggle!(),
                                    icon: const Icon(
                                      Icons.search_outlined,
                                      color: Colors.red,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              // Slider And Main Screen Full View Image Start

              /*
               * Why DSVV Section Start
               */

              Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.grey.shade300.withOpacity(1),
                        Colors.grey.shade200.withOpacity(1),
                        Colors.grey.shade100.withOpacity(1),
                        Colors.grey.shade50.withOpacity(1),
                      ]),
                ),
                child: Column(
                  children: <Widget>[
                    // Why DSVV Heading Start
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 15.0,
                        top: 70.0,
                      ),
                      child: Container(
                        padding: const EdgeInsets.only(left: 10.0),
                        decoration: const BoxDecoration(
                          border: Border(
                            left: BorderSide(
                              color: Colors.orange,
                              style: BorderStyle.solid,
                              width: 4.0,
                            ),
                          ),
                        ),
                        child: Row(
                          children: <Widget>[
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  'Why',
                                  style: TextStyle(
                                      fontSize: 20.0.sp,
                                      fontFamily: 'Timesroman',
                                      fontWeight: FontWeight.w700),
                                ),
                                Text(
                                  'Dev Sanskriti University',
                                  style: TextStyle(
                                      fontSize: 20.0.sp,
                                      fontFamily: 'Timesroman',
                                      fontWeight: FontWeight.w700),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(
                        bottom: 15.0,
                      ),
                    ),
                    // Why DSVV Heading End

                    // Why DSVV Written Content Card Start
                    Container(
                      padding: const EdgeInsets.all(20),
                      margin: const EdgeInsets.only(
                        top: 40,
                        bottom: 30,
                      ),
                      child: _whyDSVV(),
                    ),
                    // Why DSVV Written Content Card End

                    // Why DSVV Card Carousel Content Start
                    Container(
                      padding: const EdgeInsets.only(
                        top: 0.0,
                        left: 15.0,
                        right: 10,
                        bottom: 0.0,
                      ),
                      margin: const EdgeInsets.only(
                        bottom: 50,
                        top: 0,
                      ),
                      height: 0.17.sh,
                      color: Colors.transparent,
                      child: ListView(
                        shrinkWrap: true,
                        physics: const BouncingScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          _whyDSVVCard("20 +", "Years On Experience"),
                          const SizedBox(width: 10.0),
                          _whyDSVVCard("500 +", "Faculties"),
                          const SizedBox(width: 10.0),
                          _whyDSVVCard("15 +", "Laboratory"),
                          const SizedBox(width: 10.0),
                          _whyDSVVCard("60 +", "MOU'S"),
                          const SizedBox(width: 10.0),
                        ],
                      ),
                    ),
                    // Why DSVV Card Carousel Content End
                  ],
                ),
              ),
              /*
               * Why DSVV Section End
               */

              /*
               * Find Our Courses Section Start
               */

              Container(
                width: 1.sw,
                padding: const EdgeInsets.only(
                  bottom: 50,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.grey.shade50.withOpacity(1),
                        Colors.white,
                        Colors.white,
                        Colors.grey.shade50.withOpacity(1),
                        Colors.grey.shade100.withOpacity(1),
                        Colors.grey.shade200.withOpacity(1),
                        Colors.grey.shade300.withOpacity(1),
                      ]),
                ),
                child: Column(
                  children: <Widget>[
                    // Find Our Courses Heading Start
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 15.0,
                      ),
                      child: Container(
                        padding: const EdgeInsets.only(
                          left: 10.0,
                          top: 30.0,
                        ),
                        margin: const EdgeInsets.only(
                          right: 10.0,
                          top: 40.0,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: <Widget>[
                                Text(
                                  'Find',
                                  style: TextStyle(
                                      fontSize: 20.0.sp,
                                      fontFamily: 'Timesroman',
                                      fontWeight: FontWeight.w700),
                                ),
                                Text(
                                  'Our Courses',
                                  style: TextStyle(
                                      fontSize: 20.0.sp,
                                      fontFamily: 'Timesroman',
                                      fontWeight: FontWeight.w700),
                                ),
                              ],
                            ),
                            Container(
                              padding: const EdgeInsets.only(
                                left: 10.0,
                              ),
                              margin: const EdgeInsets.only(
                                left: 10.0,
                              ),
                              decoration: const BoxDecoration(
                                border: Border(
                                  left: BorderSide(
                                    color: Colors.orange,
                                    style: BorderStyle.solid,
                                    width: 4.0,
                                  ),
                                ),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: <Widget>[
                                  Text(
                                    '',
                                    style: TextStyle(
                                        fontSize: 20.0.sp,
                                        fontFamily: 'Timesroman',
                                        fontWeight: FontWeight.w700),
                                  ),
                                  Text(
                                    '',
                                    style: TextStyle(
                                      fontSize: 20.0.sp,
                                      fontFamily: 'Timesroman',
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    // Find Our Courses Heading End

                    const Padding(
                      padding: EdgeInsets.only(bottom: 50.0),
                    ),

                    // Find Our Courses Body Start
                    SizedBox(
                      child: Column(
                        children: <Widget>[
                          // Find Our Courses Category Slider Start
                          Container(
                            margin: const EdgeInsets.symmetric(
                              vertical: 10,
                            ),
                            height: 30,
                            child: ListView.builder(
                              itemCount: categories.length,
                              scrollDirection: Axis.horizontal,
                              shrinkWrap: true,
                              itemBuilder: (context, index) => GestureDetector(
                                onTap: () {
                                  setState(() {
                                    _findCourseCategoriesList = index;
                                    selectedIndex = index;
                                    if (index != 0) {
                                      findCoursesCategoriesSlider = courses[
                                          _findCourseCategoriesList - 1];
                                    }
                                  });
                                },
                                child: FadeAnimation(
                                  1,
                                  Container(
                                    margin: const EdgeInsets.only(
                                      right: 10,
                                    ),
                                    padding: const EdgeInsets.only(
                                      right: 20,
                                      left: 20,
                                    ),
                                    decoration: BoxDecoration(
                                      color: index == selectedIndex
                                          ? Colors.orange.withOpacity(0.4)
                                          : Colors.transparent,
                                      borderRadius: BorderRadius.circular(6),
                                    ),
                                    child: Center(
                                      child: index == selectedIndex
                                          ? Text(
                                              categories[index],
                                              style: TextStyle(
                                                fontSize: 16.sp,
                                                color: Colors.black
                                                    .withOpacity(0.8),
                                                fontWeight: FontWeight.w500,
                                              ),
                                            )
                                          : Text(
                                              categories[index],
                                              style: TextStyle(
                                                fontSize: 16.sp,
                                                color: Colors.black
                                                    .withOpacity(0.5),
                                              ),
                                            ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          // Find Our Courses Category Slider End

                          const SizedBox(
                            height: 20,
                          ),

                          // Find Our Courses List Slider Start
                          Container(
                            padding: const EdgeInsets.only(
                              top: 20,
                              bottom: 20,
                            ),
                            child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              physics: const BouncingScrollPhysics(),
                              padding: const EdgeInsets.only(
                                bottom: 30.0,
                                right: 30.0,
                                top: 30.0,
                              ),
                              child: Row(
                                  children: _findCourseCategoriesList == 0
                                      ? allCourses
                                          .map((i) => Container(
                                                padding: const EdgeInsets.only(
                                                  right: 20,
                                                ),
                                                child: makeItem(
                                                  courseName: i.toString(),
                                                  tag: i.toString(),
                                                ),
                                              ))
                                          .toList()
                                      : findCoursesCategoriesSlider
                                          .map((i) => Container(
                                                padding: const EdgeInsets.only(
                                                  right: 20,
                                                ),
                                                child: makeItem(
                                                  courseName: i.toString(),
                                                  tag: i.toString(),
                                                ),
                                              ))
                                          .toList()),
                            ),
                          ),
                          // Find Our Courses List Slider End

                          const SizedBox(
                            height: 20,
                          ),

                          // Find Our Courses Button Start
                          FadeAnimation(
                            1.5,
                            GestureDetector(
                              onTap: () {
                                Get.to(
                                  () => const ProgramsLandingPage(),
                                  transition: Transition.leftToRightWithFade,
                                  duration: const Duration(
                                    milliseconds: 400,
                                  ),
                                );
                              },
                              child: Container(
                                height: 50,
                                padding:
                                    const EdgeInsets.only(left: 15, right: 10),
                                margin:
                                    const EdgeInsets.only(left: 15, right: 10),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Center(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: <Widget>[
                                      Row(
                                        children: <Widget>[
                                          const Text(
                                            'Find All Courses',
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Colors.orange,
                                            ),
                                            maxLines: 1,
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                          IconButton(
                                            onPressed: () {},
                                            icon: const Icon(
                                              Icons.arrow_forward_ios_outlined,
                                              color: Colors.orange,
                                            ),
                                            iconSize: 18,
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          // Find Our Courses Button End
                        ],
                      ),
                    )
                    // Find Our Courses Body End
                  ],
                ),
              ),

              /*
               * Find Our Courses Section End
               */

              /*
               * University Highlight Section Start
               */
              Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.grey.shade300.withOpacity(1),
                        Colors.grey.shade200.withOpacity(1),
                        Colors.grey.shade100.withOpacity(1),
                        Colors.grey.shade50.withOpacity(1),
                      ]),
                ),
                child: Column(
                  children: <Widget>[
                    // University Highlight Heading Start
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 15.0,
                        top: 70.0,
                      ),
                      child: Container(
                        padding: const EdgeInsets.only(
                          left: 10.0,
                        ),
                        decoration: const BoxDecoration(
                          border: Border(
                            left: BorderSide(
                              color: Colors.orange,
                              style: BorderStyle.solid,
                              width: 4.0,
                            ),
                          ),
                        ),
                        child: Row(
                          children: <Widget>[
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  'University',
                                  style: TextStyle(
                                    fontSize: 20.0.sp,
                                    fontFamily: 'Timesroman',
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                AnimatedTextKit(
                                  repeatForever: true,
                                  animatedTexts: [
                                    TypewriterAnimatedText(
                                      'Highlights',
                                      textStyle: TextStyle(
                                        fontSize: 20.0.sp,
                                        fontFamily: 'Timesroman',
                                        fontWeight: FontWeight.w700,
                                      ),
                                      cursor: "|",
                                      speed: const Duration(
                                        milliseconds: 250,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    // University Highlight Heading End

                    const Padding(
                      padding: EdgeInsets.only(bottom: 85.0),
                    ),

                    // University Highlight Slider Start
                    Column(
                      children: <Widget>[
                        // Image Slider
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            GestureDetector(
                              onHorizontalDragEnd: (DragEndDetails details) {
                                if (details.velocity.pixelsPerSecond.dx > 0) {
                                  _preve();
                                } else if (details.velocity.pixelsPerSecond.dx <
                                    0) {
                                  _next();
                                }
                              },
                              child: Stack(children: <Widget>[
                                Container(
                                  height: 0.6.sh,
                                  width: 1.sw,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(
                                        30.0.sp,
                                      ),
                                    ),
                                  ),
                                  child: StreamBuilder<QuerySnapshot>(
                                    stream: uniHighData,
                                    builder: (BuildContext context,
                                        AsyncSnapshot<QuerySnapshot> snapshot) {
                                      if (snapshot.hasError) {
                                        return const Text(
                                            "Something Went Wrong..");
                                      }
                                      if (snapshot.connectionState ==
                                          ConnectionState.waiting) {
                                        return const Text("Loading");
                                      }

                                      final data = snapshot.requireData;
                                      return FutureBuilder(
                                        future: _downloadUrl(
                                            data.docs[currenIndex]['image']),
                                        builder: (context, snapshot) {
                                          if (snapshot.connectionState ==
                                              ConnectionState.waiting) {
                                            return Container(
                                              decoration: BoxDecoration(
                                                border: Border.all(
                                                  color: Colors.orange,
                                                  width: 1,
                                                ),
                                                borderRadius: BorderRadius.all(
                                                  Radius.circular(
                                                    20.0.sp,
                                                  ),
                                                ),
                                              ),
                                              margin: const EdgeInsets.all(3),
                                              child: const Center(
                                                child: SizedBox(
                                                  width: 50,
                                                  height: 50,
                                                  child:
                                                      CircularProgressIndicator(
                                                    color: Colors.orange,
                                                  ),
                                                ),
                                              ),
                                            );
                                          }
                                          if (snapshot.connectionState ==
                                                  ConnectionState.done &&
                                              snapshot.hasData) {
                                            return Container(
                                              decoration: BoxDecoration(
                                                image: DecorationImage(
                                                  image:
                                                      // AssetImage(
                                                      //     "assets/images/University_high_section/abdul.jpg"),
                                                      NetworkImage(
                                                    snapshot.data.toString(),
                                                  ),
                                                  fit: BoxFit.cover,
                                                ),
                                                borderRadius: BorderRadius.all(
                                                  Radius.circular(
                                                    20.0.sp,
                                                  ),
                                                ),
                                              ),
                                            );
                                          }

                                          return Container();
                                        },
                                      );
                                    },
                                  ),
                                ),
                                Container(
                                  width: 1.sw,
                                  height: 0.6.sh,
                                  decoration: const BoxDecoration(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(30),
                                    ),
                                  ),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                          begin: Alignment.bottomCenter,
                                          colors: [
                                            Colors.grey[700]!.withOpacity(.9),
                                            Colors.grey.withOpacity(.0),
                                          ]),
                                    ),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: <Widget>[
                                        Container(
                                          width: 60,
                                          margin: const EdgeInsets.only(
                                            bottom: 30,
                                          ),
                                          child: StreamBuilder<QuerySnapshot>(
                                            stream: uniHighData,
                                            builder: (BuildContext context,
                                                AsyncSnapshot<QuerySnapshot>
                                                    snapshot) {
                                              if (snapshot.hasError) {
                                                return const Text(
                                                    "Something Went Wrong..");
                                              }
                                              if (snapshot.connectionState ==
                                                  ConnectionState.waiting) {
                                                return const Text("Loading");
                                              }

                                              final data = snapshot.requireData;
                                              return Row(
                                                  children: _buildIndicator(
                                                      data.docs.length));
                                            },
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ]),
                            ),
                            // Orange Container
                          ],
                        ),
                        // Slider Text
                        Transform.translate(
                          offset: const Offset(0, -40),
                          child: Container(
                            height: 0.4.sh,
                            width: 0.97.sw,
                            padding: const EdgeInsets.only(
                              top: 30,
                              left: 30,
                              right: 15,
                            ),
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(30),
                                bottomLeft: Radius.circular(30),
                                topRight: Radius.circular(30),
                                bottomRight: Radius.circular(30),
                              ),
                            ),
                            //Text
                            child: Column(
                              children: <Widget>[
                                // Words Of Speaker
                                Container(
                                  width: 1.sw,
                                  height: 0.2.sh,
                                  child: StreamBuilder<QuerySnapshot>(
                                    stream: uniHighData,
                                    builder: (BuildContext context,
                                        AsyncSnapshot<QuerySnapshot> snapshot) {
                                      if (snapshot.hasError) {
                                        return const Text(
                                            "Something Went Wrong..");
                                      }
                                      if (snapshot.connectionState ==
                                          ConnectionState.waiting) {
                                        return const Text("Loading");
                                      }

                                      final data = snapshot.requireData;
                                      return ListView.builder(
                                          physics:
                                              const NeverScrollableScrollPhysics(),
                                          itemCount: 1,
                                          itemBuilder: (context, index) {
                                            return Padding(
                                              padding: const EdgeInsets.only(
                                                  right: 8.0),
                                              child: Text(
                                                data.docs[currenIndex]['words'],
                                                style: const TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 16,
                                                  fontFamily: "roboto_slab",
                                                ),
                                                textAlign: TextAlign.justify,
                                              ),
                                            );
                                          });
                                    },
                                  ),
                                ),
                                const Text(''),
                                const SizedBox(height: 30),
                                // Rating Star Icon
                                /*Row(
                          children: const [
                            Icon(
                              Icons.star,
                              size: 18,
                              color: Colors.orange,
                            ),
                            Icon(
                              Icons.star,
                              size: 18,
                              color: Colors.orange,
                            ),
                            Icon(
                              Icons.star,
                              size: 18,
                              color: Colors.orange,
                            ),
                            Icon(
                              Icons.star,
                              size: 18,
                              color: Colors.orange,
                            ),
                            Icon(
                              Icons.star_half,
                              size: 18,
                              color: Colors.orange,
                            ),
                          ],
                        ),*/
                                Row(
                                  children: <Widget>[
                                    SizedBox(
                                      width: 0.20.sw,
                                    ),
                                    // Name Of Speaker
                                    Container(
                                      width: 0.63.sw,
                                      height: 0.1.sh,
                                      child: StreamBuilder<QuerySnapshot>(
                                        stream: uniHighData,
                                        builder: (BuildContext context,
                                            AsyncSnapshot<QuerySnapshot>
                                                snapshot) {
                                          if (snapshot.hasError) {
                                            return const Text(
                                                "Something Went Wrong..");
                                          }
                                          if (snapshot.connectionState ==
                                              ConnectionState.waiting) {
                                            return const Text("Loading");
                                          }

                                          final data = snapshot.requireData;
                                          return ListView.builder(
                                              itemCount: 1,
                                              physics:
                                                  const NeverScrollableScrollPhysics(),
                                              itemBuilder: (context, index) {
                                                return Text(
                                                  data.docs[currenIndex]
                                                      ['name'],
                                                  style: const TextStyle(
                                                    color: Colors.black,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 18,
                                                    fontFamily: "roboto_slab",
                                                  ),
                                                );
                                              });
                                        },
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    // University Highlight Slider End

                    const Padding(
                      padding: EdgeInsets.only(
                        bottom: 5.0,
                      ),
                    ),
                  ],
                ),
              ),
              /*
               * University Highlight Section End
               */

              /*
               * Let's Start Education Section Start
               */
              Container(
                width: 1.sw,
                padding: const EdgeInsets.only(
                  // top: 100,
                  bottom: 50,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.grey.shade50.withOpacity(1),
                        Colors.white,
                        Colors.white,
                        Colors.grey.shade50.withOpacity(1),
                        Colors.grey.shade100.withOpacity(1),
                        Colors.grey.shade200.withOpacity(1),
                      ]),
                ),
                child: Column(
                  children: <Widget>[
                    // Let's Start Education Heading Start
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 15.0,
                      ),
                      child: Container(
                        padding: const EdgeInsets.only(
                          left: 10.0,
                          top: 30.0,
                        ),
                        margin: const EdgeInsets.only(
                          right: 10.0,
                          top: 40.0,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: <Widget>[
                                Text(
                                  'Let\'s Start Your',
                                  style: TextStyle(
                                    fontSize: 20.0.sp,
                                    fontFamily: 'Timesroman',
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                Text(
                                  'Education',
                                  style: TextStyle(
                                    fontSize: 20.0.sp,
                                    fontFamily: 'Timesroman',
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              padding: const EdgeInsets.only(
                                left: 10.0,
                              ),
                              margin: const EdgeInsets.only(
                                left: 10.0,
                              ),
                              decoration: const BoxDecoration(
                                border: Border(
                                  left: BorderSide(
                                    color: Colors.orange,
                                    style: BorderStyle.solid,
                                    width: 4.0,
                                  ),
                                ),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: <Widget>[
                                  Text(
                                    '',
                                    style: TextStyle(
                                        fontSize: 20.0.sp,
                                        fontFamily: 'Timesroman',
                                        fontWeight: FontWeight.w700),
                                  ),
                                  Text(
                                    '',
                                    style: TextStyle(
                                      fontSize: 20.0.sp,
                                      fontFamily: 'Timesroman',
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    // Let's Start Education Heading End

                    const Padding(
                      padding: EdgeInsets.only(bottom: 100.0),
                    ),

                    // Let's Start with Slider Start
                    Container(
                      padding: const EdgeInsets.only(
                        top: 0.0,
                        left: 15.0,
                        right: 10,
                      ),
                      height: 0.17.sh,
                      color: Colors.transparent,
                      child: ListView(
                        shrinkWrap: true,
                        physics: const BouncingScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          _whyDSVVCard("36 +", "Programs & Courses"),
                          const SizedBox(width: 10.0),
                          _whyDSVVCard("35 +", "Online Modular Courses"),
                          const SizedBox(width: 10.0),
                          Container(
                            height: 0.17.sh,
                            margin: const EdgeInsets.only(
                              left: 15,
                            ),
                            width: 0.80.sw,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                            child: Row(
                              children: <Widget>[
                                const SizedBox(width: 00.0),
                                Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    Container(
                                      margin: const EdgeInsets.only(
                                        left: 8,
                                        right: 0,
                                      ),
                                      width: 0.75.sw,
                                      child: Column(
                                        children: <Widget>[
                                          Container(
                                            width: double.maxFinite,
                                            margin: const EdgeInsets.only(
                                              top: 15,
                                            ),
                                            child: Column(
                                              children: <Widget>[
                                                Text(
                                                  "Erasmus + ",
                                                  style: TextStyle(
                                                    fontFamily: 'Quicksand',
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 17.sp,
                                                  ),
                                                  textAlign: TextAlign.center,
                                                  maxLines: 2,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                ),
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    const SizedBox(height: 10.0),
                                    Container(
                                      height: 2.0,
                                      width: 75.0,
                                      color: Colors.deepOrangeAccent,
                                    ),
                                    const SizedBox(height: 10.0),
                                    Container(
                                      margin: const EdgeInsets.only(
                                        bottom: 10,
                                      ),
                                      width: 0.75.sw,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: <Widget>[
                                          const SizedBox(
                                            width: 10.0,
                                          ),
                                          Expanded(
                                            child: Text(
                                              "scholarship",
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                fontFamily: 'Quicksand',
                                                fontSize: 12.0.sp,
                                                color: Colors.deepOrange,
                                              ),
                                              maxLines: 1,
                                              overflow: TextOverflow.ellipsis,
                                            ),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    // Let's Start with Slider End
                  ],
                ),
              ),
              /*
               * Let's Start Education Section End
               */

              /*
               * Our Students Are At Section Start
               */
              Container(
                width: 1.sw,
                padding: const EdgeInsets.only(
                  bottom: 50,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.grey.shade200.withOpacity(1),
                        Colors.grey.shade100.withOpacity(1),
                        Colors.grey.shade50.withOpacity(1),
                        Colors.white,
                        Colors.white,
                        Colors.grey.shade50.withOpacity(1),
                        Colors.grey.shade100.withOpacity(1),
                        Colors.grey.shade200.withOpacity(1),
                      ]),
                ),
                child: Column(
                  children: <Widget>[
                    // Our Students Are At Heading Start
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 15.0,
                        top: 70.0,
                      ),
                      child: Container(
                        padding: const EdgeInsets.only(left: 10.0),
                        decoration: const BoxDecoration(
                          border: Border(
                            left: BorderSide(
                              color: Colors.orange,
                              style: BorderStyle.solid,
                              width: 4.0,
                            ),
                          ),
                        ),
                        child: Row(
                          children: <Widget>[
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  'Our Students',
                                  style: TextStyle(
                                      fontSize: 20.0.sp,
                                      fontFamily: 'Timesroman',
                                      fontWeight: FontWeight.w700),
                                ),
                                Text(
                                  'Are At',
                                  style: TextStyle(
                                      fontSize: 20.0.sp,
                                      fontFamily: 'Timesroman',
                                      fontWeight: FontWeight.w700),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(
                        bottom: 15.0,
                      ),
                    ),
                    // Our Students Are At Heading End

                    const Padding(
                      padding: EdgeInsets.only(bottom: 50.0),
                    ),

                    // Placemented Company Slider

                    OurStudentAreAtList(
                      scrollController: _scrollController1,
                      images: company,
                    ),
                  ],
                ),
              ),
              /*
               * Our Students Are At Section End
               */

              /*
               * Next Section Start
               */
              // Container(
              //   width: 1.sw,
              //   padding: const EdgeInsets.only(
              //     bottom: 50,
              //   ),
              //   decoration: BoxDecoration(
              //     color: Colors.white,
              //     gradient: LinearGradient(
              //         begin: Alignment.topCenter,
              //         end: Alignment.bottomCenter,
              //         colors: [
              //           // Colors.grey.shade300.withOpacity(1),
              //           Colors.grey.shade200.withOpacity(1),
              //           Colors.grey.shade100.withOpacity(1),
              //           Colors.grey.shade50.withOpacity(1),
              //           Colors.white,
              //           Colors.white,
              //           Colors.grey.shade50.withOpacity(1),
              //           Colors.grey.shade100.withOpacity(1),
              //           Colors.grey.shade200.withOpacity(1),
              //           Colors.grey.shade300.withOpacity(1),
              //         ]),
              //   ),
              //   child: Column(
              //     children: <Widget>[
              //       // Heading Start
              //       Padding(
              //         padding: const EdgeInsets.only(
              //           left: 15.0,
              //         ),
              //         child: Container(
              //           padding: const EdgeInsets.only(
              //             left: 10.0,
              //             top: 30.0,
              //           ),
              //           margin: const EdgeInsets.only(
              //             right: 10.0,
              //             top: 40.0,
              //           ),
              //           child: Row(
              //             mainAxisAlignment: MainAxisAlignment.end,
              //             children: <Widget>[
              //               Column(
              //                 crossAxisAlignment: CrossAxisAlignment.end,
              //                 children: <Widget>[
              //                   Text(
              //                     'Our Students',
              //                     style: TextStyle(
              //                         fontSize: 20.0.sp,
              //                         fontFamily: 'Timesroman',
              //                         fontWeight: FontWeight.w700),
              //                   ),
              //                   Text(
              //                     'Are At',
              //                     style: TextStyle(
              //                         fontSize: 20.0.sp,
              //                         fontFamily: 'Timesroman',
              //                         fontWeight: FontWeight.w700),
              //                   ),
              //                 ],
              //               ),
              //               Container(
              //                 padding: const EdgeInsets.only(
              //                   left: 10.0,
              //                 ),
              //                 margin: const EdgeInsets.only(
              //                   left: 10.0,
              //                 ),
              //                 decoration: const BoxDecoration(
              //                   border: Border(
              //                     left: BorderSide(
              //                       color: Colors.orange,
              //                       style: BorderStyle.solid,
              //                       width: 4.0,
              //                     ),
              //                   ),
              //                 ),
              //                 child: Column(
              //                   crossAxisAlignment: CrossAxisAlignment.end,
              //                   children: <Widget>[
              //                     Text(
              //                       '',
              //                       style: TextStyle(
              //                           fontSize: 20.0.sp,
              //                           fontFamily: 'Timesroman',
              //                           fontWeight: FontWeight.w700),
              //                     ),
              //                     Text(
              //                       '',
              //                       style: TextStyle(
              //                         fontSize: 20.0.sp,
              //                         fontFamily: 'Timesroman',
              //                         fontWeight: FontWeight.w700,
              //                       ),
              //                     ),
              //                   ],
              //                 ),
              //               )
              //             ],
              //           ),
              //         ),
              //       ),
              //       // Heading End
              //       const Padding(
              //         padding: EdgeInsets.only(bottom: 50.0),
              //       ),
              //       //
              //     ],
              //   ),
              // ),
              /*
               * Next Section End
               */

              // Next Section End

              // Next Section End
            ],
          ),
        ),
      ),
    );
  }

  Future<String> _downloadUrl(String imageName) async {
    String downloadUrl =
        await FirebaseStorage.instance.ref(imageName).getDownloadURL();
    return downloadUrl;
  }

  // University Highlights
  Widget _indicator(bool isActive) {
    return Expanded(
      child: Container(
        height: 4,
        width: 34,
        margin: const EdgeInsets.only(
          bottom: 20,
          right: 5,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: isActive ? Colors.orange : Colors.white,
        ),
      ),
    );
  }

  List<Widget> _buildIndicator(int len) {
    List<Widget> indicators = [];
    for (int i = 0; i < len; i++) {
      if (currenIndex == i) {
        indicators.add(_indicator(true));
      } else {
        indicators.add(_indicator(false));
      }
    }
    return indicators;
  }
}
