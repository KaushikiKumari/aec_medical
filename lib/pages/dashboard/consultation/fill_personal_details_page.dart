import 'package:aec_medical/custom/custom_button.dart';
import 'package:aec_medical/pages/dashboard/consultation/find_doctors_page.dart';
import 'package:aec_medical/utils/colors.dart';
import 'package:aec_medical/utils/strings.dart';
import 'package:aec_medical/utils/strings_style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FillPersonalDetailPage extends StatefulWidget {
  const FillPersonalDetailPage({Key? key}) : super(key: key);

  @override
  _FillPersonalDetailPageState createState() => _FillPersonalDetailPageState();
}

class _FillPersonalDetailPageState extends State<FillPersonalDetailPage> {
  var Patient = [
    "Myself",
    "Father",
    "Mother",
    "Wife",
    "Husband",
    "Baby",
    "Relatives",
  ];
  int _index = 0;
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.backgroundColor,
        appBar: AppBar(
          backgroundColor: AppColors.appbarbackgroundColor,
          centerTitle: true,
          title: Text(
            "Fill personal details",
            style: StringsStyle.pagetitlestyle,
          ),
          leading: IconButton(
              onPressed: () {
                Get.back();
              },
              icon: Icon(Icons.keyboard_arrow_left_outlined, size: 30)),
        ),
        body: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _headingcard(),
                _dermotology(),
                _choosepatient(),
                _patientnamefield(),
                _patientageandgenderfield(),
                _patientlocation(),
                _nextbutton(),
              ],
            ),
          ),
        ));
  }

  _headingcard() {
    return Stack(
      children: [
        SizedBox(
          width: Get.width,
          child: Card(
              elevation: 5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0),
              ),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(15, 80, 15, 50),
                child: Row(
                  children: [
                    Column(
                      children: [
                        Text("Get online\nconsultation\nat your",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: AppColors.appbarbackgroundColor)),
                        SizedBox(height: 5),
                        Text("#Home",
                            style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: AppColors.appbarbackgroundColor)),
                      ],
                    ),
                    Expanded(
                      child: Container(
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image:
                                      AssetImage("assets/images/register.png"),
                                  fit: BoxFit.cover))),
                    ),
                  ],
                ),
              )),
        ),
        Positioned(
          top: 5,
          left: 5,
          child: Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/logo.png")))),
        ),
      ],
    );
  }

  _dermotology() {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          elevation: 5,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Text(
                    "Dermatology",
                    style: TextStyle(
                      color: AppColors.darktextColor,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                CircleAvatar(
                    radius: 35,
                    backgroundColor: Colors.white,
                    child: Container(
                        decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/dermotology.png"),
                        fit: BoxFit.cover,
                      ),
                    ))),
              ],
            ),
          )),
    );
  }

  _choosepatient() {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            " Who is the patient?",
            style: StringsStyle.normaltextstyle,
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 50,
            width: Get.width,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: Patient.length,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: InkWell(
                        splashColor: AppColors.appbarbackgroundColor,
                        onTap: () {
                          setState(() {
                            _index = index;
                          });
                        },
                        child: Container(
                          height: 50,
                          width: 90,
                          decoration: BoxDecoration(
                            color: _index == index
                                ? AppColors.redColor
                                : AppColors.whitetextColor,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                                color: _index == index
                                    ? AppColors.whitetextColor
                                    : AppColors.appbarbackgroundColor),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey.shade300,
                                  spreadRadius: 1,
                                  blurRadius: 5,
                                  offset: Offset(3, 3))
                            ],
                          ),
                          child: Center(
                            child: Text(Patient[index],
                                style: TextStyle(
                                    color: _index == index
                                        ? AppColors.whitetextColor
                                        : AppColors.appbarbackgroundColor)),
                          ),
                        ),
                      ));
                }),
          ),
        ],
      ),
    );
  }

  _patientnamefield() {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            " Patient Name",
            style: StringsStyle.normaltextstyle,
          ),
          SizedBox(
            height: 10,
          ),
          Container(
              height: 50,
              width: Get.width,
              decoration: BoxDecoration(
                color: AppColors.whitetextColor,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: AppColors.appbarbackgroundColor),
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey.shade300,
                      spreadRadius: 1,
                      blurRadius: 5,
                      offset: Offset(3, 3))
                ],
              ),
              child: TextFormField(
                keyboardType: TextInputType.text,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                textAlignVertical: TextAlignVertical.bottom,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.white, width: 1),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.white, width: 1),
                  ),
                  errorBorder: OutlineInputBorder(
                      borderSide:
                          new BorderSide(color: Colors.transparent, width: 1),
                      borderRadius: BorderRadius.circular(10)),
                  focusedErrorBorder: OutlineInputBorder(
                      borderSide:
                          new BorderSide(color: Colors.transparent, width: 1),
                      borderRadius: BorderRadius.circular(10)),
                  border: OutlineInputBorder(
                      borderSide:
                          new BorderSide(color: Colors.yellow, width: 1),
                      borderRadius: BorderRadius.circular(10)),
                  hintText: "  Patient Name",
                ),
                validator: (value) {
                  if (value!.trim().isEmpty) {
                    return "Please, enter the patient name";
                  }

                  return null;
                },
              )),
        ],
      ),
    );
  }

  _patientageandgenderfield() {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                " Patient Age",
                style: StringsStyle.normaltextstyle,
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                  height: 50,
                  width: Get.width / 2.5,
                  decoration: BoxDecoration(
                    color: AppColors.whitetextColor,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: AppColors.appbarbackgroundColor),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.shade300,
                          spreadRadius: 1,
                          blurRadius: 5,
                          offset: Offset(3, 3))
                    ],
                  ),
                  child: TextFormField(
                    keyboardType: TextInputType.text,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    textAlignVertical: TextAlignVertical.bottom,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.white, width: 1),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.white, width: 1),
                      ),
                      errorBorder: OutlineInputBorder(
                          borderSide: new BorderSide(
                              color: Colors.transparent, width: 1),
                          borderRadius: BorderRadius.circular(10)),
                      focusedErrorBorder: OutlineInputBorder(
                          borderSide: new BorderSide(
                              color: Colors.transparent, width: 1),
                          borderRadius: BorderRadius.circular(10)),
                      border: OutlineInputBorder(
                          borderSide:
                              new BorderSide(color: Colors.yellow, width: 1),
                          borderRadius: BorderRadius.circular(10)),
                      hintText: "  0 years",
                      suffixIcon: PopupMenuButton<String>(
                          onSelected: (value) {
                            // Get.snackbar(
                            //   "Changes saved with success",
                            //   "just now",
                            //   snackPosition: SnackPosition.BOTTOM,
                            //   colorText: AppColors.lighttextColor,
                            //   backgroundColor: AppColors.backgroundColor,
                            //   boxShadows: [
                            //     BoxShadow(
                            //       blurRadius: 1,
                            //       color: Colors.grey.shade200,
                            //       offset: Offset(0, 2),
                            //       spreadRadius: 2,
                            //     ),
                            //   ],
                            //   margin: EdgeInsets.all(15),
                            // );
                          },
                          icon: Icon(
                            Icons.keyboard_arrow_down_outlined,
                            color: AppColors.appbarbackgroundColor,
                          ),
                          itemBuilder: (BuildContext context) {
                            return [
                              PopupMenuItem(
                                child: Text("0-3 month"),
                                value: "",
                              ),
                              PopupMenuItem(
                                child: Text(
                                  "3-6 month",
                                ),
                                value: "",
                              ),
                              PopupMenuItem(
                                child: Text(
                                  "6-9 month",
                                ),
                                value: "",
                              ),
                              PopupMenuItem(
                                child: Text(
                                  "9-12 month",
                                ),
                                value: "",
                              ),
                              PopupMenuItem(
                                child: Text(
                                  "1-2 month",
                                ),
                                value: "",
                              ),
                              PopupMenuItem(
                                child: Text(
                                  "2-3 month",
                                ),
                                value: "",
                              ),
                            ];
                          }),
                      hintStyle: TextStyle(
                        color: AppColors.lighttextColor,
                        fontSize: 14,
                      ),
                    ),
                    validator: (value) {
                      if (value!.trim().isEmpty) {
                        return "Please, fill this!";
                      }

                      return null;
                    },
                  )),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                " Patient Gender",
                style: StringsStyle.normaltextstyle,
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                  height: 50,
                  width: Get.width / 2.5,
                  decoration: BoxDecoration(
                    color: AppColors.whitetextColor,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: AppColors.appbarbackgroundColor),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.shade300,
                          spreadRadius: 1,
                          blurRadius: 5,
                          offset: Offset(3, 3))
                    ],
                  ),
                  child: TextFormField(
                    keyboardType: TextInputType.text,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    textAlignVertical: TextAlignVertical.bottom,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.white, width: 1),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.white, width: 1),
                      ),
                      errorBorder: OutlineInputBorder(
                          borderSide: new BorderSide(
                              color: Colors.transparent, width: 1),
                          borderRadius: BorderRadius.circular(10)),
                      focusedErrorBorder: OutlineInputBorder(
                          borderSide: new BorderSide(
                              color: Colors.transparent, width: 1),
                          borderRadius: BorderRadius.circular(10)),
                      border: OutlineInputBorder(
                          borderSide:
                              new BorderSide(color: Colors.yellow, width: 1),
                          borderRadius: BorderRadius.circular(10)),
                      hintText: "  Male",
                      hintStyle: TextStyle(
                        color: AppColors.lighttextColor,
                        fontSize: 14,
                      ),
                      suffixIcon: PopupMenuButton<String>(
                          onSelected: (value) {
                            // Get.snackbar(
                            //   "Changes saved with success",
                            //   "just now",
                            //   snackPosition: SnackPosition.BOTTOM,
                            //   colorText: AppColors.lighttextColor,
                            //   backgroundColor: AppColors.backgroundColor,
                            //   boxShadows: [
                            //     BoxShadow(
                            //       blurRadius: 1,
                            //       color: Colors.grey.shade200,
                            //       offset: Offset(0, 2),
                            //       spreadRadius: 2,
                            //     ),
                            //   ],
                            //   margin: EdgeInsets.all(15),
                            // );
                          },
                          icon: Icon(
                            Icons.keyboard_arrow_down_outlined,
                            color: AppColors.appbarbackgroundColor,
                          ),
                          itemBuilder: (BuildContext context) {
                            return [
                              PopupMenuItem(
                                child: Text("Male"),
                                value: "Male",
                              ),
                              PopupMenuItem(
                                child: Text(
                                  "Female",
                                ),
                                value: "Female",
                              ),
                            ];
                          }),
                    ),
                    validator: (value) {
                      if (value!.trim().isEmpty) {
                        return "Please, fill this!";
                      }

                      return null;
                    },
                  )),
            ],
          ),
        ],
      ),
    );
  }

  _patientlocation() {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            " Patient Location",
            style: StringsStyle.normaltextstyle,
          ),
          SizedBox(
            height: 10,
          ),
          Container(
              height: 50,
              width: Get.width,
              decoration: BoxDecoration(
                color: AppColors.whitetextColor,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: AppColors.appbarbackgroundColor),
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey.shade300,
                      spreadRadius: 1,
                      blurRadius: 5,
                      offset: Offset(3, 3))
                ],
              ),
              child: TextFormField(
                keyboardType: TextInputType.text,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                textAlignVertical: TextAlignVertical.bottom,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.white, width: 1),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.white, width: 1),
                  ),
                  errorBorder: OutlineInputBorder(
                      borderSide:
                          new BorderSide(color: Colors.transparent, width: 1),
                      borderRadius: BorderRadius.circular(10)),
                  focusedErrorBorder: OutlineInputBorder(
                      borderSide:
                          new BorderSide(color: Colors.transparent, width: 1),
                      borderRadius: BorderRadius.circular(10)),
                  border: OutlineInputBorder(
                      borderSide:
                          new BorderSide(color: Colors.yellow, width: 1),
                      borderRadius: BorderRadius.circular(10)),
                  hintText: "  Patient Location",
                ),
                validator: (value) {
                  if (value!.trim().isEmpty) {
                    return "Please, enter the patient location";
                  }

                  return null;
                },
              )),
        ],
      ),
    );
  }

  _nextbutton() {
    // ignore: deprecated_member_use
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Align(
        alignment: Alignment.bottomRight,
        child: FlatButton(
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                Get.off(FindDoctorsPage(),
                    transition: Transition.rightToLeftWithFade,
                    duration: Duration(milliseconds: 600));
              }
            },
            child:
                CustomButton(text1: "", text2: "Next", width: 150, height: 50)),
      ),
    );
  }
}
