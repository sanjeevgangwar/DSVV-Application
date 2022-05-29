import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Calender extends StatelessWidget {
  const Calender({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: ()=> Scaffold(
        body: Column(
          children: [
            Expanded(
              child: Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.blue,
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
                child: SingleChildScrollView(
                  child: Column(children: <Widget>[
                    // Why DSVV Heading Start
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0, top: 20.0),
                      child: Container(
                        height: 100,
                        width: MediaQuery.of(context).size.width * 1.0,
                        padding: const EdgeInsets.all(20.0),
                        decoration: const BoxDecoration(
                          // color: Colors.red,
                          border: Border(
                            left: BorderSide(
                                color: Colors.orange,
                                style: BorderStyle.solid,
                                width: 4.0),
                          ),
                        ),
                        child: Row(
                          children: <Widget>[
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const <Widget>[
                                Text(
                                  'Academic\n       Calendar',
                                  softWrap: true,
                                  style: TextStyle(
                                      color: Colors.orange,
                                      fontSize: 20.0,
                                      decoration: TextDecoration.none,
                                      fontFamily: 'Timesroman',
                                      fontWeight: FontWeight.w700),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
    
                    const Padding(
                      padding: EdgeInsets.all(20.0),
                      child: Text(
                        "Academic Calendar : 2022-23",
                        style: TextStyle(
                          color: Colors.blue,
                          decoration: TextDecoration.underline,
                          decorationColor: Color.fromARGB(255, 0, 0, 0),
                          fontSize: 20.0,
                        ),
                      ),
                    ),
                  ]),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}