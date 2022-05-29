import 'package:dsvv/Pages/Courses/courses_data.dart';
import 'package:dsvv/Pages/Courses/multi_course_list.dart';
import 'package:dsvv/Widgets/course_details.dart';
import 'package:flutter/material.dart';

class CoursesDescription extends StatefulWidget {
  final String courseName;
  const CoursesDescription({Key? key, required this.courseName})
      : super(key: key);

  @override
  State<CoursesDescription> createState() => _CoursesDescriptionState();
}

class _CoursesDescriptionState extends State<CoursesDescription> {
  @override
  Widget build(BuildContext context) {
    return !deepCourseList.contains(widget.courseName)
        ? CourseDetails(courseName: widget.courseName)
        : MultiCourseList(
            courseName: widget.courseName,
          );
  }
}
