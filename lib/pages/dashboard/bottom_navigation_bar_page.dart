import 'package:aec_medical/pages/dashboard/consultation/consultation_page.dart';
import 'package:aec_medical/pages/dashboard/drawer/drawer_page.dart';
import 'package:aec_medical/pages/dashboard/home/home_page.dart';
import 'package:aec_medical/pages/dashboard/profile/profile_page.dart';
import 'package:aec_medical/utils/colors.dart';
import 'package:fancy_bottom_navigation/fancy_bottom_navigation.dart';
import 'package:flutter/material.dart';

import 'medical_report/medical_report_page.dart';

class BottomNavigationBarPage extends StatefulWidget {
  @override
  _BottomNavigationBarPageState createState() =>
      _BottomNavigationBarPageState();
}

class _BottomNavigationBarPageState extends State<BottomNavigationBarPage> {
  int currentPage = 0;
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  void _openDrawer() {
    _scaffoldKey.currentState?.openDrawer();
  }

  @override
  Widget build(BuildContext context) {
    final tabs = [
      HomePage(),
      // SharePage(),
      MedicalRecordsPage(),
      ConsultationPage(),
      ProfilePage(),
    ];

    return SafeArea(
      top: false,
      child: Scaffold(
          appBar: AppBar(
            key: _scaffoldKey,
            backgroundColor: AppColors.appbarbackgroundColor,
            leading: InkWell(
              splashColor: AppColors.appbarbackgroundColor,
              onTap: _openDrawer,
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Image.asset(
                  "assets/images/drawer_icon.png",
                ),
              ),
            ),
            actions: [
              IconButton(onPressed: () {}, icon: Icon(Icons.search, size: 30)),
              IconButton(
                  onPressed: () {}, icon: Icon(Icons.notifications, size: 30)),
            ],
          ),
          drawer: Drawer(
            child: DrawerPage(),
          ),
          body: tabs[currentPage],
          bottomNavigationBar: FancyBottomNavigation(
            circleColor: AppColors.redColor,
            textColor: AppColors.redColor,
            barBackgroundColor: Colors.white,
            inactiveIconColor: Colors.grey,
            tabs: [
              TabData(iconData: Icons.home_outlined, title: "Home"),
              //   TabData(iconData: Icons.share_arrival_time, title: "Share"),
              TabData(iconData: Icons.medical_services, title: "Medical"),
              TabData(
                  iconData: Icons.calendar_today_outlined, title: "Consults"),
              TabData(iconData: Icons.person, title: "Profile"),
            ],
            onTabChangedListener: (position) {
              setState(() {
                currentPage = position;
              });
            },
          )),
    );
  }
}
