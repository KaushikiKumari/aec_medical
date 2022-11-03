import 'package:aec_medical/custom/custom_button.dart';
import 'package:aec_medical/pages/dashboard/consultation/payment_confirmed_page.dart';
import 'package:aec_medical/pages/dashboard/consultation/payment_confirmed_page.dart';
import 'package:aec_medical/utils/colors.dart';
import 'package:aec_medical/utils/strings_style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({Key? key}) : super(key: key);

  @override
  _PaymentPageState createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  var index = 0;
  var currentindex = 0;
  bool isExpand = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.backgroundColor,
        appBar: AppBar(
          backgroundColor: AppColors.appbarbackgroundColor,
          centerTitle: true,
          title: Text(
            "Payment Page",
            style: StringsStyle.pagetitlestyle,
          ),
          leading: IconButton(
              onPressed: () {
                Get.back();
              },
              icon: Icon(Icons.keyboard_arrow_left_outlined, size: 30)),
        ),
        body: SingleChildScrollView(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          _consultationfor(),
          _preferedlanguage(),
          _coupons(),
          _audioandvideocall(),
          SizedBox(height: 5),
          _termsandcondition(),
          SizedBox(height: 10),
          _paymentdetail(),
        ])));
  }

  _consultationfor() {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Consultation for Dizziness",
                  style: TextStyle(
                    color: AppColors.darktextColor,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: 3),
                Text(
                  "Treated by general physician",
                  style: TextStyle(
                    color: AppColors.darktextColor,
                  ),
                ),
              ],
            ),
          ),
          CircleAvatar(
              radius: 35,
              backgroundColor: AppColors.backgroundColor,
              child: Container(
                  decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/physician.png"),
                  fit: BoxFit.cover,
                ),
              ))),
        ],
      ),
    );
  }

  _preferedlanguage() {
    return Card(
        elevation: 2,
        child: Container(
            child: Padding(
          padding: const EdgeInsets.all(10.0),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text("Prefered Language for consulatation",
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: AppColors.darktextColor)),
            SizedBox(height: 10),
            Row(
              children: [
                InkWell(
                  splashColor: AppColors.redColor,
                  onTap: () {
                    setState(() {
                      index = 0;
                    });
                  },
                  child: Card(
                      elevation: 5,
                      color: index == 0
                          ? AppColors.redColor
                          : AppColors.whitetextColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: Container(
                          height: 40,
                          width: 100,
                          child: Center(
                            child: Text("Hindi",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                    color: index == 0
                                        ? AppColors.whitetextColor
                                        : AppColors.darktextColor)),
                          ))),
                ),
                SizedBox(width: 20),
                InkWell(
                    splashColor: AppColors.redColor,
                    onTap: () {
                      setState(() {
                        index = 1;
                      });
                    },
                    child: Card(
                        color: index == 1
                            ? AppColors.redColor
                            : AppColors.whitetextColor,
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: Container(
                          height: 40,
                          width: 100,
                          child: Center(
                            child: Text("English",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                    color: index == 1
                                        ? AppColors.whitetextColor
                                        : AppColors.darktextColor)),
                          ),
                        ))),
              ],
            ),
          ]),
        )));
  }

  _coupons() {
    return Card(
        elevation: 2,
        child: Container(
            child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: InkWell(
            onTap: () {
              setState(() {
                isExpand = isExpand ? false : true;
              });
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    border: Border.all(
                        color: isExpand
                            ? Colors.white
                            : AppColors.appbarbackgroundColor,
                        width: 1.5),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            IconButton(
                                onPressed: null,
                                icon: Icon(
                                  Icons.ac_unit,
                                  color: AppColors.appbarbackgroundColor,
                                )),
                            Text(
                              "Apply coupon code",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        InkWell(
                            onTap: () {
                              // Get.to(CouponPage(),
                              //     transition: Transition.rightToLeftWithFade,
                              //     duration: Duration(milliseconds: 600));
                              // setState(() {
                              //   isExpand = isExpand ? false : true;
                              // });
                            },
                            child: Container(
                                child: isExpand
                                    ? Container()
                                    : IconButton(
                                        onPressed: () {
                                          Get.snackbar(
                                            "Coupon is added successfully",
                                            "just now",
                                            snackPosition: SnackPosition.BOTTOM,
                                            colorText: AppColors.redColor,
                                            backgroundColor:
                                                AppColors.whitetextColor,
                                            boxShadows: [
                                              BoxShadow(
                                                blurRadius: 1,
                                                color: Colors.grey.shade200,
                                                offset: Offset(0, 2),
                                                spreadRadius: 2,
                                              ),
                                            ],
                                            margin: EdgeInsets.all(15),
                                          );
                                        },
                                        icon: Icon(
                                            Icons.keyboard_arrow_right_outlined,
                                            size: 30))))
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: Visibility(
                      visible: isExpand,
                      child: Container(
                          child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                              height: 50,
                              width: Get.width / 1 - 200,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    bottomLeft: Radius.circular(10)),
                                color: Colors.white,
                                border: Border.all(
                                    color: AppColors.appbarbackgroundColor,
                                    width: 1.5),
                              ),
                              child: TextFormField(
                                  textAlignVertical: TextAlignVertical.bottom,
                                  decoration: InputDecoration(
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        borderSide: BorderSide(
                                            color: Colors.white, width: 1),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        borderSide: BorderSide(
                                            color: Colors.white, width: 1),
                                      ),
                                      errorBorder: OutlineInputBorder(
                                          borderSide: new BorderSide(
                                              color: Colors.grey, width: 1),
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      focusedErrorBorder: OutlineInputBorder(
                                          borderSide: new BorderSide(
                                              color: Colors.grey, width: 1),
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      border: OutlineInputBorder(
                                          borderSide: new BorderSide(
                                              color: Colors.yellow, width: 1),
                                          borderRadius:
                                              BorderRadius.circular(10))))),
                          Container(
                            height: 50,
                            width: 100,
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 1,
                                  blurRadius: 5,
                                  offset: Offset(0, 3),
                                ),
                              ],
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(10),
                                  bottomRight: Radius.circular(10)),
                              color: AppColors.appbarbackgroundColor,
                            ),
                            child: Center(
                              child: Text(
                                "Apply",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ))),
                )
              ],
            ),
          ),
        )));
  }

  _audioandvideocall() {
    return Card(
        elevation: 2,
        child: Container(
            child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InkWell(
                          splashColor: AppColors.redColor,
                          onTap: () {
                            setState(() {
                              currentindex = 0;
                            });
                          },
                          child: Card(
                            elevation: 5,
                            color: currentindex == 0
                                ? AppColors.redColor
                                : AppColors.whitetextColor,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            child: Container(
                              height: 100,
                              width: 100,
                              child: Center(
                                child: CircleAvatar(
                                    radius: 40,
                                    backgroundColor: AppColors.backgroundColor,
                                    child: Container(
                                        decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage(
                                            "assets/images/audio_call.png"),
                                        fit: BoxFit.cover,
                                      ),
                                    ))),
                              ),
                            ),
                          )),
                      InkWell(
                          splashColor: AppColors.redColor,
                          onTap: () {
                            setState(() {
                              currentindex = 1;
                            });
                          },
                          child: Card(
                              color: currentindex == 1
                                  ? AppColors.redColor
                                  : AppColors.whitetextColor,
                              elevation: 5,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              child: Container(
                                height: 100,
                                width: 100,
                                child: Center(
                                  child: CircleAvatar(
                                      radius: 40,
                                      backgroundColor:
                                          AppColors.backgroundColor,
                                      child: Container(
                                          decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: AssetImage(
                                              "assets/images/video_call.png"),
                                          fit: BoxFit.cover,
                                        ),
                                      ))),
                                ),
                              ))),
                    ],
                  ),
                ))));
  }

  _termsandcondition() {
    return Column(children: [
      Text(
        "By Clicking on Pay & consultation",
      ),
      Text(
        "are confirming that you are agree",
      ),
      Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        Text(
          "with",
        ),
        SizedBox(width: 2),
        Text("terms & condition",
            style: TextStyle(
                decoration: TextDecoration.underline,
                color: AppColors.blueColor)),
      ])
    ]);
  }

  _paymentdetail() {
    return Card(
      elevation: 3,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(20), topLeft: Radius.circular(20)),
      ),
      child: Container(
          width: Get.width / 1,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(10), topLeft: Radius.circular(10)),
            color: AppColors.whitetextColor,
          ),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Payment details",
                    style: TextStyle(
                      color: AppColors.darktextColor,
                      fontSize: 15,
                      letterSpacing: 0.5,
                    )),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Consultation Fee",
                        style: TextStyle(
                          color: AppColors.darktextColor,
                        )),
                    Text("Rs. 295.00",
                        style: TextStyle(
                            color: AppColors.darktextColor,
                            fontSize: 15,
                            letterSpacing: 0.5,
                            fontWeight: FontWeight.w500)),
                  ],
                ),
                SizedBox(height: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Coupan",
                        style: TextStyle(
                          color: AppColors.darktextColor,
                        )),
                    Text("- 50.00",
                        style: TextStyle(
                            color: AppColors.appbarbackgroundColor,
                            fontSize: 15,
                            letterSpacing: 0.5,
                            fontWeight: FontWeight.w500)),
                  ],
                ),
                SizedBox(height: 10),
                Divider(
                  color: Colors.black,
                  thickness: 1.2,
                ),
                SizedBox(height: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Amount to pay",
                        style: TextStyle(
                            color: AppColors.darktextColor,
                            fontSize: 15,
                            letterSpacing: 0.5,
                            fontWeight: FontWeight.bold)),
                    Text("Rs. 245.00",
                        style: TextStyle(
                            color: AppColors.darktextColor,
                            fontSize: 15,
                            letterSpacing: 0.5,
                            fontWeight: FontWeight.bold)),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Rs. 245.00",
                          style: TextStyle(
                              color: AppColors.darktextColor,
                              fontSize: 15,
                              letterSpacing: 0.5,
                              fontWeight: FontWeight.bold)),
                      FlatButton(
                          onPressed: () {
                            Get.off(PaymentConfirmedPage(),
                                transition: Transition.rightToLeftWithFade,
                                duration: Duration(milliseconds: 600));
                          },
                          child: CustomButton(
                              text1: "",
                              text2: "Pay Now",
                              width: 150,
                              height: 50)),
                    ])
              ],
            ),
          )),
    );
  }
}
