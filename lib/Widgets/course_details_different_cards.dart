import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CourseDetailsDifferentCards extends StatelessWidget {
  final cardHeading, cardDesc;
  final Widget cardFirstIcon, cardSecondIcon;
  const CourseDetailsDifferentCards(
      {Key? key,
      required this.cardHeading,
      required this.cardDesc,
      required this.cardFirstIcon,
      required this.cardSecondIcon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(
            left: 25.0,
            top: 10.0,
          ),
          child: Container(
            width: 0.87.sw,
            margin: const EdgeInsets.only(
              right: 30,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Stack(
                  children: <Widget>[
                    Container(
                      height: 40.0,
                      width: 80.0,
                    ),
                    Container(
                      height: 40.0,
                      width: 40.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: Center(
                        child: cardFirstIcon,
                      ),
                    ),
                    Positioned(
                      left: 30.0,
                      child: Container(
                        height: 40.0,
                        width: 40.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          // color: Color(0xFFFE7050),
                        ),
                        child: Center(
                          child: cardSecondIcon,
                        ),
                      ),
                    )
                  ],
                ),
                Text(
                  cardHeading,
                  style: TextStyle(
                    fontFamily: 'Opensans',
                    fontSize: 17.0.sp,
                    color: const Color.fromARGB(255, 45, 45, 45),
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            top: 15.0,
            left: 25.0,
          ),
          child: Container(
            width: 0.85.sw,
            padding: const EdgeInsets.all(15),
            child: Text(
              cardDesc,
              style: TextStyle(
                color: const Color(0xFF6A6A6A),
                fontFamily: 'Opensans',
                fontSize: 14.sp,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
