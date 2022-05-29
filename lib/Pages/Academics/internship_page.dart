import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/route_manager.dart';

class Internship extends StatefulWidget {
  const Internship({Key? key}) : super(key: key);

  @override
  State<Internship> createState() => InternshipState();
}

class InternshipState extends State<Internship> {
  Widget _internshipCard() {
    return Container(
      width: 0.85.sw,
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
              "The Beginning Of Success",
              style: TextStyle(
                fontSize: 20.0.sp,
                color: Colors.black,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(20),
            child: Text(
              "The Internship Program Of The University Is Unique. Before Completion Of Their Educational Programme, The Students Are Expected To Spend Their Time And Efforts To Serve The Society. During This Programme The Students Of All The Disciplines Go To Rural And Urban Areas, Where They Gain The Practical Experience And Also Contribute To The Dissemination Of The Knowledge Learnt During Their Course Programme.",
              style: TextStyle(
                fontSize: 14.0.sp,
                color: Colors.black,
              ),
              textAlign: TextAlign.justify,
            ),
          ),
          Container(
            margin: const EdgeInsets.all(20),
            child: Text(
              "At These Locations, The Extension Activities Are Monitored By Regional And Zonal Centers Of Shantikunj. Many Outreach Programs In Which Students And Faculty Participate Directly Involve The Community In Various Areas Such As Blood Donation, Rain Water Harvesting, Traffic Education And Regulation, Preservation Of Monuments, Reforestation, Disaster Management, Health Campaigns Focusing On Polio Eradication, HIV/AIDS, Education To Promote Literacy In Rural Areas, Adults And Women, Women Empowerment, Career Guidance, And Campaigns Against Social Evils Like Untouchability, Dowry And Addictions.",
              style: TextStyle(
                fontSize: 14.0.sp,
                color: Colors.black,
              ),
              textAlign: TextAlign.justify,
            ),
          ),
          Container(
            margin: const EdgeInsets.all(20),
            child: Text(
              "It Is Worth Mentioning That The University Does Not Charge Any Tuition Fee But Takes Only Maintenance Charges Towards Hostel, Mess, Library, Laboratory And Computers Etc. The Placementship Programme Is Also One Of The Distinguishing Features Of The Education Of This University.",
              style: TextStyle(
                fontSize: 14.0.sp,
                color: Colors.black,
              ),
              textAlign: TextAlign.justify,
            ),
          ),
          Container(
            margin: const EdgeInsets.all(20),
            child: Text(
              "This Unique Programme Not Only Guarantees That Students Would Apply What They Have Learnt Through Curriculum, But Also Presents An Opportunity To Them To Gain Valuable Career-Related Experience, Make Contacts In Their Chosen Field, And Better The World Through Their Knowledge. An Placementship Is Compulsory For Every Course, And A Special Department Of The University Helps Every Student Find An Placementship That Suits To His Or Her Needs.",
              style: TextStyle(
                fontSize: 14.0.sp,
                color: Colors.black,
              ),
              textAlign: TextAlign.justify,
            ),
          ),
        ],
      ),
    );
  }

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
              "Internship",
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
                        child: _internshipCard(),
                      ),
                      // Internship Written Content Card End
                    ],
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
