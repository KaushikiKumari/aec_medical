import 'package:aec_medical/pages/dashboard/drawer/total_health/counselling_detail_page.dart';
import 'package:aec_medical/utils/colors.dart';
import 'package:aec_medical/utils/strings.dart';
import 'package:aec_medical/utils/strings_style.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CounsellingPage extends StatefulWidget {
  const CounsellingPage({Key? key}) : super(key: key);

  @override
  _CounsellingPageState createState() => _CounsellingPageState();
}

class _CounsellingPageState extends State<CounsellingPage> {
  var CategoryName = [
    "For Relationship",
    "Kids related issues",
    "Pregnency",
    "Psychological",
    "Motivational",
    "Loneliness",
    "Suicidal Thoughts",
    "Feeligs of anger",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.backgroundColor,
        appBar: AppBar(
          backgroundColor: AppColors.appbarbackgroundColor,
          centerTitle: true,
          title: Text(
            Strings.COUNSELLINGTITLE,
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
              _counsellingcategory(),
              SizedBox(height: 10),
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

  _counsellingcategory() {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            Strings.COUNSELLINGFOR,
            style: StringsStyle.counsellingforstyle,
          ),
          SizedBox(height: 15),
          GridView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 5.0,
                mainAxisSpacing: 5.0,
                childAspectRatio: 1,
              ),
              itemCount: CategoryName.length,
              itemBuilder: (BuildContext context, index) {
                return Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: InkWell(
                    splashColor: AppColors.appbarbackgroundColor,
                    onTap: () {
                      Get.to(CounsellingDetailPage(),
                          transition: Transition.rightToLeftWithFade,
                          duration: Duration(milliseconds: 600));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        color: Colors.orange.shade50,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.4),
                            spreadRadius: 1,
                            blurRadius: 3,
                            offset: Offset(0, 3),
                          ),
                        ],
                      ),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                                height: 50, width: 50, color: Colors.white),
                            SizedBox(height: 5),
                            Text(CategoryName[index],
                                style: TextStyle(fontSize: 12))
                          ]),
                    ),
                  ),
                );
              }),
        ],
      ),
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
                                            fontWeight: FontWeight.w500)),
                                    SizedBox(height: 3),
                                    Text("Curated Health Tips",
                                        style: TextStyle(
                                            color:
                                                AppColors.appbarbackgroundColor,
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500)),
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
