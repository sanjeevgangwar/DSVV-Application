import 'package:dsvv/Pages/Admission/Supporting/indian_student_page.dart';
import 'package:dsvv/Pages/Courses/apply_now_form.dart';
import 'package:dsvv/Pages/Courses/courses_data.dart';
import 'package:dsvv/Widgets/course_details_different_cards.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/route_manager.dart';
import 'package:like_button/like_button.dart';

class CourseDetails extends StatefulWidget {
  final courseName;
  const CourseDetails({Key? key, required this.courseName}) : super(key: key);

  @override
  State<CourseDetails> createState() => _CourseDetailsState();
}

class _CourseDetailsState extends State<CourseDetails> {
  final bool _isLiked = false;
  final animationDuration = const Duration(
    milliseconds: 500,
  );

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: ()=> Scaffold(
        body: Stack(
          children: [
            // Inner Container
            Container(
              height: MediaQuery.of(context).size.height,
              // color: Colors.orange,
              color: const Color(0xFFFE7050),
            ),
            // Apply Now Button
            Positioned(
              bottom: 0,
              child: GestureDetector(
                onTap: () {
                  Get.to(
                    () => ApplyNowCourseDetails(
                      courseName: widget.courseName,
                    ),
                    transition: Transition.rightToLeftWithFade,
                    duration: const Duration(milliseconds: 400),
                  );
                },
                child: Container(
                    width: 1.sw,
                    color: Colors.transparent,
                    height: 0.2.sw,
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            "Apply Now",
                            style: TextStyle(
                              fontFamily: 'Opensans',
                              fontSize: 20.0.sp,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ),
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.white.withOpacity(0.3),
                            size: 11.0,
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.white.withOpacity(0.5),
                            size: 12.0,
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.white.withOpacity(0.7),
                            size: 13.0,
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.white.withOpacity(0.9),
                            size: 14.0,
                          ),
                          const RotatedBox(
                              child:
                                  Icon(Icons.local_airport, color: Colors.white),
                              quarterTurns: 1),
                        ],
                      ),
                    )),
              ),
            ),
            // Inner White Container
            Container(
              height: MediaQuery.of(context).size.height * 0.91,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(35.0),
                      bottomRight: Radius.circular(35.0)),
                  color: Colors.white),
            ),
            // Content Body
            Positioned(
              top: 0.25.sw,
              bottom: 0.1.sh,
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    // Main Heading Course Name Start
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 25.0,
                        bottom: 30,
                      ),
                      child: Container(
                        width: 0.87.sw,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            SizedBox(
                              width: 0.87.sw - 43,
                              child: Text(
                                coursesData[widget.courseName]!['title'] ?? "",
                                style: TextStyle(
                                  fontFamily: 'Opensans',
                                  fontSize: 22.0.sp,
                                  fontWeight: FontWeight.w600,
                                ),
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                            Container(
                              height: 0.08.sh,
                              width: 0.05.sh,
                              decoration: BoxDecoration(
                                color: Colors.black.withOpacity(0.1),
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  LikeButton(
                                    size: 20.sp,
                                    isLiked: _isLiked,
                                    animationDuration: animationDuration,
                                    likeBuilder: (isLiked) {
                                      final color =
                                          isLiked ? Colors.orange : Colors.black;
                                      return isLiked
                                          ? Icon(
                                              Icons.favorite,
                                              color: color,
                                              size: 20.sp,
                                            )
                                          : Icon(
                                              Icons.favorite_border_outlined,
                                              color: color,
                                              size: 20.sp,
                                            );
                                    },
                                  ),
                                  const SizedBox(height: 7.0)
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    // Main Heading Course Name End
    
                    Padding(
                      padding: const EdgeInsets.only(top: 0),
                      child: CourseDetailsDifferentCards(
                        cardHeading: "Eligibility",
                        cardDesc: coursesData[widget.courseName]!['eligibility'],
                        cardFirstIcon: const Icon(
                          Icons.star_outline_outlined,
                          color: Colors.black,
                        ),
                        cardSecondIcon: const Icon(
                          Icons.arrow_circle_right_outlined,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    CourseDetailsDifferentCards(
                      cardHeading: "Admission",
                      cardDesc: coursesData[widget.courseName]!['admission'],
                      cardFirstIcon: const Icon(
                        Icons.star_outline_outlined,
                        color: Colors.black,
                      ),
                      cardSecondIcon: const Icon(
                        Icons.arrow_circle_right_outlined,
                        color: Colors.black,
                      ),
                    ),
                    CourseDetailsDifferentCards(
                      cardHeading: "Age Limit",
                      cardDesc: coursesData[widget.courseName]!['age_limit'],
                      cardFirstIcon: const Icon(
                        Icons.star_outline_outlined,
                        color: Colors.black,
                      ),
                      cardSecondIcon: const Icon(
                        Icons.arrow_circle_right_outlined,
                        color: Colors.black,
                      ),
                    ),
                    CourseDetailsDifferentCards(
                      cardHeading: "Institute",
                      cardDesc: coursesData[widget.courseName]!['institute'],
                      cardFirstIcon: const Icon(
                        Icons.star_outline_outlined,
                        color: Colors.black,
                      ),
                      cardSecondIcon: const Icon(
                        Icons.arrow_circle_right_outlined,
                        color: Colors.black,
                      ),
                    ),
                    CourseDetailsDifferentCards(
                      cardHeading: "Course Code",
                      cardDesc: coursesData[widget.courseName]!['code'],
                      cardFirstIcon: const Icon(
                        Icons.star_outline_outlined,
                        color: Colors.black,
                      ),
                      cardSecondIcon: const Icon(
                        Icons.arrow_circle_right_outlined,
                        color: Colors.black,
                      ),
                    ),
                    CourseDetailsDifferentCards(
                      cardHeading: "Seats",
                      cardDesc: coursesData[widget.courseName]!['seats'],
                      cardFirstIcon: const Icon(
                        Icons.star_outline_outlined,
                        color: Colors.black,
                      ),
                      cardSecondIcon: const Icon(
                        Icons.arrow_circle_right_outlined,
                        color: Colors.black,
                      ),
                    ),
                    CourseDetailsDifferentCards(
                      cardHeading: "Duration",
                      cardDesc: coursesData[widget.courseName]!['duration'],
                      cardFirstIcon: const Icon(
                        Icons.star_outline_outlined,
                        color: Colors.black,
                      ),
                      cardSecondIcon: const Icon(
                        Icons.arrow_circle_right_outlined,
                        color: Colors.black,
                      ),
                    ),
                    CourseDetailsDifferentCards(
                      cardHeading: "Fee In INR",
                      cardDesc: coursesData[widget.courseName]!['fee_inr'],
                      cardFirstIcon: const Icon(
                        Icons.star_outline_outlined,
                        color: Colors.black,
                      ),
                      cardSecondIcon: const Icon(
                        Icons.arrow_circle_right_outlined,
                        color: Colors.black,
                      ),
                    ),
                    CourseDetailsDifferentCards(
                      cardHeading: "Fee In USD",
                      cardDesc: coursesData[widget.courseName]!['fee_usd'],
                      cardFirstIcon: const Icon(
                        Icons.star_outline_outlined,
                        color: Colors.black,
                      ),
                      cardSecondIcon: const Icon(
                        Icons.arrow_circle_right_outlined,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            // Top Navigation Bar
            Padding(
              padding: const EdgeInsets.only(
                top: 20.0,
                left: 15.0,
                right: 25.0,
              ),
              child: Container(
                height: 0.09.sh,
                width: 0.9.sw,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        GestureDetector(
                          onTap: () {
                            Get.back();
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Icon(
                              Icons.keyboard_arrow_down_outlined,
                              color: Colors.orange,
                              size: 20.0.sp,
                            ),
                          ),
                        ),
                        const SizedBox(width: 20.0),
                        Container(
                          height: 40.0,
                          width: 0.7.sw,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                              20.0,
                            ),
                            color: Colors.orange,
                          ),
                          padding: const EdgeInsets.only(
                            left: 5,
                          ),
                          child: Center(
                            child: Text(
                              widget.courseName,
                              style: const TextStyle(
                                color: Colors.white,
                              ),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
