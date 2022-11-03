import 'dart:async';
import 'package:aec_medical/pages/authentication/signin_page.dart';
import 'package:aec_medical/pages/onboarding/onborading_page.dart';
import 'package:aec_medical/utils/colors.dart';
import 'package:aec_medical/utils/strings.dart';
import 'package:aec_medical/utils/strings_style.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return SplashPageState();
  }
}

class SplashPageState extends State<SplashPage> {
  dynamic data = [];

  // NetworkUtil _netUtil = new NetworkUtil();
  // SharedPreferences prefs;

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  void startTimer() {
    Timer(
        Duration(seconds: 5),
        () => Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) => SignInPage())));
  }
  //
  // void navigateUser() async{
  //   SharedPreferences prefs = await SharedPreferences.getInstance();
  //   var status = prefs.getBool('isLoggedIn') ?? false;
  //   print(status);
  //   if (status) {
  //     Navigator.of(context).push(
  //       MaterialPageRoute(builder: (BuildContext context) => MainPage()),
  //
  //     );
  //   } else {
  //     Navigator.of(context).push(
  //       MaterialPageRoute(builder: (BuildContext context) => LoginPage()),
  //     );
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: AppColors.redColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 35, vertical: 100),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: 5,
                  ),
                  _logo(),
                  SizedBox(
                    height: 150,
                  ),
                  _textview(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  _logo() {
    return Column(
      children: [
        Container(
            height: 190,
            width: 190,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/logo.png")))),
        Text(
          Strings.LOGO_TITLE,
          style: StringsStyle.whitelogotitlestyle,
        ),
      ],
    );
  }

  _textview() {
    return Column(
      children: [
        Container(
          height: 2.5,
          color: Colors.white,
        ),
        SizedBox(
          height: 30,
        ),
        Text(
          Strings.SPLASH_HEADLINE1,
          style: StringsStyle.splashheadline1style,
        ),
        Text(
          Strings.SPLASH_HEADLINE2,
          style: StringsStyle.splashheadline2style,
        ),
        SizedBox(
          height: 30,
        ),
        Container(
          height: 2.5,
          color: Colors.white,
        ),
      ],
    );
  }
}
