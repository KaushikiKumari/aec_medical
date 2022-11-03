import 'package:aec_medical/custom/custom_button.dart';
import 'package:aec_medical/pages/authentication/sign_in_with_mobile_number_page.dart';
import 'package:aec_medical/utils/colors.dart';
import 'package:aec_medical/utils/strings.dart';
import 'package:aec_medical/utils/strings_style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SafeArea(
          child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: SingleChildScrollView(
                child: Center(
                  child: Column(
                    children: [
                      SizedBox(height: 20),
                      _logo(),
                      _welcometext(),
                      SizedBox(height: 10),
                      _signinoption(),
                      SizedBox(height: 30),
                      _termsandconditionsbanner(),
                    ],
                  ),
                ),
              ))),
    );
  }

  _logo() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(height: 5),
        Container(
            height: 190,
            width: 190,
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
          Strings.SIGNIN_HEADLINE1,
          style: StringsStyle.signinheadline1style,
        ),
        SizedBox(height: 5),
        Text(
          Strings.SIGNIN_HEADLINE2,
          style: StringsStyle.signinheadline2style,
        ),
      ],
    );
  }

  _signinoption() {
    return Column(children: [
      SizedBox(height: 10),
      // ignore: deprecated_member_use
      FlatButton(
        onPressed: () {
          Get.to(SignInWithMobileNumberPage(),
              transition: Transition.rightToLeftWithFade,
              duration: Duration(milliseconds: 600));
        },
        child: CustomButton(
            text2: Strings.SIGNIN_WITH_MOBILE,
            text1: '',
            width: Get.width,
            height: 50),
      ),
      SizedBox(height: 20),
      Text(Strings.OR),
      SizedBox(height: 20),
      // ignore: deprecated_member_use
      FlatButton(
        onPressed: null,
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
                Colors.white60,
              ]),
              borderRadius: BorderRadius.circular(10),
            ),
            height: 50,
            width: Get.width,
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 25,
                    width: 25,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/images/googleicon.png"))),
                  ),
                  Center(
                    child: Text(Strings.SIGNIN_WITH_GOOGLE,
                        style: StringsStyle.signinwithgoogle),
                  ),
                ],
              ),
            )),
      ),
      SizedBox(height: 12),
      // ignore: deprecated_member_use
      FlatButton(
        onPressed: () {},
        child: CustomButton(
            text1: Strings.F,
            text2: Strings.SIGNIN_WITH_FACEBOOK,
            width: Get.width,
            height: 50),
      )
    ]);
  }

  _termsandconditionsbanner() {
    return Row(children: [
      Text(
        Strings.TERMS_AND_CONDITION_BANNER_TEXT,
        style: TextStyle(fontSize: 12),
      ),
      Text(Strings.TERMS_AND_CONDITION_BANNER_SUBTEXT,
          style: StringsStyle.termsandconditionbanner),
    ]);
  }
}
