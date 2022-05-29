import 'package:dsvv/Pages/About%20Us/about_us_landing_page.dart';
import 'package:dsvv/Pages/Academics/academics_landing_page.dart';
import 'package:dsvv/Pages/Admission/admission_landing_page.dart';
import 'package:dsvv/Pages/Programs/programs_landing_page.dart';
import 'package:dsvv/Pages/Student_Corner/Screens/student_corner_landing_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:get/route_manager.dart';

class MenuScreen extends StatefulWidget {
  final ZoomDrawerController zoomDrawerController;
  const MenuScreen({Key? key, required this.zoomDrawerController})
      : super(key: key);

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  int currentIndex = 0;

  @override
  void initState() {
    super.initState();
    currentIndex = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          children: <Widget>[
            DrawerHeader(
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        height: MediaQuery.of(context).size.width * 0.17,
                        width: MediaQuery.of(context).size.width * 0.17,
                        child: const CircleAvatar(
                          backgroundColor: Colors.orange,
                          backgroundImage: AssetImage("assets/images/logo.png"),
                          // NetworkImage(
                          //     "https://images.unsplash.com/photo-1624797494322-2b7693c54a12?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1974&q=80"),
                          maxRadius: 40,
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.01,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.70,
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              const Text(
                                "Dev Sanskriti Vishwavidayalaya",
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.orange,
                                ),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                              const SizedBox(
                                height: 3,
                              ),
                              Row(
                                children: const <Widget>[
                                  Icon(
                                    Icons.pin_drop_outlined,
                                    size: 12,
                                    color: Colors.orange,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(right: 5),
                                  ),
                                  Text(
                                    "Haridwar, Uttarakhand",
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      fontSize: 10,
                                      color: Colors.orange,
                                    ),
                                  ),
                                ],
                              ),
                            ]),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            // Home Menu
            const Divider(
              thickness: 0.4,
              color: Colors.white12,
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 8,
                right: 8,
                left: 20,
                bottom: 8,
              ),
              child: InkWell(
                onTap: (() {
                  currentIndex = 0;
                  widget.zoomDrawerController.toggle!();
                }),
                child: Row(
                  children: <Widget>[
                    currentIndex == 0
                        ? const Icon(
                            Icons.home_outlined,
                            color: Colors.orange,
                            size: 22,
                          )
                        : const Icon(
                            Icons.home_outlined,
                            color: Colors.white,
                            size: 22,
                          ),
                    const SizedBox(width: 20),
                    currentIndex == 0
                        ? const Text(
                            "Home",
                            style: TextStyle(
                              color: Colors.orange,
                              fontSize: 18,
                            ),
                          )
                        : const Text(
                            "Home",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                            ),
                          ),
                  ],
                ),
              ),
            ),
            const Divider(
              thickness: 0.4,
              color: Colors.white12,
            ),

            // Academics Menu
            const Divider(
              thickness: 0.4,
              color: Colors.white12,
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 8,
                right: 8,
                left: 20,
                bottom: 8,
              ),
              child: InkWell(
                onTap: () {
                  currentIndex = 1;
                  widget.zoomDrawerController.toggle!();
                  Get.to(
                    () => const AcademicLandingPage(),
                    transition: Transition.rightToLeftWithFade,
                    duration: const Duration(milliseconds: 400),
                  );
                },
                child: Row(children: <Widget>[
                  currentIndex == 1
                      ? const Icon(
                          Icons.book_outlined,
                          color: Colors.white,
                          size: 21,
                        )
                      : const Icon(
                          Icons.book_outlined,
                          color: Colors.white,
                          size: 21,
                        ),
                  const SizedBox(width: 20),
                  currentIndex == 1
                      ? const Text(
                          "Academics",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                          ),
                        )
                      : const Text(
                          "Academics",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                          ),
                        )
                ]),
              ),
            ),
            const Divider(
              thickness: 0.4,
              color: Colors.white12,
            ),

            // Admissions Menu
            const Divider(
              thickness: 0.4,
              color: Colors.white12,
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 8,
                right: 8,
                left: 20,
                bottom: 8,
              ),
              child: InkWell(
                onTap: () {
                  currentIndex = 2;
                  widget.zoomDrawerController.toggle!();
                  Get.to(
                    () => const AdmissionLandingPage(),
                    transition: Transition.rightToLeftWithFade,
                    duration: const Duration(milliseconds: 400),
                  );
                },
                child: Row(children: <Widget>[
                  currentIndex == 2
                      ? const Icon(
                          Icons.pin_end_outlined,
                          color: Colors.orange,
                          size: 22,
                        )
                      : const Icon(
                          Icons.pin_end_outlined,
                          color: Colors.white,
                          size: 22,
                        ),
                  const SizedBox(width: 20),
                  currentIndex == 2
                      ? const Text(
                          "Admissions",
                          style: TextStyle(
                            color: Colors.orange,
                            fontSize: 18,
                          ),
                        )
                      : const Text(
                          "Admissions",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                          ),
                        )
                ]),
              ),
            ),
            const Divider(
              thickness: 0.4,
              color: Colors.white12,
            ),

            // Programs Menu
            const Divider(
              thickness: 0.4,
              color: Colors.white12,
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 8,
                right: 8,
                left: 20,
                bottom: 8,
              ),
              child: InkWell(
                onTap: () {
                  currentIndex = 3;
                  widget.zoomDrawerController.toggle!();
                  Get.to(
                    () => const ProgramsLandingPage(),
                    transition: Transition.rightToLeftWithFade,
                    duration: const Duration(milliseconds: 400),
                  );
                },
                child: Row(children: <Widget>[
                  currentIndex == 3
                      ? const Icon(
                          Icons.home_max_outlined,
                          color: Colors.orange,
                          size: 22,
                        )
                      : const Icon(
                          Icons.home_max_outlined,
                          color: Colors.white,
                          size: 22,
                        ),
                  const SizedBox(width: 20),
                  currentIndex == 4
                      ? const Text(
                          "Programs",
                          style: TextStyle(
                            color: Colors.orange,
                            fontSize: 18,
                          ),
                        )
                      : const Text(
                          "Programs",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                          ),
                        )
                ]),
              ),
            ),
            const Divider(
              thickness: 0.4,
              color: Colors.white12,
            ),

            // Student Corner Menu
            const Divider(
              thickness: 0.4,
              color: Colors.white12,
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 8,
                right: 8,
                left: 20,
                bottom: 8,
              ),
              child: InkWell(
                onTap: () {
                  currentIndex = 4;
                  widget.zoomDrawerController.toggle!();
                  Get.to(
                    () => const DashboardPage(),
                    transition: Transition.rightToLeftWithFade,
                    duration: const Duration(milliseconds: 400),
                  );
                },
                child: Row(children: <Widget>[
                  currentIndex == 4
                      ? const Icon(
                          Icons.star_border_outlined,
                          color: Colors.orange,
                          size: 22,
                        )
                      : const Icon(
                          Icons.star_border_outlined,
                          color: Colors.white,
                          size: 22,
                        ),
                  const SizedBox(width: 20),
                  currentIndex == 4
                      ? const Text(
                          "Student Corner",
                          style: TextStyle(
                            color: Colors.orange,
                            fontSize: 18,
                          ),
                        )
                      : const Text(
                          "Student Corner",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                          ),
                        )
                ]),
              ),
            ),
            const Divider(
              thickness: 0.4,
              color: Colors.white12,
            ),

            // About Menu
            const Divider(
              thickness: 0.4,
              color: Colors.white12,
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 8,
                right: 8,
                left: 20,
                bottom: 8,
              ),
              child: InkWell(
                onTap: () {
                  currentIndex = 5;
                  Get.to(
                    () => const AboutUsLandingPage(),
                    transition: Transition.rightToLeftWithFade,
                  );
                },
                child: Row(children: <Widget>[
                  currentIndex == 5
                      ? const Icon(
                          Icons.public,
                          color: Colors.orange,
                          size: 22,
                        )
                      : const Icon(
                          Icons.public,
                          color: Colors.white,
                          size: 22,
                        ),
                  const SizedBox(width: 20),
                  currentIndex == 5
                      ? const Text(
                          "About",
                          style: TextStyle(
                            color: Colors.orange,
                            fontSize: 18,
                          ),
                        )
                      : const Text(
                          "About",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                          ),
                        )
                ]),
              ),
            ),
            const Divider(
              thickness: 0.4,
              color: Colors.white12,
            ),
          ],
        ),
      ),
    );
  }
}
