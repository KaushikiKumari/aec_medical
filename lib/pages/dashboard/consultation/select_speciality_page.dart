import 'package:aec_medical/custom/custom_button.dart';
import 'package:aec_medical/pages/dashboard/consultation/fill_personal_details_page.dart';
import 'package:aec_medical/pages/dashboard/consultation/select_diseases_page.dart';
import 'package:aec_medical/pages/dashboard/consultation/select_specialist_page.dart';
import 'package:aec_medical/utils/colors.dart';
import 'package:aec_medical/utils/strings.dart';
import 'package:aec_medical/utils/strings_style.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SelectSpecialityPage extends StatefulWidget {
  const SelectSpecialityPage({Key? key}) : super(key: key);

  @override
  _SelectSpecialityPageState createState() => _SelectSpecialityPageState();
}

class _SelectSpecialityPageState extends State<SelectSpecialityPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.backgroundColor,
        appBar: AppBar(
          backgroundColor: AppColors.appbarbackgroundColor,
          centerTitle: true,
          title: Text(
            Strings.SELECTSPECIALITYTITLE,
            style: StringsStyle.pagetitlestyle,
          ),
          leading: IconButton(
              onPressed: () {
                Get.back();
              },
              icon: Icon(Icons.keyboard_arrow_left_outlined, size: 30)),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
              child: Center(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _slider(),
                  SizedBox(
                    height: 20,
                  ),
                  _consultwithgeneralphysician(),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    Strings.HEADING,
                    style: StringsStyle.heading,
                  ),
                  SizedBox(height: 5),
                  Text(
                    Strings.SUBHEADING,
                    style: StringsStyle.subheading,
                  ),
                  SizedBox(height: 10),
                  _symptoms(),
                  SizedBox(height: 20),
                  _offers(),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    Strings.HEADING1,
                    style: StringsStyle.heading,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  _symptoms2(),
                  _nextbutton(),
                ],
              ),
            ),
          )),
        ));
  }

  _slider() {
    return Padding(
      padding: const EdgeInsets.all(0.0),
      child: Container(
        height: Get.height / 4,
        width: Get.width / 1,
        child: Carousel(
          boxFit: BoxFit.fill,
          images: [
            AssetImage(
              "assets/images/slider2.jpg",
            ),
            AssetImage(
              "assets/images/slider2.jpg",
            ),
            AssetImage(
              "assets/images/slider2.jpg",
            )
          ],
          overlayShadowColors: Colors.white,
          dotSize: 5.0,

          dotSpacing: 15.0,
          dotIncreasedColor: AppColors.appbarbackgroundColor,
          dotColor: AppColors.appbarbackgroundColor,
          indicatorBgPadding: 5.0,
          dotBgColor: Colors.transparent,
          //dotVerticalPadding: 5.0,
          dotPosition: DotPosition.bottomCenter,
        ),
      ),
    );
  }

  _consultwithgeneralphysician() {
    return Card(
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
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Consult with",
                      style: TextStyle(
                        color: AppColors.appbarbackgroundColor,
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(height: 3),
                    Text(
                      "general physician/MBBS",
                      style: TextStyle(
                        color: AppColors.appbarbackgroundColor,
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
              CircleAvatar(
                  radius: 35,
                  backgroundColor: Colors.white,
                  child: Container(
                      decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/physician.png"),
                      fit: BoxFit.cover,
                    ),
                  ))),
            ],
          ),
        ));
  }

  _symptoms() {
    return Container(
      child: Column(
        children: [
          Container(
              width: Get.width / 1,
              height: Get.height / 5,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  // shrinkWrap: true,
                  // physics: NeverScrollableScrollPhysics(),
                  primary: true,
                  itemCount: 3,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: InkWell(
                        onTap: () {},
                        child: Container(
                          width: Get.width / 3.5,
                          height: Get.height / 5,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.4),
                                spreadRadius: 1,
                                blurRadius: 3,
                                offset: Offset(0, 3),
                              ),
                            ],
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              children: [
                                CircleAvatar(
                                    radius: 35,
                                    backgroundColor: Colors.white,
                                    child: Container(
                                        decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage(
                                            "assets/images/physician.png"),
                                        fit: BoxFit.cover,
                                      ),
                                    ))),
                                SizedBox(height: 10),
                                Text(
                                  "Fever",
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  })),
          SizedBox(height: 15),
          // ignore: deprecated_member_use
          FlatButton(
              onPressed: () {
                Get.to(SelectDiseasesPage(),
                    transition: Transition.rightToLeftWithFade,
                    duration: Duration(milliseconds: 600));
              },
              child: Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.4),
                        spreadRadius: 1,
                        blurRadius: 3,
                        offset: Offset(0, 3),
                      ),
                    ],
                    gradient: LinearGradient(colors: [
                      Colors.white,
                      Colors.white70,
                    ]),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  height: 50,
                  width: Get.width,
                  child: Center(
                      child: Text("View All Symptoms",
                          style: TextStyle(
                            color: AppColors.appbarbackgroundColor,
                            fontSize: 15,
                            letterSpacing: 0.5,
                          ))))),
        ],
      ),
    );
  }

  _offers() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(Strings.OFFER, style: StringsStyle.offerstyle),
        SizedBox(height: 10),
        Container(
            width: Get.width / 1,
            height: Get.height / 5,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                // shrinkWrap: true,
                // physics: NeverScrollableScrollPhysics(),
                primary: true,
                itemCount: 3,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: InkWell(
                      onTap: () {},
                      child: Container(
                        width: Get.width / 1.5,
                        height: Get.height / 5,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.4),
                              spreadRadius: 1,
                              blurRadius: 3,
                              offset: Offset(0, 3),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                })),
      ],
    );
  }

  _symptoms2() {
    return Container(
      child: Column(
        children: [
          Container(
              width: Get.width / 1,
              height: Get.height / 5,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  // shrinkWrap: true,
                  // physics: NeverScrollableScrollPhysics(),
                  primary: true,
                  itemCount: 3,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: InkWell(
                        onTap: () {},
                        child: Container(
                          width: Get.width / 3.5,
                          height: Get.height / 5,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.4),
                                spreadRadius: 1,
                                blurRadius: 3,
                                offset: Offset(0, 3),
                              ),
                            ],
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              children: [
                                CircleAvatar(
                                    radius: 35,
                                    backgroundColor: Colors.white,
                                    child: Container(
                                        decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage(
                                            "assets/images/physician.png"),
                                        fit: BoxFit.cover,
                                      ),
                                    ))),
                                SizedBox(height: 10),
                                Text(
                                  "Fever",
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  })),

          // ignore: deprecated_member_use
          FlatButton(
              onPressed: () {
                Get.to(SelectSpecialistPage(),
                    transition: Transition.rightToLeftWithFade,
                    duration: Duration(milliseconds: 600));
              },
              child: Container(
                  width: Get.width,
                  child: Align(
                      alignment: Alignment.bottomRight,
                      child: Text("More",
                          style: TextStyle(
                            color: AppColors.appbarbackgroundColor,
                            fontSize: 15,
                            letterSpacing: 0.5,
                          ))))),
        ],
      ),
    );
  }

  _nextbutton() {
    return Align(
      alignment: Alignment.bottomRight,
      // ignore: deprecated_member_use
      child: FlatButton(
          onPressed: () {
            Get.to(FillPersonalDetailPage(),
                transition: Transition.rightToLeftWithFade,
                duration: Duration(milliseconds: 600));
          },
          child:
              CustomButton(text1: "", text2: "Next", width: 150, height: 50)),
    );
  }
}
