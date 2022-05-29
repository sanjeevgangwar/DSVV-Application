import 'package:dsvv/Pages/Academics/HodDean/hod_dean_landing_page.dart';
import 'package:dsvv/Pages/Academics/academic_calender_landing_page.dart';
import 'package:dsvv/Pages/Academics/evaluation_system.dart';
import 'package:dsvv/Pages/Academics/internship_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/route_manager.dart';

class AcademicLandingPage extends StatefulWidget {
  const AcademicLandingPage({Key? key}) : super(key: key);

  @override
  State<AcademicLandingPage> createState() => _AcademicLandingPageState();
}

class _AcademicLandingPageState extends State<AcademicLandingPage> {
  Widget _academicHighlightCard(title, navigation) {
    return GestureDetector(
      onTap: () {
        if (navigation == "internship") {
          Get.to(
            () => const Internship(),
            transition: Transition.zoom,
            duration: const Duration(milliseconds: 400),
          );
        } else if (navigation == "es") {
          Get.to(
            () => const EvaluationSystem(),
            transition: Transition.zoom,
            duration: const Duration(milliseconds: 400),
          );
        } else if (navigation == "deanHod") {
          Get.to(
            () => const HodDeanLanding(),
            transition: Transition.zoom,
            duration: const Duration(milliseconds: 400),
          );
        } else if (navigation == "academic") {
          Get.to(
            () => const Calender(),
            transition: Transition.zoom,
            duration: const Duration(milliseconds: 400),
          );
        }
      },
      child: Container(
        margin: const EdgeInsets.only(right: 20),
        height: 125.0,
        width: 250.0,
        decoration: BoxDecoration(
          boxShadow: const [
            BoxShadow(
              color: Color.fromARGB(255, 219, 214, 214),
              blurRadius: 2.0,
              spreadRadius: -5.0,
              offset: Offset(
                15.0,
                15.0,
              ),
            )
          ],
          borderRadius: BorderRadius.circular(12.0),
          color: const Color.fromARGB(255, 247, 245, 245),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width * 0.77,
              margin: const EdgeInsets.all(20),
              child: Text(
                title,
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 20.0.sp,
                  color: Colors.black,
                ),
                maxLines: 2,
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: () => Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: const Icon(
              Icons.arrow_back_outlined,
              color: Colors.white,
            ),
          ),
          elevation: 0,
          backgroundColor: Colors.orange,
          title: const Text(
            "Academics Highlight",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          centerTitle: false,
          actions: <Widget>[
            IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(
                "assets/icons/notification.svg",
              ),
            ),
          ],
        ),
        body: ListView(
            physics: const NeverScrollableScrollPhysics(),
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Container(
                    height: 0.28.sh,
                    decoration: const BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(25),
                        bottomRight: Radius.circular(25),
                      ),
                    ),
                  ),
                  Column(
                    children: <Widget>[
                      const SizedBox(height: 25.0),
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0, right: 10.0),
                        child: Container(
                          padding:
                              const EdgeInsets.only(left: 10.0, right: 10.0),
                          decoration: const BoxDecoration(
                            border: Border(
                              left: BorderSide(
                                  color: Colors.orange,
                                  style: BorderStyle.solid,
                                  width: 3.0),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 0.05.sh,
                        width: 1.sw,
                      ),
                      const Padding(
                        padding: EdgeInsets.only(bottom: 15.0),
                      ),
                      Container(
                        height: 0.84.sh,
                        padding: const EdgeInsets.only(top: 15.0, left: 15.0),
                        child: ListView(
                          shrinkWrap: true,
                          scrollDirection: Axis.vertical,
                          physics: const BouncingScrollPhysics(),
                          addAutomaticKeepAlives: true,
                          children: <Widget>[
                            // _academicHighlightCard("Academic Calendar", "academic"),
                            // const SizedBox(width: 10.0),
                            // const Padding(
                            //   padding: EdgeInsets.all(20.0),
                            // ),
                            // _academicHighlightCard(
                            //     "Schools, Faculties & Departments", "schools"),
                            // const SizedBox(width: 10.0),
                            // const Padding(
                            //   padding: EdgeInsets.all(20.0),
                            // ),
                            _academicHighlightCard("Deans & HOD", "deanHod"),
                            const SizedBox(width: 10.0),
                            const Padding(
                              padding: EdgeInsets.all(20.0),
                            ),
                            // _academicHighlightCard("Placement", "placement"),
                            // const SizedBox(width: 10.0),
                            // const Padding(
                            //   padding: EdgeInsets.all(20.0),
                            // ),
                            _academicHighlightCard("Internship", "internship"),
                            const SizedBox(width: 10.0),
                            const Padding(
                              padding: EdgeInsets.all(20.0),
                            ),
                            // _academicHighlightCard("Research @ DSVV", "research"),
                            // const SizedBox(width: 10.0),
                            // const Padding(
                            //   padding: EdgeInsets.all(20.0),
                            // ),
                            // _academicHighlightCard(
                            //     "Faculty Development Program", "facultyDevelopment"),
                            // const SizedBox(width: 10.0),
                            // const Padding(
                            //   padding: EdgeInsets.all(20.0),
                            // ),
                            _academicHighlightCard("Evaluation System", "es"),
                            const SizedBox(width: 10.0),
                            const Padding(
                              padding: EdgeInsets.all(20.0),
                            ),
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
              // SizedBox(height: 15.0),
            ]),
      ),
    );
  }
}
