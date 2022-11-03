import 'package:aec_medical/custom/custom_button.dart';
import 'package:aec_medical/pages/dashboard/drawer/total_health/couselling_page.dart';
import 'package:aec_medical/utils/colors.dart';
import 'package:aec_medical/utils/strings.dart';
import 'package:aec_medical/utils/strings_style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TotalHealthPage extends StatefulWidget {
  const TotalHealthPage({Key? key}) : super(key: key);

  @override
  _TotalHealthPageState createState() => _TotalHealthPageState();
}

class _TotalHealthPageState extends State<TotalHealthPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
        backgroundColor: AppColors.appbarbackgroundColor,
        centerTitle: true,
        title: Text(
          Strings.TOTALHEALTHTITLE,
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
          children: [
            _totalhealthcard(),
            SizedBox(
              height: 100,
            ),
            _counsellingbutton(),
            SizedBox(
              height: 50,
            ),
            _coursesbutton(),
          ],
        ),
      )),
    );
  }

  _totalhealthcard() {
    return Stack(
      children: [
        SizedBox(
          width: Get.width,
          child: Card(
            elevation: 5,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5.0),
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    children: [
                      SizedBox(height: 5),
                      Text(
                        Strings.CARDTEXT1,
                        style: StringsStyle.cardtext1style,
                      ),
                      SizedBox(height: 10),
                      Text(
                        Strings.CARDTEXT2,
                        style: StringsStyle.cardtext2style,
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Row(
                    //    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Container(
                              height: 100,
                              width: 100,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          "assets/images/healthcardimage1.png")))),
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
                                      Colors.red.shade500,
                                      AppColors.redColor,
                                    ]),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  height: 40,
                                  width: 160,
                                  child: Center(
                                    child: Center(
                                      child: Text("Know Total Health Concept",
                                          style: TextStyle(
                                            color: AppColors.whitetextColor,
                                            fontSize: 11,
                                          )),
                                    ),
                                  )))
                        ],
                      ),
                      Column(
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
                                      Colors.red.shade500,
                                      AppColors.redColor,
                                    ]),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  height: 40,
                                  width: 160,
                                  child: Center(
                                    child: Center(
                                      child: Text("Know Total Health Score",
                                          style: TextStyle(
                                            color: AppColors.whitetextColor,
                                            fontSize: 11,
                                          )),
                                    ),
                                  )))
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 15),
              ],
            ),
          ),
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

  _counsellingbutton() {
    // ignore: deprecated_member_use
    return FlatButton(
        onPressed: () {
          Get.to(CounsellingPage(),
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
                Colors.black26,
                Colors.black87,
              ]),
              borderRadius: BorderRadius.circular(10),
            ),
            height: 50,
            width: Get.width / 1.3,
            child: Center(
              child: Center(
                child: Text("Counselling",
                    style: TextStyle(
                      color: AppColors.whitetextColor,
                      fontSize: 15,
                      letterSpacing: 0.5,
                    )),
              ),
            )));
  }

  _coursesbutton() {
    return FlatButton(
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
            height: 50,
            width: Get.width / 1.3,
            child: Center(
              child: Center(
                child: Text("Courses",
                    style: TextStyle(
                      color: AppColors.whitetextColor,
                      fontSize: 15,
                      letterSpacing: 0.5,
                    )),
              ),
            )));
  }
}
