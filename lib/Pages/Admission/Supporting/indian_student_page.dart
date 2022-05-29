import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/route_manager.dart';

class IndianStudent extends StatefulWidget {
  const IndianStudent({Key? key}) : super(key: key);

  @override
  State<IndianStudent> createState() => _IndianStudentState();
}

class _IndianStudentState extends State<IndianStudent> {
  get child => null;

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
              "Indian Students",
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
              child: Stack(children: <Widget>[
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
                Container(
                    padding: const EdgeInsets.only(
                        left: 20.0, right: 20, top: 40, bottom: 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width * 0.01,
                              height: MediaQuery.of(context).size.height * 0.07,
                              padding: const EdgeInsets.only(bottom: 5),
                              decoration: const BoxDecoration(
                                  color: Colors.white,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(50))),
                            ),
                            const SizedBox(width: 15),
                            Container(
                              width: MediaQuery.of(context).size.width * 0.5,
                              height: MediaQuery.of(context).size.height * 0.1,
                              //color: const Color.fromARGB(255, 207, 0, 0),
                              child: Text(
                                'Application Form',
                                style: TextStyle(
                                  fontSize: 25.sp,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Column(
                          children: [
                            Stack(
                              children: [
                                Container(
                                  height:
                                      MediaQuery.of(context).size.height * 0.9,
                                  width: MediaQuery.of(context).size.width,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(25),
                                  ),
                                ),
                                Column(
                                  children: [
                                    Container(
                                      padding: const EdgeInsets.only(
                                          top: 30,
                                          left: 20,
                                          right: 10,
                                          bottom: 10),
                                      alignment: Alignment.topCenter,
                                      child: const Text(
                                        'Offline Form',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20),
                                      ),
                                    ),
                                    const SizedBox(height: 10),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 15.0, right: 10),
                                      child: Text(
                                        'Download Application Form for offline submission',
                                        style: TextStyle(
                                          fontSize: 17.sp,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(height: 10),
                                    Container(
                                      padding: const EdgeInsets.all(15),
                                      child: Column(
                                        children: const <Widget>[
                                          Text(
                                            '• Applicants can download the Application Form from the below given link. After filling up the form and attaching relevant attested mark-sheet photocopies, send via post to DSVV (at the below mentioned address) along with a Demand Draft of Rs. 1000/- in favor of Dev Sanskriti Vishwavidyalaya, payable at Haridwar.\n\n• Applications must reach the Registrar Office on or before the last date of submission. Applications received after the due date or with incomplete information will not be accepted.\n\n•[आवेदक नीचे दिए गए लिंक से आवेदन प्रपत्र डाउनलोड कर सकते हैं। फ़ॉर्म भरने और सम्बंधित मार्क शीट्स एवं दस्तावेजों की छाया प्रति अटैच (संलग्न) करने के बाद, डी.एस.वी.वी. को पोस्ट के माध्यम से (अधोलिखित पते पर) भेजें. साथ में रु.800/- का डिमांड ड्राफ्ट “देव संस्कृति विश्व विद्यालय” के पक्ष में, हरिद्वार में देय हो, को भी संलग्न कर दें। आवेदन, भेजने की अंतिम तिथि या उससे पहले, रजिस्ट्रार आफिस तक पहुंच जाना चाहिए। नियत तारीख के बाद या अपूर्ण जानकारी के साथ प्राप्त आवेदन प्रपत्र स्वीकार नहीं किए जाएंगे।]',
                                            style: TextStyle(fontSize: 15),
                                            textAlign: TextAlign.justify,
                                          ),
                                        ],
                                      ),
                                    ),
                                    // const SizedBox(height: 30),
                                    // TextButton(
                                    //   style: ButtonStyle(
                                    //     backgroundColor: MaterialStateProperty.all(
                                    //         Colors.grey[700]),
                                    //   ),
                                    //   onPressed: () {},
                                    //   child: const Text(
                                    //     'Application Form',
                                    //     style: TextStyle(
                                    //         color: Colors.black,
                                    //         fontWeight: FontWeight.bold),
                                    //   ),
                                    // ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(height: 40),
                        Column(
                          children: [
                            Stack(
                              children: [
                                Container(
                                  height:
                                      MediaQuery.of(context).size.height * 0.67,
                                  width: MediaQuery.of(context).size.width,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(25),
                                  ),
                                ),
                                Column(
                                  children: [
                                    Container(
                                      padding: const EdgeInsets.only(
                                          top: 40, left: 20, right: 10),
                                      alignment: Alignment.topCenter,
                                      child: const Text(
                                        'Online Form',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20),
                                      ),
                                    ),
                                    const SizedBox(height: 10),
                                    const Padding(
                                      padding:
                                          EdgeInsets.only(left: 15, right: 10),
                                      child: Text(
                                        'Apply Online, Upload Documents, Pay Online',
                                        style: TextStyle(
                                          fontSize: 17,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(height: 10),
                                    Container(
                                      padding: const EdgeInsets.all(15),
                                      child: Column(
                                        children: const [
                                          Text(
                                            '• Applicants can fill the ONLINE APPLICATION FORM and pay through “net banking/ debit card/ credit card/ wallets” etc., the Non-Refundable Entrance Exam Fee of Rs. 1000/- [excluding Gateway Charges].\n\n• Students are required to upload scanned copies of relevant mark sheets, documents and passport size photograph along with their signature.\n\n•आवेदक ऑनलाइन आवेदन प्रपत्र भर सकते हैं और “नेट बैंकिंग / डेबिट कार्ड / क्रेडिट कार्ड / वॉलेट” आदि के माध्यम से भुगतान कर सकते हैं. प्रवेश शुल्क रु.1000 / – [गेटवे प्रभार को छोड़कर] है. आवेदकों को उनके सम्बंधित दस्तावेज, मार्क शीट्स, पासपोर्ट आकार की फोटो हस्ताक्षर के साथ अपलोड करना अनिवार्य है.]',
                                            style: TextStyle(fontSize: 15),
                                            textAlign: TextAlign.justify,
                                          ),
                                        ],
                                      ),
                                    ),
                                    const SizedBox(height: 40),

                                    // Button Apply Now
                                    // TextButton(
                                    //   style: ButtonStyle(
                                    //     backgroundColor: MaterialStateProperty.all(
                                    //         Colors.grey[700]),
                                    //   ),
                                    //   onPressed: () {
                                    //     Get.to(() => const LoginPage(),
                                    //         transition: Transition.zoom);
                                    // //   },
                                    //   child: const Text(
                                    //     'Online Forms',
                                    //     style: TextStyle(
                                    //         color: Colors.black,
                                    //         fontWeight: FontWeight.bold),
                                    //   ),
                                    // ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(height: 40),
                        Column(
                          children: [
                            const Text(
                              'Note',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 23),
                            ),
                            const SizedBox(height: 20),
                            Column(
                              children: const [
                                Text(
                                  '• An application for the change of examination center OR for the change of course would attract a fee of Rs.200/-. The final decision on this issue would be taken by the Registrar, DSVV.\n\n•The University holds the right to cancel any application form at any stage without any prior notice to the candidate.\n\n• Reservation will be applicable according to Uttarakhand Govt. rules.\n\n• Kindly note that the University is working for altruistic cause. Therefore, it is expected from the candidates to deposit necessary maintenance charges at the time of admission.\n\n• A refundable caution deposit of Rs.1000/- would be charged at the time of admission. (Refundable within one year of course completion)\n\n• The Entrance Examination Fee is Non-Refundable,\n\n• परीक्षा प्रवेश शुल्क अप्रतिदेय रहेगा (वापस नहीं किया जायेगा)\n\n• Applicants can not apply for two or more courses in one session, simultaneously, apart from B.Ed.\n\n• एक सत्र में आवेदक दो या दो से अधिक कोर्सेज में एक साथ आवेदन नहीं कर सकते हैं.\n\n• Fee once paid will not be Refunded.\n\n• भुगतान किए गए शुल्क को वापस नहीं किया जाएगा.',
                                  style: TextStyle(fontSize: 16),
                                  textAlign: TextAlign.justify,
                                )
                              ],
                            )
                          ],
                        ),
                      ],
                    )),
              ]),
            ),
          ),
        ),
      ),
    );
  }
}
