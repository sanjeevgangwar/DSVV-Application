import 'package:dsvv/Widgets/course_details.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/route_manager.dart';

class AllCoursesCard extends StatelessWidget {
  final courseName;
  const AllCoursesCard({Key? key, required this.courseName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: ()=> Container(
        margin: const EdgeInsets.symmetric(
          horizontal: 20,
        ),
        // color: Colors.blueAccent,
        // height: 160,
        height: 0.21.sh,
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
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(22),
                ),
              ),
            ),
    
            // Course Title and button
            Positioned(
              child: Container(
                height: 136,
                width: 1.sw,
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        SizedBox(
                          width: 0.85.sw,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 20,
                              vertical: 15,
                            ),
                            child: SizedBox(
                              child: Text(
                                courseName,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18.sp,
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
                              Get.to(
                                () => CourseDetails(courseName: courseName),
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
                              child: Text(
                                "View",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18.sp,
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
      ),
    );
  }
}
