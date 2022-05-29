import 'package:dsvv/Pages/Courses/Components/multi_course_list_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/route_manager.dart';

class MultiCourseList extends StatefulWidget {
  final courseName;
  const MultiCourseList({Key? key, required this.courseName}) : super(key: key);

  @override
  State<MultiCourseList> createState() => _MultiCourseListState();
}

class _MultiCourseListState extends State<MultiCourseList> {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: () => Scaffold(
        backgroundColor: Colors.orange,
        appBar: buildAppBar(),
        body: MultiCourseListBody(
          courseName: widget.courseName,
        ),
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
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
        "Courses",
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
    );
  }
}
