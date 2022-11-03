import 'package:aec_medical/pages/dashboard/drawer/my_account/edit_my_account_page.dart';
import 'package:aec_medical/utils/colors.dart';
import 'package:aec_medical/utils/strings.dart';
import 'package:aec_medical/utils/strings_style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyAccountPageFromDrawer extends StatefulWidget {
  const MyAccountPageFromDrawer({Key? key}) : super(key: key);

  @override
  _MyAccountPageFromDrawerState createState() =>
      _MyAccountPageFromDrawerState();
}

class _MyAccountPageFromDrawerState extends State<MyAccountPageFromDrawer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.backgroundColor,
        appBar: AppBar(
          backgroundColor: AppColors.appbarbackgroundColor,
          leading: IconButton(
              onPressed: () {
                Get.back();
              },
              icon: Icon(Icons.keyboard_arrow_left_outlined, size: 30)),
          actions: [
            IconButton(
                onPressed: () {}, icon: Icon(Icons.notifications, size: 30)),
          ],
        ),
        body: SafeArea(
            child: SingleChildScrollView(
                child: Container(
                    child: Column(children: [
          _headingcard(),
          SizedBox(height: 2),
          _personaldetailbanner(),
          SizedBox(height: 2),
          _personaldetails(),
        ])))));
  }

  _headingcard() {
    return InkWell(
        splashColor: AppColors.appbarbackgroundColor,
        onTap: () {
          Get.to(EditMyAccountPage(),
              transition: Transition.rightToLeftWithFade,
              duration: Duration(milliseconds: 600));
        },
        child: Container(
          width: Get.width,
          child: Card(
              elevation: 5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0),
              ),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  children: [
                    Text(Strings.PROFILETITLE,
                        style: StringsStyle.profiletitlestyle),
                    SizedBox(height: 15),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Hello ANURAG,",
                                    style: TextStyle(
                                        color: AppColors.darktextColor,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16)),
                                SizedBox(height: 5),
                                Text("How're you today?",
                                    style: TextStyle(
                                        color: AppColors.darktextColor,
                                        fontSize: 12)),
                              ]),
                          CircleAvatar(radius: 40),
                        ])
                  ],
                ),
              )),
        ));
  }

  _personaldetailbanner() {
    return Container(
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
        ),
        width: Get.width,
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Text(Strings.PERSONALDETAILBANNERTEXT,
              style: StringsStyle.personaldetailbannerstyle),
        ));
  }

  _personaldetails() {
    return Container(
        width: Get.width,
        child: Card(
            elevation: 5,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5.0),
            ),
            child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(Strings.NAME,
                            style: StringsStyle.personaldetailstyle),
                        Text("Anurag Kumar",
                            style: TextStyle(color: AppColors.lighttextColor))
                      ],
                    ),
                    SizedBox(height: 15),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(Strings.EMAIL,
                            style: StringsStyle.personaldetailstyle),
                        Text("Anurag@123gmail.com",
                            style: TextStyle(color: AppColors.lighttextColor))
                      ],
                    ),
                    SizedBox(height: 15),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(Strings.MOBILENUMBER,
                            style: StringsStyle.personaldetailstyle),
                        Text("1234567899",
                            style: TextStyle(color: AppColors.lighttextColor))
                      ],
                    ),
                    SizedBox(height: 15),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(Strings.GENDER,
                            style: StringsStyle.personaldetailstyle),
                        Text("Male",
                            style: TextStyle(color: AppColors.lighttextColor))
                      ],
                    ),
                    SizedBox(height: 15),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(Strings.DATEOFBIRTH,
                            style: StringsStyle.personaldetailstyle),
                        Text("12-jan-2001",
                            style: TextStyle(color: AppColors.lighttextColor))
                      ],
                    ),
                    SizedBox(height: 15),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(Strings.BLOODGROUP,
                            style: StringsStyle.personaldetailstyle),
                        Text("O+ve",
                            style: TextStyle(color: AppColors.lighttextColor))
                      ],
                    ),
                    SizedBox(height: 15),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(Strings.MATERIALSTATUS,
                            style: StringsStyle.personaldetailstyle),
                        Text("Un-married",
                            style: TextStyle(color: AppColors.lighttextColor))
                      ],
                    ),
                    SizedBox(height: 15),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(Strings.HEIGHT,
                            style: StringsStyle.personaldetailstyle),
                        Text("6 feet",
                            style: TextStyle(color: AppColors.lighttextColor))
                      ],
                    ),
                    SizedBox(height: 15),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(Strings.WEIGHT,
                            style: StringsStyle.personaldetailstyle),
                        Text("60 kg",
                            style: TextStyle(color: AppColors.lighttextColor))
                      ],
                    ),
                    SizedBox(height: 15),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(Strings.EMERGENCYCONTACT,
                            style: StringsStyle.personaldetailstyle),
                        Text("0987654321",
                            style: TextStyle(color: AppColors.lighttextColor))
                      ],
                    ),
                    SizedBox(height: 15),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(Strings.LOCATION,
                            style: StringsStyle.personaldetailstyle),
                        Text("vill-kulmanpur, post-sivpur, buxar(bihar)",
                            style: TextStyle(color: AppColors.lighttextColor))
                      ],
                    ),
                  ],
                ))));
  }
}
