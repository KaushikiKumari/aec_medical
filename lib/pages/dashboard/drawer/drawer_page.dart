import 'package:aec_medical/pages/dashboard/drawer/account_settings/account_settings_page.dart';
import 'package:aec_medical/pages/dashboard/drawer/help_page.dart';
import 'package:aec_medical/pages/dashboard/drawer/medical_records_page.dart';
import 'package:aec_medical/pages/dashboard/drawer/my_account/my_account_page_from_drawer.dart';
import 'package:aec_medical/pages/dashboard/drawer/my_consultation_page.dart';

import 'package:aec_medical/pages/dashboard/drawer/my_courses_page.dart';
import 'package:aec_medical/pages/dashboard/drawer/offers_page.dart';
import 'package:aec_medical/pages/dashboard/drawer/total_health/total_health_page.dart';
import 'package:aec_medical/utils/colors.dart';
import 'package:aec_medical/utils/strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DrawerPage extends StatefulWidget {
  const DrawerPage({Key? key}) : super(key: key);

  @override
  _DrawerPageState createState() => _DrawerPageState();
}

class _DrawerPageState extends State<DrawerPage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          height: 180,
          color: AppColors.lightblueColor,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 35.0,
                        backgroundColor: Colors.blueGrey,
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Amritesh",
                            style: TextStyle(
                              fontSize: 15.0,
                              fontWeight: FontWeight.w600,
                              color: AppColors.appbarbackgroundColor,
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Lucknow",
                            style: TextStyle(
                              color: AppColors.darktextColor,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                InkWell(
                  splashColor: AppColors.appbarbackgroundColor,
                  onTap: () {
                    Get.back();
                  },
                  child: Container(
                      margin: EdgeInsets.only(bottom: 45),
                      child: Icon(Icons.clear)),
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              InkWell(
                splashColor: AppColors.appbarbackgroundColor,
                onTap: () {
                  Get.back();
                },
                child: ListTile(
                  title: Text(Strings.HOME),
                  horizontalTitleGap: 0,
                  leading: SizedBox(
                      height: 20,
                      width: 20,
                      child: Image.asset("assets/images/home.png")),
                ),
              ),
              InkWell(
                  splashColor: AppColors.appbarbackgroundColor,
                  onTap: () {
                    Get.to(MyConsultationPage(),
                        transition: Transition.rightToLeftWithFade,
                        duration: Duration(milliseconds: 600));
                  },
                  child: ListTile(
                    title: Text(Strings.MY_CONSULTATION),
                    horizontalTitleGap: 0,
                    leading: SizedBox(
                        height: 20,
                        width: 20,
                        child:
                            Image.asset("assets/images/my_consultation.png")),
                  )),
              InkWell(
                  splashColor: AppColors.appbarbackgroundColor,
                  onTap: () {
                    Get.to(MedicalRecordsPage(),
                        transition: Transition.rightToLeftWithFade,
                        duration: Duration(milliseconds: 600));
                  },
                  child: ListTile(
                    title: Text(Strings.MEDICAL_RECORDS),
                    horizontalTitleGap: 0,
                    leading: SizedBox(
                        height: 20,
                        width: 20,
                        child: Image.asset("assets/images/medical.png")),
                  )),
              InkWell(
                  splashColor: AppColors.appbarbackgroundColor,
                  onTap: () {
                    Get.to(TotalHealthPage(),
                        transition: Transition.rightToLeftWithFade,
                        duration: Duration(milliseconds: 600));
                  },
                  child: ListTile(
                    title: Text(Strings.TOTAL_HEALTH),
                    horizontalTitleGap: 0,
                    leading: SizedBox(
                        height: 20,
                        width: 20,
                        child: Image.asset("assets/images/total_health.png")),
                  )),
              ListTile(
                title: Text(Strings.ONLINE_CONSULTATION),
                horizontalTitleGap: 0,
                leading: SizedBox(
                    height: 20,
                    width: 20,
                    child:
                        Image.asset("assets/images/online_consultation.png")),
              ),
              InkWell(
                  splashColor: AppColors.appbarbackgroundColor,
                  onTap: () {
                    Get.to(MyAccountPageFromDrawer(),
                        transition: Transition.rightToLeftWithFade,
                        duration: Duration(milliseconds: 600));
                  },
                  child: ListTile(
                    title: Text(Strings.MY_ACCOUNT),
                    horizontalTitleGap: 0,
                    leading: SizedBox(
                        height: 20,
                        width: 20,
                        child: Image.asset("assets/images/my_account.png")),
                  )),
              InkWell(
                  splashColor: AppColors.appbarbackgroundColor,
                  onTap: () {
                    Get.to(MyCoursesPage(),
                        transition: Transition.rightToLeftWithFade,
                        duration: Duration(milliseconds: 600));
                  },
                  child: ListTile(
                    title: Text(Strings.My_COURSES),
                    horizontalTitleGap: 0,
                    leading: SizedBox(
                        height: 20,
                        width: 20,
                        child: Image.asset("assets/images/my_course.png")),
                  )),
              InkWell(
                  splashColor: AppColors.appbarbackgroundColor,
                  onTap: () {
                    Get.to(OffersPage(),
                        transition: Transition.rightToLeftWithFade,
                        duration: Duration(milliseconds: 600));
                  },
                  child: ListTile(
                    title: Text(Strings.OFFERS),
                    horizontalTitleGap: 0,
                    leading: SizedBox(
                        height: 20,
                        width: 20,
                        child: Image.asset("assets/images/offers.png")),
                  )),
              InkWell(
                  splashColor: AppColors.appbarbackgroundColor,
                  onTap: () {
                    Get.to(AccountSettingsPage(),
                        transition: Transition.rightToLeftWithFade,
                        duration: Duration(milliseconds: 600));
                  },
                  child: ListTile(
                    title: Text(Strings.ACCOUNT_SETTINGS),
                    horizontalTitleGap: 0,
                    leading: SizedBox(
                        height: 20,
                        width: 20,
                        child:
                            Image.asset("assets/images/account_settings.png")),
                  )),
              InkWell(
                  splashColor: AppColors.appbarbackgroundColor,
                  onTap: () {
                    Get.to(HelpPage(),
                        transition: Transition.rightToLeftWithFade,
                        duration: Duration(milliseconds: 600));
                  },
                  child: ListTile(
                    title: Text(Strings.HELP),
                    horizontalTitleGap: 0,
                    leading: SizedBox(
                        height: 20,
                        width: 20,
                        child: Image.asset("assets/images/help.png")),
                  )),
              ListTile(
                title: Text(Strings.SHARE),
                horizontalTitleGap: 0,
                leading: SizedBox(
                    height: 20,
                    width: 20,
                    child: Image.asset("assets/images/share.png")),
              ),
              InkWell(
                  splashColor: AppColors.appbarbackgroundColor,
                  onTap: () {},
                  child: ListTile(
                    title: Text(Strings.RATEUS),
                    horizontalTitleGap: 0,
                    leading: SizedBox(
                        height: 20,
                        width: 20,
                        child: Image.asset("assets/images/rate_us.png")),
                  )),
              SizedBox(
                height: 30,
              ),
              ListTile(
                title: Text(Strings.LOGOUT),
                horizontalTitleGap: 0,
                leading: SizedBox(
                    height: 20,
                    width: 20,
                    child: Image.asset("assets/images/logout.png")),
              ),
            ],
          ),
        )
      ],
    );
  }
}
