import 'dart:async';

import 'package:aec_medical/pages/prefferred_language_picker/prefferred_langauge_picker_page.dart';
import 'package:aec_medical/utils/colors.dart';
import 'package:aec_medical/utils/strings.dart';
import 'package:aec_medical/utils/strings_style.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class OtpPage extends StatefulWidget {
  @override
  _OtpPageState createState() => _OtpPageState();
}

class _OtpPageState extends State<OtpPage> {
  TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.backgroundColor,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                _logo(),
                SizedBox(height: 50),
                _welcometext(),
                SizedBox(height: 30),
                _otpfield(),
                _continuebutton(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    FlatButton(
                      child: Text("Resend code",
                          style: TextStyle(
                              color: AppColors.appbarbackgroundColor)),
                      onPressed: () {
                        // textEditingController.text = "123456";
                      },
                    ),
                    FlatButton(
                      child: Text("Change number",
                          style: TextStyle(
                              color: AppColors.appbarbackgroundColor)),
                      onPressed: () {
                        // textEditingController.clear();
                        Get.back();
                      },
                    ),
                  ],
                )
              ],
            ),
          ),
        ));
  }

  _logo() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(height: 5),
        Container(
            height: 180,
            width: 180,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/logo.png")))),
        Text(
          Strings.LOGO_TITLE,
          style: StringsStyle.redlogotitlestyle,
        ),
      ],
    );
  }

  _welcometext() {
    return Column(
      children: [
        SizedBox(height: 100),
        Text(
          Strings.OTPPAGE_HEADLINE1,
          style: StringsStyle.otpheadline1style,
        ),
        SizedBox(height: 5),
        Text(
          Strings.OTPPAGE_HEADLINE2,
          style: StringsStyle.otpheadline2style,
        ),
      ],
    );
  }

  _otpfield() {
    return Form(
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Container(
          height: 50,
          width: Get.width,
          decoration: BoxDecoration(boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.4),
              spreadRadius: 1,
              blurRadius: 3,
              offset: Offset(0, 3),
            ),
          ], color: Colors.white, borderRadius: BorderRadius.circular(10)),
        ),
      ),
    );
  }

  _continuebutton() {
    return FlatButton(
      onPressed: () {
        Get.to(PrefferredLanguagePickerPage(),
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
            Colors.red.shade500,
            AppColors.redColor,
          ]),
          borderRadius: BorderRadius.circular(10),
        ),
        height: 50,
        width: Get.width,
        child: Center(
          child: Text("Continue",
              style: TextStyle(
                color: AppColors.whitetextColor,
                fontSize: 15,
                letterSpacing: 0.5,
              )),
        ),
      ),
    );
  }
}
