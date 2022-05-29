import 'package:dsvv/Pages/Academics/HodDean/hod_dean_supporting.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/route_manager.dart';

class HodDeanLanding extends StatefulWidget {
  const HodDeanLanding({Key? key}) : super(key: key);

  @override
  HodDeanLandingState createState() => HodDeanLandingState();
}

class HodDeanLandingState extends State<HodDeanLanding>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    tabController = TabController(vsync: this, length: 4);
    super.initState();
  }

  List<String> categories = [
    "Dean Of Schools",
    "Dean Of Faculties",
    "Emeritus Professors",
    "Head Of Departments",
  ];

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
            "Deans & HoDs",
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
          height: 1.sh,
          child: Stack(children: <Widget>[
            Container(
              width: 1.sw,
              margin: EdgeInsets.only(
                top: 0.20.sh,
              ),
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
              height: 0.30.sh,
              decoration: const BoxDecoration(
                color: Colors.orange,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(25),
                  bottomRight: Radius.circular(25),
                ),
              ),
            ),
            ListView(
              padding: const EdgeInsets.only(top: 50),
              physics: const NeverScrollableScrollPhysics(),
              children: <Widget>[
                const SizedBox(
                  height: 10.0,
                ),
                const SizedBox(height: 10.0),
                const Padding(
                  padding: EdgeInsets.only(
                    left: 10.0,
                    bottom: 30,
                  ),
                  child: Center(
                    child: Text(
                      'Deans & HoDs',
                      style: TextStyle(
                        fontFamily: 'Quicksand',
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 25.0,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: TabBar(
                    controller: tabController,
                    indicatorColor: Colors.transparent,
                    labelColor: Colors.white,
                    unselectedLabelColor: Colors.grey.withOpacity(0.6),
                    isScrollable: true,
                    tabs: <Widget>[
                      Tab(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 10,
                            vertical: 5,
                          ),
                          child: Text(
                            categories[0],
                            style: const TextStyle(
                                fontSize: 17.0,
                                fontFamily: 'Quicksand',
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      Tab(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 10,
                            vertical: 5,
                          ),
                          child: Text(
                            categories[1],
                            style: const TextStyle(
                                fontSize: 17.0,
                                fontFamily: 'Quicksand',
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      Tab(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 10,
                            vertical: 5,
                          ),
                          child: Text(
                            categories[2],
                            style: const TextStyle(
                                fontSize: 17.0,
                                fontFamily: 'Quicksand',
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      Tab(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 10,
                            vertical: 5,
                          ),
                          child: Text(
                            categories[3],
                            style: const TextStyle(
                                fontSize: 17.0,
                                fontFamily: 'Quicksand',
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(
                    top: 50,
                  ),
                  height: MediaQuery.of(context).size.height,
                  // height: MediaQuery.of(context).size.height - 375.0,
                  child: TabBarView(
                    physics: const NeverScrollableScrollPhysics(),
                    controller: tabController,
                    children: const <Widget>[
                      FruitsPage(categories: "DoS"),
                      FruitsPage(categories: "DoF"),
                      FruitsPage(categories: "EProf"),
                      FruitsPage(categories: "HoD"),
                    ],
                  ),
                ),
                const SizedBox(height: 10.0),
              ],
            ),
          ]),
        ),
      ),
    );
  }
}
