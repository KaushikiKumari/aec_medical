import 'package:aec_medical/custom/custom_button.dart';
import 'package:aec_medical/pages/dashboard/consultation/payment_page.dart';
import 'package:aec_medical/utils/colors.dart';
import 'package:aec_medical/utils/strings_style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FindDoctorsPage extends StatefulWidget {
  const FindDoctorsPage({Key? key}) : super(key: key);

  @override
  _FindDoctorsPageState createState() => _FindDoctorsPageState();
}

class _FindDoctorsPageState extends State<FindDoctorsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
        backgroundColor: AppColors.appbarbackgroundColor,
        centerTitle: true,
        title: Text(
          "Find Doctors",
          style: StringsStyle.pagetitlestyle,
        ),
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: Icon(Icons.keyboard_arrow_left_outlined, size: 30)),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _headingcard(),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _onlinedoctors(),
                    SizedBox(height: 10),
                    Text(
                        "We align consultation with our top doctors\nisted below",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: AppColors.appbarbackgroundColor)),
                    SizedBox(height: 20),
                    _listofdoctors(),
                    SizedBox(height: 10),
                    _listofdoctors(),
                    SizedBox(height: 20),
                    _nextbutton(),
                  ]),
            )
          ],
        ),
      ),
    );
  }

  _headingcard() {
    return Stack(
      children: [
        SizedBox(
          width: Get.width,
          child: Card(
              elevation: 5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0),
              ),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(15, 80, 15, 50),
                child: Row(
                  children: [
                    Column(
                      children: [
                        Text("Get online\nconsultation\nat your",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: AppColors.appbarbackgroundColor)),
                        SizedBox(height: 5),
                        Text("#Home",
                            style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: AppColors.appbarbackgroundColor)),
                      ],
                    ),
                    Expanded(
                      child: Container(
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image:
                                      AssetImage("assets/images/register.png"),
                                  fit: BoxFit.cover))),
                    ),
                  ],
                ),
              )),
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

  _onlinedoctors() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text("Doctors",
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: AppColors.darktextColor)),
          SizedBox(height: 2),
          Text("Online Now",
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: AppColors.darktextColor)),
        ]),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              children: [
                Container(
                  height: 70,
                  width: Get.width - 180,
                ),
                Positioned(
                    right: 120,
                    child: CircleAvatar(
                        radius: 25, backgroundColor: AppColors.lightblueColor)),
                Positioned(
                    right: 90,
                    child: CircleAvatar(
                        radius: 25, backgroundColor: AppColors.lighttextColor)),
                Positioned(
                    right: 60,
                    child: CircleAvatar(
                        radius: 25, backgroundColor: AppColors.redColor)),
                Positioned(
                    right: 30,
                    child: CircleAvatar(
                        radius: 25, backgroundColor: AppColors.errorColor)),
                Positioned(
                    right: 0,
                    child: CircleAvatar(
                        radius: 25, backgroundColor: AppColors.blueColor)),
              ],
            ),
            SizedBox(width: 10),
            Text("+112",
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: AppColors.appbarbackgroundColor)),
          ],
        ),
      ],
    );
  }

  _listofdoctors() {
    return Container(
      height: Get.width / 2.1,
      width: Get.width / 1,
      child: ListView.builder(
          itemCount: 6,
          scrollDirection: Axis.horizontal,
          itemBuilder: (BuildContext context, index) {
            return Padding(
              padding: const EdgeInsets.all(0.0),
              child: Card(
                elevation: 2,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Container(
                    height: Get.width / 2.1,
                    width: Get.width / 0.96,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        children: [
                          Column(children: [
                            SizedBox(
                                height: 100,
                                width: 100,
                                child: Card(
                                  color: AppColors.appbarbackgroundColor,
                                  elevation: 1,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5.0),
                                  ),
                                )),
                            SizedBox(height: 10),
                            SizedBox(
                                height: 30,
                                width: 100,
                                child: Card(
                                    color: AppColors.blueColor,
                                    elevation: 1,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5.0),
                                    ),
                                    child: Center(
                                      child: Text("4.3/5",
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold,
                                              color: AppColors.whitetextColor)),
                                    ))),
                          ]),
                          SizedBox(width: 10),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Dr. Martin",
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: AppColors.darktextColor)),
                              SizedBox(height: 5),
                              Text("General Physician",
                                  style: TextStyle(
                                      color: AppColors.lighttextColor)),
                              SizedBox(height: 3),
                              Text("5 years experience",
                                  style: TextStyle(
                                      color: AppColors.lighttextColor)),
                              SizedBox(height: 3),
                              Row(
                                children: [
                                  Row(children: [
                                    Icon(Icons.star, color: Colors.orange),
                                    Icon(Icons.star, color: Colors.orange),
                                    Icon(Icons.star, color: Colors.orange),
                                    Icon(Icons.star_border,
                                        color: Colors.orange),
                                    Icon(Icons.star_border,
                                        color: Colors.orange),
                                  ]),
                                  SizedBox(width: 5),
                                  Text("(213)",
                                      style: TextStyle(
                                          color: AppColors.lighttextColor)),
                                ],
                              ),
                              SizedBox(height: 3),
                              Row(
                                children: [
                                  Text("1000+ consults done ",
                                      style: TextStyle(
                                          color: AppColors.darktextColor)),
                                  SizedBox(width: 10),
                                  Text("Know more",
                                      style: TextStyle(
                                          color: AppColors.darktextColor)),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    )),
              ),
            );
          }),
    );
  }

  _nextbutton() {
    // ignore: deprecated_member_use
    return Padding(
      padding: const EdgeInsets.all(0.0),
      child: Align(
        alignment: Alignment.bottomRight,
        // ignore: deprecated_member_use
        child: FlatButton(
            onPressed: () {
              Get.off(PaymentPage(),
                  transition: Transition.rightToLeftWithFade,
                  duration: Duration(milliseconds: 600));
            },
            child:
                CustomButton(text1: "", text2: "Next", width: 150, height: 50)),
      ),
    );
  }
}
