import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/route_manager.dart';

class EvaluationSystem extends StatefulWidget {
  const EvaluationSystem({Key? key}) : super(key: key);

  @override
  State<EvaluationSystem> createState() => _EvaluationSystemState();
}

class _EvaluationSystemState extends State<EvaluationSystem> {
  Widget _evaluationSysCard() {
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
            child: Text(
              "Our Evaluation System",
              style: TextStyle(
                fontSize: 20.0.sp,
                color: Colors.black,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(20),
            child: Text(
              "The University’s teaching, learning and evaluation schedules are planned well before the commencement of the semester. The semester-wise course list is provided in the prospectus itself. The detailed syllabus and reference books for each course is available in the Central Library; the students can readily refer to this syllabus and can get a photocopy if needed.",
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontSize: 14.0.sp,
                color: Colors.black,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(20),
            child: Text(
              "Based on the syllabus, the teacher for each paper prepares his/her teaching plan and submits it to the Head of the Department (HoD). The HoD monitors the progress of the teaching plan. The course-coordinators assigned for each course program also assist the HoD in supervising and monitoring the progress of the students.",
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontSize: 14.0.sp,
                color: Colors.black,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(20),
            child: Text(
              "The evaluation schedule consists of both internal and external evaluations. The internal evaluation usually consists of 4 tests, which are conducted on dates pre-decided by the Controller of Examinations. These dates are declared well in advance. In case a student misses one of these tests, then there is a provision for taking one special test, which is also conducted on a pre-decided date. The external evaluation consists of the semester-end examination.",
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontSize: 14.0.sp,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          "Evaluation System",
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
      body: Stack(
        children: <Widget>[
          Container(
            width: 1.sw,
            margin: EdgeInsets.only(top: 0.15.sh),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.grey.shade400.withOpacity(1),
                    Colors.grey.shade300.withOpacity(1),
                    Colors.grey.shade200.withOpacity(1),
                    Colors.grey.shade100.withOpacity(1),
                    Colors.grey.shade200.withOpacity(1),
                    Colors.grey.shade300.withOpacity(1),
                    Colors.grey.shade400.withOpacity(1),
                  ]),
            ),
          ),
          Container(
            height: 0.20.sh,
            decoration: const BoxDecoration(
              color: Colors.orange,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(25),
                bottomRight: Radius.circular(25),
              ),
            ),
          ),
          Container(
            width: 1.sw,
            margin: EdgeInsets.only(top: 0.05.sh),
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  // Internship Written Content Card Start
                  Container(
                    padding: const EdgeInsets.all(20),
                    margin: const EdgeInsets.only(
                      top: 20,
                      bottom: 30,
                    ),
                    child: _evaluationSysCard(),
                  ),
                  // Internship Written Content Card End
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
