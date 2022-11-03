import 'package:aec_medical/custom/custom_button.dart';
import 'package:aec_medical/pages/dashboard/drawer/total_health/register_page.dart';
import 'package:aec_medical/utils/colors.dart';
import 'package:aec_medical/utils/strings.dart';
import 'package:aec_medical/utils/strings_style.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CounsellingDetailPage extends StatefulWidget {
  const CounsellingDetailPage({Key? key}) : super(key: key);

  @override
  _CounsellingDetailPageState createState() => _CounsellingDetailPageState();
}

class _CounsellingDetailPageState extends State<CounsellingDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.backgroundColor,
        appBar: AppBar(
          backgroundColor: AppColors.appbarbackgroundColor,
          centerTitle: true,
          title: Text(
            "Title",
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
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
              _caroselslider(),
              SizedBox(height: 10),
              _overview(),
              _healthblog(),
            ]))));
  }

  _caroselslider() {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: CarouselSlider(
        items: [
          //1st Image of Slider
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              border: Border.all(color: AppColors.redColor),
              color: AppColors.whitetextColor,
            ),
            child: Center(
                child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                    "assets/images/healthcardimage2.png")))),
                    SizedBox(
                      height: 10,
                    ),
                    // ignore: deprecated_member_use
                    FlatButton(
                        onPressed: () {},
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
                                Colors.black26,
                                Colors.black87,
                              ]),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            height: 40,
                            width: 100,
                            child: Center(
                              child: Center(
                                child: Text("Check Now",
                                    style: TextStyle(
                                      color: AppColors.whitetextColor,
                                      fontSize: 12,
                                      letterSpacing: 0.3,
                                    )),
                              ),
                            )))
                  ],
                ),
                Text("\"Track your Health\nStatus with Total\nHealth Score.\"",
                    style: TextStyle(
                        color: AppColors.appbarbackgroundColor,
                        fontSize: 17,
                        fontWeight: FontWeight.bold))
              ],
            )),
          ),

          //2nd Image of Slider
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              border: Border.all(color: AppColors.redColor),
              color: AppColors.whitetextColor,
            ),
            child: Center(
                child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                    "assets/images/healthcardimage2.png")))),
                    SizedBox(
                      height: 10,
                    ),
                    // ignore: deprecated_member_use
                    FlatButton(
                        onPressed: () {},
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
                                Colors.black26,
                                Colors.black87,
                              ]),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            height: 40,
                            width: 100,
                            child: Center(
                              child: Center(
                                child: Text("Check Now",
                                    style: TextStyle(
                                      color: AppColors.whitetextColor,
                                      fontSize: 12,
                                      letterSpacing: 0.3,
                                    )),
                              ),
                            )))
                  ],
                ),
                Text("\"Track your Health\nStatus with Total\nHealth Score.\"",
                    style: TextStyle(
                        color: AppColors.appbarbackgroundColor,
                        fontSize: 17,
                        fontWeight: FontWeight.bold))
              ],
            )),
          ),
          //3rd Image of Slider
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              border: Border.all(color: AppColors.redColor),
              color: AppColors.whitetextColor,
            ),
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                      "assets/images/healthcardimage2.png")))),
                      SizedBox(
                        height: 10,
                      ),
                      // ignore: deprecated_member_use
                      FlatButton(
                          onPressed: () {},
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
                                  Colors.black26,
                                  Colors.black87,
                                ]),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              height: 40,
                              width: 100,
                              child: Center(
                                child: Center(
                                  child: Text("Check Now",
                                      style: TextStyle(
                                        color: AppColors.whitetextColor,
                                        fontSize: 12,
                                        letterSpacing: 0.3,
                                      )),
                                ),
                              )))
                    ],
                  ),
                  Text(
                      "\"Track your Health\nStatus with Total\nHealth Score.\"",
                      style: TextStyle(
                          color: AppColors.appbarbackgroundColor,
                          fontSize: 17,
                          fontWeight: FontWeight.bold))
                ],
              ),
            ),
          ),
        ],

        //Slider Container properties
        options: CarouselOptions(
          height: 200,
          enlargeCenterPage: true,
          autoPlay: true,
          autoPlayCurve: Curves.fastOutSlowIn,
          enableInfiniteScroll: true,
          autoPlayAnimationDuration: Duration(milliseconds: 800),
          viewportFraction: 0.8,
        ),
      ),
    );
  }

  _overview() {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(children: [
        Text("Overview",
            style: TextStyle(
                color: AppColors.darktextColor,
                fontSize: 15,
                fontWeight: FontWeight.bold)),
        SizedBox(height: 10),
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Row(
            children: [
              Text("Date",
                  style: TextStyle(
                      color: AppColors.darktextColor,
                      fontSize: 12,
                      fontWeight: FontWeight.bold)),
              Text("  15 JUN 2020",
                  style: TextStyle(
                    color: AppColors.darktextColor,
                    fontSize: 12,
                  )),
            ],
          ),
          Row(
            children: [
              Text("Time",
                  style: TextStyle(
                      color: AppColors.darktextColor,
                      fontSize: 12,
                      fontWeight: FontWeight.bold)),
              Text("  1.0 pm",
                  style: TextStyle(
                    color: AppColors.darktextColor,
                    fontSize: 12,
                  )),
            ],
          )
        ]),
        SizedBox(height: 5),
        Text(
            "Huber and colleagues suggest that the problem with the WHO definition is the absoluteness of ‘complete’ wellbeing. This, they suggest, inadvertently contributes to the ‘over-medicalisation’ of the population. It allows a platform for industry, medical technologies and professionals to redefine our health status. ",
            style: TextStyle(
              fontSize: 12,
              color: AppColors.darktextColor,
            )),
        SizedBox(height: 5),
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Row(
            children: [
              Text("Duration",
                  style: TextStyle(
                      color: AppColors.darktextColor,
                      fontSize: 12,
                      fontWeight: FontWeight.bold)),
              Text("  2 hours",
                  style: TextStyle(
                    color: AppColors.darktextColor,
                    fontSize: 12,
                  )),
            ],
          ),
          Row(
            children: [
              Text("\$",
                  style: TextStyle(
                      color: AppColors.darktextColor,
                      fontSize: 12,
                      fontWeight: FontWeight.bold)),
              Text("  299 + tax",
                  style: TextStyle(
                    color: AppColors.darktextColor,
                    fontSize: 12,
                  )),
            ],
          ),
        ]),
        SizedBox(height: 5),
        Divider(color: Colors.grey),
        SizedBox(height: 15),
        Text("Steps we follow to help you",
            style: TextStyle(
                color: AppColors.darktextColor,
                fontSize: 15,
                fontWeight: FontWeight.bold)),
        SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/images/step1.png")))),
                SizedBox(height: 5),
                Text("    Connect\nwith our expert",
                    style: TextStyle(fontSize: 12))
              ],
            ),
            Text("--------"),
            Column(
              children: [
                Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/images/onboard3.png")))),
                SizedBox(height: 5),
                Text("voice/video calls", style: TextStyle(fontSize: 12))
              ],
            ),
            Text("---------"),
            Column(
              children: [
                Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/images/onboard1.png")))),
                SizedBox(height: 5),
                Text("    Face to face\nsession.",
                    style: TextStyle(fontSize: 12))
              ],
            ),
          ],
        ),
        SizedBox(height: 30),
        FlatButton(
            onPressed: () {
              Get.to(RegisterPage(),
                  transition: Transition.rightToLeftWithFade,
                  duration: Duration(milliseconds: 600));
            },
            child: CustomButton(
                text1: "", text2: "Register", width: Get.width, height: 50))
      ]),
    );
  }

  _healthblog() {
    return Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              Strings.HEALTHBLOG,
              style: StringsStyle.counsellingforstyle,
            ),
            SizedBox(height: 15),
            Container(
              height: Get.height / 2,
              width: Get.width / 1,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  primary: true,
                  itemCount: 3,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Container(
                        height: Get.height / 2,
                        width: Get.width / 1.3,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.4),
                              spreadRadius: 1,
                              blurRadius: 3,
                              offset: Offset(0, 3),
                            ),
                          ],
                          color: AppColors.whitetextColor,
                        ),
                        child: Column(children: [
                          Expanded(
                            child: Container(
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                            "assets/images/motivationimage.jpg"),
                                        fit: BoxFit.cover))),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(height: 5),
                                  Text("5 Foods To Recover Your Energy",
                                      style: TextStyle(
                                          color:
                                              AppColors.appbarbackgroundColor,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold)),
                                  SizedBox(height: 8),
                                  Text(
                                      "Huber and colleagues suggest that the problem with the WHO definition is the absoluteness of ‘complete’ wellbeing. This, they suggest, inadvertently contributes to the ‘over-medicalisation’ of the population. It allows a platform for industry, medical technologies and professionals to redefine our health status. ",
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: AppColors.appbarbackgroundColor,
                                      )),
                                ]),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Container(
                                child: Row(children: [
                              CircleAvatar(),
                              SizedBox(width: 10),
                              Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Daily Digest",
                                        style: TextStyle(
                                            color: AppColors.blueColor,
                                            fontSize: 12,
                                            fontWeight: FontWeight.w600)),
                                    SizedBox(height: 3),
                                    Text("Curated Health Tips",
                                        style: TextStyle(
                                            color:
                                                AppColors.appbarbackgroundColor,
                                            fontSize: 12,
                                            fontWeight: FontWeight.w600)),
                                  ])
                            ])),
                          )
                        ]),
                      ),
                    );
                  }),
            ),
          ],
        ));
  }
}
