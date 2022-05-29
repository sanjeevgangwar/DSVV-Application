import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FruitsPage extends StatefulWidget {
  // ignore: prefer_typing_uninitialized_variables
  final categories;
  const FruitsPage({Key? key, @required this.categories}) : super(key: key);

  @override
  _FruitsPageState createState() => _FruitsPageState();
}

class _FruitsPageState extends State<FruitsPage> {
  final Stream<QuerySnapshot> hodData = FirebaseFirestore.instance
      .collection('dean_hods')
      .doc("Kfl3dk8HUikZoSJmqg3P")
      .collection("head_of_departments")
      .snapshots();

  final Stream<QuerySnapshot> eProfData = FirebaseFirestore.instance
      .collection('dean_hods')
      .doc("Kfl3dk8HUikZoSJmqg3P")
      .collection("emeritus_professors")
      .snapshots();

  final Stream<QuerySnapshot> dofData = FirebaseFirestore.instance
      .collection('dean_hods')
      .doc("Kfl3dk8HUikZoSJmqg3P")
      .collection("dean_of_faculties")
      .snapshots();

  final Stream<QuerySnapshot> dosData = FirebaseFirestore.instance
      .collection('dean_hods')
      .doc("Kfl3dk8HUikZoSJmqg3P")
      .collection("dean_of_schools")
      .snapshots();

  @override
  Widget build(BuildContext context) {
    if (widget.categories == "DoS") {
      return Container(
        height: 0.5.sh,
        child: StreamBuilder<QuerySnapshot>(
          stream: dosData,
          builder:
              (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
            if (snapshot.hasError) {
              return const Text("Something Went Wrong..");
            }
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Text("Loading");
            }

            final data = snapshot.requireData;

            return ListView.builder(
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                // itemCount: 5,
                itemCount: data.docs.length,
                itemBuilder: (context, index) {
                  return _deanNSchoolListCard(
                    'assets/images/fully_residential.jpg',
                    data.docs[index]['name'],
                    data.docs[index]['qualification'],
                    data.docs[index]['position'],
                    data.docs[index]['departments'],
                  );
                });
          },
        ),
      );
    } else if (widget.categories == "Dof") {
      return Container(
        height: 0.5.sh,
        child: StreamBuilder<QuerySnapshot>(
          stream: dofData,
          builder:
              (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
            if (snapshot.hasError) {
              return const Text("Something Went Wrong..");
            }
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Text("Loading");
            }

            final data = snapshot.requireData;

            return ListView.builder(
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                // itemCount: 5,
                itemCount: data.docs.length,
                itemBuilder: (context, index) {
                  return _deanNSchoolListCard(
                    'assets/images/fully_residential.jpg',
                    data.docs[index]['name'],
                    data.docs[index]['qualification'],
                    data.docs[index]['position'],
                    data.docs[index]['departments'],
                  );
                });
          },
        ),
      );
    } else if (widget.categories == "EProf") {
      return Container(
        height: 0.5.sh,
        child: StreamBuilder<QuerySnapshot>(
          stream: eProfData,
          builder:
              (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
            if (snapshot.hasError) {
              return const Text("Something Went Wrong..");
            }
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Text("Loading");
            }

            final data = snapshot.requireData;

            return ListView.builder(
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                // itemCount: 5,
                itemCount: data.docs.length,
                itemBuilder: (context, index) {
                  return _deanNSchoolListCard(
                    'assets/images/fully_residential.jpg',
                    data.docs[index]['name'],
                    data.docs[index]['qualification'],
                    data.docs[index]['position'],
                    data.docs[index]['departments'],
                  );
                });
          },
        ),
      );
    } else {
      return Container(
        height: 0.5.sh,
        child: StreamBuilder<QuerySnapshot>(
          stream: hodData,
          builder:
              (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
            if (snapshot.hasError) {
              return const Text("Something Went Wrong..");
            }
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Text("Loading");
            }

            final data = snapshot.requireData;

            return ListView.builder(
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                // itemCount: 5,
                itemCount: data.docs.length,
                itemBuilder: (context, index) {
                  return _deanNSchoolListCard(
                    'assets/images/fully_residential.jpg',
                    data.docs[index]['name'],
                    data.docs[index]['qualification'],
                    data.docs[index]['position'],
                    data.docs[index]['departments'],
                  );
                });
          },
        ),
      );
    }
  }

  _deanNSchoolListCard(String imgPath, String name, String qualification,
      String position, String departments) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 15.0,
        right: 15.0,
      ),
      child: Container(
        width: 0.8.sw,
        child: Column(
          children: <Widget>[
            Stack(children: [
              Container(
                height: 0.6.sh,
              ),
              Positioned(
                top: 75.0,
                child: Container(
                  height: 0.45.sh,
                  padding: const EdgeInsets.only(
                    left: 10.0,
                    right: 10.0,
                  ),
                  width: 0.73.sw,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25.0),
                    color: Colors.orange,
                  ),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        const SizedBox(height: 50.0),
                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 8.0,
                            vertical: 8.0,
                          ),
                          child: Center(
                            child: Text(
                              name,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: 'varela',
                                fontSize: 18.0.sp,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 10.0),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          child: Center(
                            child: Text(
                              qualification,
                              style: const TextStyle(
                                fontFamily: 'nunito',
                                fontSize: 12.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 10.0),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          child: Center(
                            child: Text(
                              position,
                              style: TextStyle(
                                fontSize: 12.0.sp,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 10.0),
                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 8.0,
                            vertical: 8.0,
                          ),
                          child: Center(
                            child: Text(
                              departments,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: 'varela',
                                fontSize: 16.0.sp,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 10.0),
                      ]),
                ),
              ),
              Positioned(
                left: 0.21.sw,
                top: 20.0,
                child: const SizedBox(
                  height: 120.0,
                  width: 120.0,
                  child: CircleAvatar(
                    backgroundImage:
                        AssetImage("assets/images/fully_residential.jpg"),
                    maxRadius: 40,
                  ),
                ),
              ),
            ]),
            const SizedBox(height: 20.0),

            // Open Details Button

            // InkWell(
            //   onTap: () {},
            //   child: Container(
            //     height: 50.0,
            //     width: 225.0,
            //     decoration: BoxDecoration(
            //       borderRadius: BorderRadius.circular(25.0),
            //       color: const Color(0xFF473D3A),
            //     ),
            //     child: const Center(
            //       child: Text(
            //         'Order Now',
            //         style: TextStyle(
            //             fontFamily: 'nunito',
            //             fontSize: 14.0,
            //             fontWeight: FontWeight.bold,
            //             color: Colors.white),
            //       ),
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
