import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/route_manager.dart';

class OverViewPage extends StatefulWidget {
  const OverViewPage({Key? key}) : super(key: key);

  @override
  State<OverViewPage> createState() => _OverViewPageState();
}

class _OverViewPageState extends State<OverViewPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ScreenUtilInit(
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
              "Overview",
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
              child: Column(children: [
                Stack(
                  children: <Widget>[
                    Container(
                      height: 0.35.sh,
                      width: MediaQuery.of(context).size.width,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image:
                              AssetImage('assets/images/backgrounOverView.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      height: 0.30.sh,
                      color: Colors.transparent,
                      alignment: Alignment.bottomCenter,
                      child: const Text(
                        'OverView',
                        style: TextStyle(color: Colors.white, fontSize: 40),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                const Text(
                  'Why Dsvv',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontSize: 25,
                  ),
                ),
                const SizedBox(height: 15),
                Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(15),
                      child: const Text.rich(
                        TextSpan(
                          text: '• Chancellor’s Sessions - ',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                          children: <InlineSpan>[
                            TextSpan(
                              text:
                                  'DSVV is a unique university where chancellor takes Sessions on Geeta (Shri Mad BhagavatGeeta ) and Meditation (Dhyan) for not only Personality but Holistic development of the students. It is the only university where your chancellor appreciates your actions and also takes full interest in all types of Student related Activities.',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(15),
                      child: const Text.rich(
                        TextSpan(
                            text:
                                '• Invocation (Gyan Deeksha) to Convocation tradition - ',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                            children: <InlineSpan>[
                              TextSpan(
                                text:
                                    'The University has revived the Vedic ceremony of Gyan Deeksha (Invocation) for the new students for the first time in India.',
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.normal),
                              ),
                            ]),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(15),
                      child: const Text.rich(
                        TextSpan(
                            text: '• Life Management Classes - ',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                            children: <InlineSpan>[
                              TextSpan(
                                text:
                                    'The art of Living is the core essence of all our endeavors and achievements. Secrets of self confidence, communication skills, and willpower are taught by the experts.',
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.normal),
                              ),
                            ]),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(15),
                      child: const Text.rich(
                        TextSpan(
                            text: '• Earn while Learn scheme - ',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                            children: <InlineSpan>[
                              TextSpan(
                                text:
                                    'Srijana a Scheme initiated by Honorable Chancellor gives a creative environment to the students through many Entrepreneurship workshops and programmes like Hand made paper products, Stitching, making Food items, Best out of Waste, using Solar Energy etc.',
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.normal),
                              ),
                            ]),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(15),
                      child: const Text.rich(
                        TextSpan(
                            text: '• Raging free Environment - ',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                            children: <InlineSpan>[
                              TextSpan(
                                text:
                                    'A unique tradition where senior gives Unnayan party rather than taking a raging of new students. Unnayan is again a very Creative exposure for the new students and they get to know about DSVV with the help of Nukkad natak, cultural programmes, Songs etc.',
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.normal),
                              ),
                            ]),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(15),
                      child: const Text.rich(
                        TextSpan(
                            text: '• Fully Residential - ',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                            children: <InlineSpan>[
                              TextSpan(
                                text:
                                    'with a provision for accommodation for about 850 students',
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.normal),
                              ),
                            ]),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(15),
                      child: const Text.rich(
                        TextSpan(
                            text: '• S.S.C.- ',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                            children: <InlineSpan>[
                              TextSpan(
                                text:
                                    'SSC stands for Spiritual Study Circle, a unique practical approach which is govern by our Hon. Chancellor Sir. Under his guidance, students make group (10-15 student) and do some Personal, Academic and Social activity. They don’t waste time in gossips etc',
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.normal),
                              ),
                            ]),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(15),
                      child: const Text.rich(
                        TextSpan(
                            text: '• Workshops & Seminars - ',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                            children: <InlineSpan>[
                              TextSpan(
                                text:
                                    'seminar on contemporary issues, global issues and spiritual issues are organized in abundance.',
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.normal),
                              ),
                            ]),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(15),
                      child: const Text.rich(
                        TextSpan(
                            text: '• Internship Program - ',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                            children: <InlineSpan>[
                              TextSpan(
                                text:
                                    'The students undergo internship program for a month after the completion of their Course and contribute their time and energy in social issues.',
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.normal),
                              ),
                            ]),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(15),
                      child: const Text.rich(
                        TextSpan(
                            text: '• Four separate laboratories  - ',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                            children: <InlineSpan>[
                              TextSpan(
                                text:
                                    'with modern instruments for Psychotherapy, Yoga therapy, Yajna-therapy and Ayurveda.',
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.normal),
                              ),
                            ]),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(15),
                      child: const Text.rich(
                        TextSpan(
                            text: '• ',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                            children: <InlineSpan>[
                              TextSpan(
                                text:
                                    'Working with established National and International institutes to enrich the educational quality and spiritual activities around the world.',
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.normal),
                              ),
                            ]),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(15),
                      child: const Text.rich(
                        TextSpan(
                            text: '• ',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                            children: <InlineSpan>[
                              TextSpan(
                                text:
                                    'Organization of Yog Shivirs by School of Yoga and Health twice a year for patients suffering from Obesity, Hypertension, Diabetes, Heart ailments and respiratory problems etc. Use of integrated and alternative medicine system and application of Naturopathy, Panchakarma, Physiotherapy, Pranic healing and Acupressure are used to cure the diseases..',
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.normal),
                              ),
                            ]),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              'assets/images/addmission1.jpg',
                              fit: BoxFit.cover,
                            ),
                          ),
                          const SizedBox(height: 10),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              'assets/images/addmission2.jpg',
                              fit: BoxFit.cover,
                            ),
                          ),
                          const SizedBox(height: 10),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              'assets/images/addmission3.jpg',
                              fit: BoxFit.cover,
                            ),
                          ),
                          const SizedBox(height: 10),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              'assets/images/addmission4.jpg',
                              fit: BoxFit.cover,
                            ),
                          ),
                          const SizedBox(height: 10),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              'assets/images/addmission5.jpg',
                              fit: BoxFit.cover,
                            ),
                          ),
                          const SizedBox(height: 10),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              'assets/images/addmission6.jpg',
                              fit: BoxFit.cover,
                            ),
                          ),
                          const SizedBox(height: 10),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              'assets/images/addmission7.jpg',
                              fit: BoxFit.cover,
                            ),
                          ),
                          const SizedBox(height: 10),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              'assets/images/addmission8.jpg',
                              fit: BoxFit.cover,
                            ),
                          ),
                          const SizedBox(height: 10),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              'assets/images/addmission9.jpg',
                              fit: BoxFit.cover,
                            ),
                          ),
                          const SizedBox(height: 10),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              'assets/images/addmission10.jpg',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ]),
            ),
          ),
        ),
      ),
    );
  }
}
