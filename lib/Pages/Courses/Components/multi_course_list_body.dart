import 'package:dsvv/Pages/Courses/courses_data.dart';
import 'package:dsvv/Widgets/all_courses_card.dart';
import 'package:dsvv/Widgets/search_box.dart';
import 'package:flutter/material.dart';

class MultiCourseListBody extends StatelessWidget {
  final courseName;
  const MultiCourseListBody({Key? key, required this.courseName})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Column(children: <Widget>[
        SearchBox(onChanged: (value) {}),
        Expanded(
          child: Stack(children: <Widget>[
            Container(
              margin: const EdgeInsets.only(
                top: 70.0,
              ),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
              ),
            ),
            ListView.builder(
              physics: const BouncingScrollPhysics(),
              itemCount: multiCourseList[courseName]?.length,
              itemBuilder: (context, index) => AllCoursesCard(
                courseName: multiCourseList[courseName]![index],
              ),
            )
          ]),
        )
      ]),
    );
  }
}
