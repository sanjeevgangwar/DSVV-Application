import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:dsvv/Pages/Admission/Supporting/indian_student_page.dart';
import 'package:dsvv/Pages/Admission/Supporting/international_page.dart';
import 'package:dsvv/Pages/Admission/Supporting/overview_page.dart';
import 'package:flutter/material.dart';

class AdmissionLandingPage extends StatefulWidget {
  const AdmissionLandingPage({Key? key}) : super(key: key);

  @override
  State<AdmissionLandingPage> createState() => _AdmissionLandingPageState();
}

int currentIndex = 0;
List pages = [
  const OverViewPage(),
  const IndianStudent(),
  const InternationalStudentPage(),
  // const PhdStudentPage(),
];

class _AdmissionLandingPageState extends State<AdmissionLandingPage> {
  @override
  void initState() {
    super.initState();
    currentIndex = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: <Widget>[pages[currentIndex]]),
      // pages[currentIndex],
      bottomNavigationBar: BottomNavyBar(
        selectedIndex: currentIndex,
        onItemSelected: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        items: <BottomNavyBarItem>[
          BottomNavyBarItem(
            icon: const Icon(Icons.search_off_sharp),
            title: const Text('OverView'),
            activeColor: Colors.orange,
            inactiveColor: Colors.black,
          ),
          BottomNavyBarItem(
            icon: const Icon(Icons.person_add_alt_1_outlined),
            title: const Text('Indian Students'),
            activeColor: Colors.orange,
            inactiveColor: Colors.black,
          ),
          BottomNavyBarItem(
            icon: const Icon(Icons.person),
            title: const Text('International Students'),
            activeColor: Colors.orange,
            inactiveColor: Colors.black,
          ),
          // BottomNavyBarItem(
          //   icon: const Icon(Icons.book_online_sharp),
          //   title: const Text('Phd. Addmission'),
          //   activeColor: Colors.orange,
          //   inactiveColor: Colors.black,
          // ),
        ],
      ),
    );
  }
}
