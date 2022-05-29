import 'package:dsvv/Pages/Courses/courses_data.dart';
import 'package:dsvv/Pages/Courses/multi_course_list.dart';
import 'package:dsvv/Widgets/course_details.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class ProgramsCard extends StatefulWidget {
  final courseName;
  const ProgramsCard({Key? key, required this.courseName}) : super(key: key);

  @override
  State<ProgramsCard> createState() => _ProgramsCardState();
}

class _ProgramsCardState extends State<ProgramsCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 20,
      ),
      // color: Colors.blueAccent,
      height: 160,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: <Widget>[
          // Background design

          Container(
            height: 136,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(22),
                color: Colors.orangeAccent,
                boxShadow: const [
                  BoxShadow(
                    offset: Offset(0, 15),
                    blurRadius: 27,
                    color: Colors.black12, // Black color with 12% opacity
                  ),
                ]),
            child: Container(
              margin: const EdgeInsets.only(
                right: 10,
              ),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(22)),
            ),
          ),

          // Course Title and button
          Positioned(
            child: SizedBox(
              height: 136,
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Container(
                        width: MediaQuery.of(context).size.width * 0.85,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 20,
                            vertical: 15,
                          ),
                          child: Container(
                            child: Text(
                              widget.courseName,
                              style: const TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        GestureDetector(
                          onTap: () {
                            !deepCourseList.contains(widget.courseName)
                                ? Get.to(
                                    () => CourseDetails(
                                        courseName: widget.courseName),
                                  )
                                : Get.to(
                                    () => MultiCourseList(
                                      courseName: widget.courseName,
                                    ),
                                  );
                          },
                          child: Container(
                            margin: const EdgeInsets.only(
                              right: 10,
                            ),
                            padding: const EdgeInsets.symmetric(
                              horizontal: 30,
                              vertical: 10,
                            ),
                            decoration: const BoxDecoration(
                              color: Colors.orange,
                              borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(22),
                                topLeft: Radius.circular(22),
                              ),
                            ),
                            child: const Text(
                              "View",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                              ),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ),
                      ]),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
