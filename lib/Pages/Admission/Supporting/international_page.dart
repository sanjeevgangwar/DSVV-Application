import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/route_manager.dart';

class InternationalStudentPage extends StatefulWidget {
  const InternationalStudentPage({Key? key}) : super(key: key);

  @override
  State<InternationalStudentPage> createState() =>
      _InternationalStudentPageState();
}

class _InternationalStudentPageState extends State<InternationalStudentPage> {
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
            "International Students",
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
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.grey.shade500.withOpacity(1),
                  Colors.grey.shade400.withOpacity(1),
                  Colors.grey.shade300.withOpacity(1),
                  Colors.grey.shade200.withOpacity(1),
                  Colors.grey.shade100.withOpacity(1),
                  Colors.grey.shade50.withOpacity(1),
                  Colors.grey.shade100.withOpacity(1),
                  Colors.grey.shade200.withOpacity(1),
                  Colors.grey.shade300.withOpacity(1),
                ]),
          ),
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Stack(
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
                  children: [
                    const SizedBox(height: 20),

                    // What We Do Conatainer
                    Container(
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(25),
                        ),
                        color: Colors.white,
                      ),
                      margin: EdgeInsets.all(20),
                      padding: const EdgeInsets.only(
                          left: 20, right: 15, top: 10, bottom: 30),
                      child: Column(
                        children: <Widget>[
                          Container(
                            alignment: Alignment.center,
                            padding: const EdgeInsets.only(top: 20, bottom: 20),
                            child: const Text(
                              'What We Do',
                              style: TextStyle(
                                  fontSize: 30, fontWeight: FontWeight.w600),
                            ),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            'The IRO coordinates bilateral research and academic programmes of the centres/departments of Dev Sanskriti Vishwavidyalaya with overseas Institutions/Universities through Memorandum of Understanding (MoU).',
                            textAlign: TextAlign.justify,
                            style: TextStyle(fontSize: 16.sp),
                          ),
                          const SizedBox(height: 20),
                          Text(
                            'The centre facilitates Exchange of Students/Faculty members with foreign universities.',
                            textAlign: TextAlign.justify,
                            style: TextStyle(fontSize: 16.sp),
                          ),
                        ],
                      ),
                    ),

                    // Two Images
                    Container(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        children: [
                          const SizedBox(height: 20),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              'assets/images/international1.jpg',
                              fit: BoxFit.fill,
                            ),
                          ),
                          const SizedBox(height: 20),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              'assets/images/international2.jpg',
                              fit: BoxFit.fill,
                            ),
                          ),
                          const SizedBox(height: 20),
                        ],
                      ),
                    ),

                    // Text Container
                    Container(
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(25),
                        ),
                        color: Colors.white,
                      ),
                      margin: EdgeInsets.all(20),
                      padding: const EdgeInsets.only(
                          left: 20, right: 15, top: 10, bottom: 30),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'The Centre also conducts foreign language courses such as German, French and Japanese for students, researchers and faculty members to help to gain much proficiency in the language for higher studies or job opportunities in the respective countries. The Centre organizes special lectures and seminars by professors/experts from various foreign Universities/Institutions.',
                              style: TextStyle(
                                fontSize: 18.sp,
                              ),
                              textAlign: TextAlign.justify,
                            ),
                            const SizedBox(height: 20),
                            Text(
                              'These talks are very much essential to take up the innovations, research development, to modify or eliminate the existing old technologies. Guidelines to higher education with funding facilities in different countries are also given through these talks. The centre invites prominent visitors from various foreign Universities/Institutions to DSVV to discuss future collaboration.',
                              style: TextStyle(
                                fontSize: 18.sp,
                              ),
                              textAlign: TextAlign.justify,
                            ),
                            const SizedBox(height: 20),
                            Text(
                              'The international collaboration activities are made through these visits to discuss the collaboration possibilities of strengthening the bilateral academic and research cooperation.',
                              style: TextStyle(
                                fontSize: 18.sp,
                              ),
                              textAlign: TextAlign.justify,
                            ),
                            const SizedBox(height: 20),
                            Text(
                              'The centre does the pre-counselling work for admission of students under : ',
                              style: TextStyle(
                                fontSize: 18.sp,
                              ),
                              textAlign: TextAlign.justify,
                            ),
                            const SizedBox(height: 20),
                            Text(
                              '• Foreign Nationals (FN)',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18.sp,
                              ),
                              textAlign: TextAlign.justify,
                            ),
                            // const SizedBox(height: 20),
                            Text(
                              '• Non-Resident Indians (NRI)',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18.sp,
                              ),
                              textAlign: TextAlign.justify,
                            ),
                            // const SizedBox(height: 20),
                            Text(
                              '• People of Indian Origin (PIO)',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18.sp,
                              ),
                              textAlign: TextAlign.justify,
                            ),
                            // const SizedBox(height: 20),
                            Text(
                              '• Children of Indian Workers in Gulf Countries (CIWGC)',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18.sp,
                              ),
                              textAlign: TextAlign.justify,
                            ),
                            const SizedBox(height: 20),
                            Text(
                              'categories to Undergraduate and Postgraduate programs.',
                              style: TextStyle(
                                fontSize: 18.sp,
                              ),
                              textAlign: TextAlign.justify,
                            ),
                          ]),
                    ),

                    // Images
                    Container(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        children: [
                          const SizedBox(height: 20),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              'assets/images/international3.jpg',
                              fit: BoxFit.cover,
                            ),
                          ),
                          const SizedBox(height: 20),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              'assets/images/international4.jpg',
                              fit: BoxFit.cover,
                            ),
                          ),
                          const SizedBox(height: 20),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              'assets/images/international5.jpg',
                              fit: BoxFit.cover,
                            ),
                          ),
                          const SizedBox(height: 20),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              'assets/images/international6.jpg',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(height: 20),

                    // Vision
                    Container(
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(25),
                        ),
                        color: Colors.white,
                      ),
                      margin: EdgeInsets.all(20),
                      padding: const EdgeInsets.only(
                          left: 20, right: 15, top: 10, bottom: 30),
                      child: Column(children: <Widget>[
                        SizedBox(height: 15),
                        Text(
                          'Vision',
                          style: TextStyle(
                            fontSize: 30.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const SizedBox(height: 25),
                        Text(
                          'International Relations Office is focused to share the spiritual and cultural essence of Dev Sanskriti University to all the global aspirants. The IRO focuses to present the model of an existing educational institute which facilitates the holistic development of a human being imbibing the virtues of humanity along with the world class education.',
                          style: TextStyle(fontSize: 18.sp),
                          textAlign: TextAlign.justify,
                        ),
                        const SizedBox(height: 15),
                      ]),
                    ),
                    const SizedBox(height: 40),

                    // Mission
                    Text(
                      'Mission',
                      style: TextStyle(
                          fontSize: 30.sp, fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(height: 20),
                    // First Mission
                    Container(
                      width: MediaQuery.of(context).size.width * 0.90,
                      decoration: BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          const SizedBox(height: 20),
                          Container(
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                const SizedBox(height: 10),
                                Icon(
                                  Icons.arrow_circle_right_outlined,
                                  size: 60.sp,
                                  color: Colors.white,
                                ),
                              ],
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(20),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Text(
                                  'To provide a perfect ambience for our International students to receive the contemporary education with the experience of spiritual transformation.',
                                  textAlign: TextAlign.justify,
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.white,
                                  ),
                                )
                              ],
                            ),
                          ),
                          const SizedBox(height: 20),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20),
                    // Second Mission
                    Container(
                      width: MediaQuery.of(context).size.width * 0.90,
                      decoration: BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          const SizedBox(height: 20),
                          Container(
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                const SizedBox(height: 10),
                                Icon(
                                  Icons.arrow_circle_right_outlined,
                                  size: 60.sp,
                                  color: Colors.white,
                                ),
                              ],
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(20),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Text(
                                  'To establish new relations in the form of Memorandum of Understandings with various global Institutions and to strengthen the existing ties.',
                                  textAlign: TextAlign.justify,
                                  style: TextStyle(
                                      fontSize: 18, color: Colors.white),
                                )
                              ],
                            ),
                          ),
                          const SizedBox(height: 20),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20),
                    // Third Mission
                    Container(
                      width: MediaQuery.of(context).size.width * 0.90,
                      decoration: BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          const SizedBox(height: 20),
                          Container(
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                const SizedBox(height: 10),
                                Icon(
                                  Icons.arrow_circle_right_outlined,
                                  size: 60.sp,
                                  color: Colors.white,
                                ),
                              ],
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(20),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Text(
                                  'To create International Partnerships for various educational, and cultural exchange opportunities.',
                                  textAlign: TextAlign.justify,
                                  style: TextStyle(
                                      fontSize: 18, color: Colors.white),
                                )
                              ],
                            ),
                          ),
                          const SizedBox(height: 20),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20),

                    // Images
                    Container(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        children: [
                          const SizedBox(height: 20),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              'assets/images/international7.jpg',
                              fit: BoxFit.fill,
                            ),
                          ),
                          const SizedBox(height: 20),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              'assets/images/international8.jpg',
                              fit: BoxFit.fill,
                            ),
                          ),
                          const SizedBox(height: 20),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              'assets/images/international9.jpg',
                              fit: BoxFit.fill,
                            ),
                          ),
                          const SizedBox(height: 20),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              'assets/images/international10.jpg',
                              fit: BoxFit.fill,
                            ),
                          ),
                          const SizedBox(height: 20),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              'assets/images/international11.jpg',
                              fit: BoxFit.fill,
                            ),
                          ),
                          const SizedBox(height: 30),
                          Column(
                            children: const [
                              Text(
                                "Aims & Objectives",
                                style: TextStyle(
                                    fontSize: 30, fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),

                    // Aim And Objectives
                    Container(
                      width: MediaQuery.of(context).size.width * 0.92,
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(25)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            '•  To liaise with partner universities',
                            style: TextStyle(
                              fontSize: 18.sp,
                            ),
                            textAlign: TextAlign.justify,
                          ),
                          const SizedBox(height: 20),
                          Text(
                            '•  To liaise with internal departments for proper functioning',
                            style: TextStyle(
                              fontSize: 18.sp,
                            ),
                            textAlign: TextAlign.justify,
                          ),
                          const SizedBox(height: 20),
                          Text(
                            '•  To organize various international workshops, seminars, conferences',
                            style: TextStyle(
                              fontSize: 18.sp,
                            ),
                            textAlign: TextAlign.justify,
                          ),
                          const SizedBox(height: 20),
                          Text(
                            '•  To conduct the admission procedures for international applicants',
                            style: TextStyle(
                              fontSize: 18.sp,
                            ),
                            textAlign: TextAlign.justify,
                          ),
                          const SizedBox(height: 20),
                          Text(
                            '•  To coordinate international students with their academic pursuits',
                            style: TextStyle(
                              fontSize: 18.sp,
                            ),
                            textAlign: TextAlign.justify,
                          ),
                          const SizedBox(height: 20),
                          Text(
                            '•  To coordinate and facilitate students and staff mobilities',
                            style: TextStyle(
                              fontSize: 18.sp,
                            ),
                            textAlign: TextAlign.justify,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20),

                    const SizedBox(
                      height: 20,
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
