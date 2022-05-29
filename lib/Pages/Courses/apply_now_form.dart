import 'dart:ui';
import 'package:dsvv/Pages/Courses/Components/hero_dialogue_confirm_data_popup_card.dart';
import 'package:dsvv/Pages/Courses/Components/hero_dialogue_error_popup_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get/route_manager.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class ApplyNowCourseDetails extends StatefulWidget {
  final courseName;
  const ApplyNowCourseDetails({Key? key, required this.courseName})
      : super(key: key);

  @override
  State<ApplyNowCourseDetails> createState() => _ApplyNowCourseDetailsState();
}

class _ApplyNowCourseDetailsState extends State<ApplyNowCourseDetails> {
  final animationDuration = const Duration(
    milliseconds: 500,
  );
  int _currentStep = 0;
  final formKey = GlobalKey<FormState>();
  final firstNameController = TextEditingController();
  final lastNameController = TextEditingController();
  final emailController = TextEditingController();
  final recoveryEmailController = TextEditingController();
  final contactController = TextEditingController();
  final alternateContactController = TextEditingController();
  final primaryAddressController = TextEditingController();
  final alternateAddressController = TextEditingController();
  final percentageController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Inner Container
          Container(
            height: MediaQuery.of(context).size.height,
            color: const Color(0xFFFE7050),
          ),

          // Apply Now Button
          Positioned(
            bottom: 0,
            child: GestureDetector(
              onTap: () {
                // Get.to(
                //   () => ApplyNowCourseDetails(
                //     courseName: widget.courseName,
                //   ),
                //   transition: Transition.rightToLeftWithFade,
                //   duration: const Duration(milliseconds: 400),
                // );
              },
              child: Container(
                  width: 1.sw,
                  color: Colors.transparent,
                  height: 0.2.sw,
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "Apply Now",
                          style: TextStyle(
                            fontFamily: 'Opensans',
                            fontSize: 20.0.sp,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.white.withOpacity(0.3),
                          size: 11.0,
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.white.withOpacity(0.5),
                          size: 12.0,
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.white.withOpacity(0.7),
                          size: 13.0,
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.white.withOpacity(0.9),
                          size: 14.0,
                        ),
                        const RotatedBox(
                            child:
                                Icon(Icons.local_airport, color: Colors.white),
                            quarterTurns: 1),
                      ],
                    ),
                  )),
            ),
          ),

          // Inner White Container
          Container(
            height: MediaQuery.of(context).size.height * 0.91,
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(35.0),
                    bottomRight: Radius.circular(35.0)),
                color: Colors.white),
          ),

          // Content Body
          Positioned(
            top: 0.25.sw,
            bottom: 0.1.sh,
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  // Main Heading Course Name Start
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 25.0,
                      bottom: 30,
                      top: 15,
                    ),
                    child: SizedBox(
                      width: 0.87.sw,
                      child: SizedBox(
                        width: 0.87.sw,
                        child: Text(
                          "Personal Information",
                          style: TextStyle(
                            fontFamily: 'Opensans',
                            fontSize: 22.0.sp,
                            fontWeight: FontWeight.w600,
                          ),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ),
                  ),
                  // Main Heading Course Name End

                  SizedBox(
                    width: 1.sw,
                    height: 1.sh,
                    child: Form(
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      key: formKey,
                      child: Stepper(
                        steps: _stepper(),
                        type: StepperType.vertical,
                        physics: const ClampingScrollPhysics(),
                        currentStep: _currentStep,
                        onStepTapped: (step) {
                          if (step < _currentStep) {
                            setState(() {
                              _currentStep = step;
                            });
                          }
                        },
                        onStepContinue: () {
                          setState(() {
                            if (_currentStep < _stepper().length - 1) {
                              _currentStep += 1;
                            } else {
                              if (!formKey.currentState!.validate()) {
                                Navigator.of(context).push(
                                  HeroDialogRoute(
                                    builder: (context) => const Center(
                                      child: _DataErrorPopupCard(),
                                    ),
                                  ),
                                );
                              } else {
                                Navigator.of(context).push(
                                  HeroDialogRouteConfirmData(
                                    builder: (context) => const Center(
                                      child: _ConfirmDataPopupCard(),
                                    ),
                                  ),
                                );
                              }
                            }
                          });
                        },
                        onStepCancel: () {
                          setState(() {
                            if (_currentStep > 0) {
                              _currentStep -= 1;
                            } else {
                              Get.back();
                            }
                          });
                        },
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          // Top Navigation Bar
          Padding(
            padding: const EdgeInsets.only(
              top: 20.0,
              left: 15.0,
              right: 25.0,
            ),
            child: SizedBox(
              height: 0.09.sh,
              width: 0.9.sw,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      GestureDetector(
                        onTap: () {
                          Get.back();
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(
                            left: 10,
                          ),
                          child: Icon(
                            Icons.arrow_back_ios_new_outlined,
                            color: Colors.orange,
                            size: 20.0.sp,
                          ),
                        ),
                      ),
                      const SizedBox(width: 20.0),
                      Container(
                        height: 40.0,
                        width: 0.7.sw,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            20.0,
                          ),
                          color: Colors.orange,
                        ),
                        padding: const EdgeInsets.only(
                          left: 10,
                        ),
                        child: Center(
                          child: Text(
                            "Admission Application",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 13.5.sp,
                            ),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  List<Step> _stepper() {
    List<Step> _steps = [
      // Personal Information Step
      Step(
        title: _currentStep >= 0
            ? const Text(
                "Personal Information",
                style: TextStyle(
                  color: Colors.orange,
                ),
              )
            : const Text(
                "Personal Information",
              ),
        content: Column(
          children: <Widget>[
            const SizedBox(height: 10),

            // First Name
            TextFormField(
              controller: firstNameController,
              decoration: const InputDecoration(
                labelText: 'First Name',
                border: OutlineInputBorder(),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.orange,
                  ),
                ),
                focusColor: Colors.orange,
                errorBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.red,
                  ),
                ),
                focusedErrorBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.red,
                  ),
                ),
                errorStyle: TextStyle(
                  color: Colors.red,
                ),
              ),
              textInputAction: TextInputAction.next,
              validator: (value) {
                if (value!.length < 4) {
                  return 'Enter at least 4 characters';
                } else {
                  return null;
                }
              },
              maxLength: 20,

              // onSaved: (value) =>
              // setState(() => firstNameController.text = value!),
            ),

            const SizedBox(height: 10),

            // Last Name
            TextFormField(
              textInputAction: TextInputAction.done,
              controller: lastNameController,
              decoration: const InputDecoration(
                labelText: 'Last Name',
                border: OutlineInputBorder(),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.orange,
                  ),
                ),
                focusColor: Colors.orange,
                errorBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.red,
                  ),
                ),
                focusedErrorBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.red,
                  ),
                ),
                errorStyle: TextStyle(
                  color: Colors.red,
                ),
              ),
              validator: (value) {
                if (value!.length < 4) {
                  return 'Enter at least 4 characters';
                } else {
                  return null;
                }
              },
              maxLength: 20,
              // onSaved: (value) => setState(() => username = value),
            ),
          ],
        ),
        isActive: _currentStep >= 0,
        state: _currentStep == 0 ? StepState.editing : StepState.complete,
      ),

      // Email Details Step
      Step(
        title: _currentStep >= 1
            ? const Text(
                "Email",
                style: TextStyle(
                  color: Colors.orange,
                ),
              )
            : const Text(
                "Email",
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
        content: Column(
          children: <Widget>[
            const SizedBox(height: 10),

            // Email
            TextFormField(
              textInputAction: TextInputAction.next,
              controller: emailController,
              decoration: const InputDecoration(
                labelText: 'Email',
                border: OutlineInputBorder(),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.orange,
                  ),
                ),
                focusColor: Colors.orange,
                errorBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.red,
                  ),
                ),
                focusedErrorBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.red,
                  ),
                ),
                errorStyle: TextStyle(
                  color: Colors.red,
                ),
              ),
              validator: (value) {
                const pattern =
                    r'(^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$)';
                final regExp = RegExp(pattern);

                if (value!.isEmpty) {
                  return 'Enter an email';
                } else if (!regExp.hasMatch(value)) {
                  return 'Enter a valid email';
                } else {
                  return null;
                }
              },
              keyboardType: TextInputType.emailAddress,
              // onSaved: (value) => setState(() => username = value),
            ),

            const SizedBox(height: 15),

            // Recovery Email
            TextFormField(
              textInputAction: TextInputAction.done,
              controller: recoveryEmailController,
              decoration: const InputDecoration(
                labelText: 'Recovery Email',
                border: OutlineInputBorder(),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.orange,
                  ),
                ),
                focusColor: Colors.orange,
                errorBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.red,
                  ),
                ),
                focusedErrorBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.red,
                  ),
                ),
                errorStyle: TextStyle(
                  color: Colors.red,
                ),
              ),
              validator: (value) {
                const pattern =
                    r'(^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$)';
                final regExp = RegExp(pattern);

                if (value!.isEmpty) {
                  return 'Enter an email';
                } else if (!regExp.hasMatch(value)) {
                  return 'Enter a valid email';
                } else if (value != emailController.text) {
                  return 'Email doesn\'t match';
                } else {
                  return null;
                }
              },
              keyboardType: TextInputType.emailAddress,
              // onSaved: (value) => setState(() => username = value),
            ),
          ],
        ),
        isActive: _currentStep >= 1,
        state: getState(1),
      ),

      // Contact Step
      Step(
          title: _currentStep >= 2
              ? const Text(
                  "Contact",
                  style: TextStyle(
                    color: Colors.orange,
                  ),
                )
              : const Text(
                  "Contact",
                ),
          content: Column(
            children: <Widget>[
              const SizedBox(height: 10),

              // Mobile Number
              IntlPhoneField(
                textInputAction: TextInputAction.next,
                controller: contactController,
                decoration: const InputDecoration(
                  labelText: 'Mobile number',
                  border: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.orange,
                    ),
                  ),
                  focusColor: Colors.orange,
                  errorBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.red,
                    ),
                  ),
                  focusedErrorBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.red,
                    ),
                  ),
                  errorStyle: TextStyle(
                    color: Colors.red,
                  ),
                ),
                initialCountryCode: 'IN',
              ),

              const SizedBox(height: 15),

              // Alternate Contact Number
              IntlPhoneField(
                textInputAction: TextInputAction.done,
                controller: alternateContactController,
                decoration: const InputDecoration(
                  labelText: 'Mobile number',
                  border: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.orange,
                    ),
                  ),
                  focusColor: Colors.orange,
                  errorBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.red,
                    ),
                  ),
                  focusedErrorBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.red,
                    ),
                  ),
                  errorStyle: TextStyle(
                    color: Colors.red,
                  ),
                ),
                initialCountryCode: 'IN',
              ),
            ],
          ),
          isActive: _currentStep >= 2,
          state: getState(2)),

      // Address Step
      Step(
        title: _currentStep >= 3
            ? const Text(
                "Address",
                style: TextStyle(
                  color: Colors.orange,
                ),
              )
            : const Text(
                "Address",
              ),
        content: Column(
          children: <Widget>[
            const SizedBox(height: 10),

            // Primary Address
            TextFormField(
              textInputAction: TextInputAction.next,
              controller: primaryAddressController,
              decoration: const InputDecoration(
                labelText: 'Primary Address',
                border: OutlineInputBorder(),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.orange,
                  ),
                ),
                focusColor: Colors.orange,
                errorBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.red,
                  ),
                ),
                focusedErrorBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.red,
                  ),
                ),
                errorStyle: TextStyle(
                  color: Colors.red,
                ),
              ),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Address is empty';
                } else {
                  return null;
                }
              },
              keyboardType: TextInputType.text,
              // onSaved: (value) => setState(() => username = value),
            ),

            const SizedBox(height: 10),

            // Secondary Address
            TextFormField(
              textInputAction: TextInputAction.done,
              controller: alternateAddressController,
              decoration: const InputDecoration(
                labelText: 'Alternate Address',
                border: OutlineInputBorder(),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.orange,
                  ),
                ),
                focusColor: Colors.orange,
                errorBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.red,
                  ),
                ),
                focusedErrorBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.red,
                  ),
                ),
                errorStyle: TextStyle(
                  color: Colors.red,
                ),
              ),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Address is empty';
                } else {
                  return null;
                }
              },
              keyboardType: TextInputType.text,
              // onSaved: (value) => setState(() => username = value),
            ),
          ],
        ),
        isActive: _currentStep >= 3,
        state: getState(3),
      ),

      // 12th Grades Step
      Step(
        title: _currentStep >= 4
            ? const Text(
                "12th Grades",
                style: TextStyle(
                  color: Colors.orange,
                ),
              )
            : const Text(
                "12th Grades",
              ),
        content: Column(
          children: <Widget>[
            const SizedBox(height: 10),

            // Percentage
            TextFormField(
              textInputAction: TextInputAction.done,
              controller: percentageController,
              obscureText: false,
              decoration: const InputDecoration(
                labelText: '12th Percentage',
                border: OutlineInputBorder(),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.orange,
                  ),
                ),
                focusColor: Colors.orange,
                errorBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.red,
                  ),
                ),
                focusedErrorBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.red,
                  ),
                ),
                errorStyle: TextStyle(
                  color: Colors.red,
                ),
              ),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Enter correct percentage';
                } else {
                  return null;
                }
              },
              keyboardType: TextInputType.text,
              // onSaved: (value) => setState(() => username = value),
            ),
          ],
        ),
        isActive: _currentStep >= 4,
        state: getState(4),
      ),
    ];

    return _steps;
  }

  StepState getState(int stepNumber) {
    if (_currentStep == stepNumber) {
      return StepState.editing;
    } else if (_currentStep > stepNumber) {
      return StepState.complete;
    } else {
      return StepState.indexed;
    }
  }
}

class _DataErrorPopupCard extends StatelessWidget {
  const _DataErrorPopupCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: "Data_error_popup",
      child: Container(
        width: 0.90.sw,
        height: 0.65.sh,
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.orange.withOpacity(0.4),
              blurRadius: 25.0,
              spreadRadius: 2.0,
              offset: const Offset(
                10.0,
                10.0,
              ),
            ),
          ],
        ),
        child: Material(
          color: Colors.white,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 220,
                width: 200,
                child: IconButton(
                  icon: SvgPicture.asset(
                    "assets/icons/form_error.svg",
                  ),
                  onPressed: () {},
                  splashColor: Colors.transparent,
                ),
              ),
              Center(
                child: Text(
                  "E r r o r !",
                  style: TextStyle(
                    decoration: TextDecoration.none,
                    fontWeight: FontWeight.bold,
                    fontSize: 20.sp,
                    color: Colors.black,
                  ),
                ),
              ),
              const SizedBox(height: 15),
              Center(
                child: Text(
                  "Entered Data is not correct.",
                  style: TextStyle(
                    decoration: TextDecoration.none,
                    fontSize: 13.sp,
                    color: Colors.black,
                  ),
                ),
              ),
              const SizedBox(height: 15),
              Center(
                child: Text(
                  "Please check it again.",
                  style: TextStyle(
                    decoration: TextDecoration.none,
                    fontSize: 13.sp,
                    color: Colors.black,
                  ),
                ),
              ),
              const SizedBox(height: 45),
              // Button
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  GestureDetector(
                    onTap: () {
                      Get.back();
                    },
                    child: Container(
                      height: 34,
                      width: MediaQuery.of(context).size.width * 0.35,
                      decoration: const BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                      ),
                      child: const Center(
                        child: Text(
                          "Okay",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _ConfirmDataPopupCard extends StatelessWidget {
  const _ConfirmDataPopupCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: "Confirm_data_popup",
      child: Container(
        width: 0.90.sw,
        height: 0.65.sh,
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.orange.withOpacity(0.4),
                blurRadius: 25.0,
                spreadRadius: 2.0,
                offset: const Offset(
                  10.0,
                  10.0,
                ),
              ),
            ]),
        child: Material(
          color: Colors.white,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 220,
                width: 200,
                child: IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset(
                    "assets/icons/form_error.svg",
                  ),
                ),
              ),
              Center(
                child: Text(
                  "Confirm !",
                  style: TextStyle(
                    decoration: TextDecoration.none,
                    fontWeight: FontWeight.bold,
                    fontSize: 20.sp,
                    color: Colors.black,
                  ),
                ),
              ),
              const SizedBox(height: 15),
              Center(
                child: Text(
                  "Are You Confirm With Your Data?",
                  style: TextStyle(
                    decoration: TextDecoration.none,
                    fontSize: 13.sp,
                    color: Colors.black,
                  ),
                ),
              ),
              const SizedBox(height: 45),
              // Button
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  GestureDetector(
                    onTap: () => Get.back(),
                    child: Container(
                      height: 34,
                      width: MediaQuery.of(context).size.width * 0.35,
                      decoration: const BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                      ),
                      child: const Center(
                        child: Text(
                          "Revise",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  GestureDetector(
                    // onTap: ,
                    child: Container(
                      height: 34,
                      width: MediaQuery.of(context).size.width * 0.35,
                      decoration: const BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                      ),
                      child: const Center(
                        child: Text(
                          "Confirm",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
