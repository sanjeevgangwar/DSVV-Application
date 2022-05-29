import 'package:dsvv/Pages/Courses/courses_data.dart';
import 'package:dsvv/Pages/Programs/programs_cards.dart';
import 'package:dsvv/Widgets/search_box.dart';
import 'package:flutter/material.dart';

class ProgramsBody extends StatefulWidget {
  const ProgramsBody({Key? key}) : super(key: key);

  @override
  State<ProgramsBody> createState() => _ProgramsBodyState();
}

class _ProgramsBodyState extends State<ProgramsBody> {
  
  List<dynamic> allCourses = [];
  @override
  void initState() {
    super.initState();
    allCourses = courses[0] + courses[1] + courses[2] + courses[3];
  }

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
              itemCount: allCourses.length,
              itemBuilder: (context, index) => ProgramsCard(
                courseName: allCourses[index],
              ),
            )
          ]),
        )
      ]),
    );
  }
}
