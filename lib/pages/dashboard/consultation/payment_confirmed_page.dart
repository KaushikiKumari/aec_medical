import 'package:aec_medical/custom/custom_button.dart';
import 'package:aec_medical/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PaymentConfirmedPage extends StatefulWidget {
  const PaymentConfirmedPage({Key? key}) : super(key: key);

  @override
  _PaymentConfirmedPageState createState() => _PaymentConfirmedPageState();
}

class _PaymentConfirmedPageState extends State<PaymentConfirmedPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.backgroundColor,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          leading: IconButton(
              onPressed: () {
                Get.back();
              },
              icon: Icon(Icons.keyboard_arrow_left_outlined,
                  size: 30, color: AppColors.appbarbackgroundColor)),
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(Icons.notifications,
                    size: 30, color: AppColors.appbarbackgroundColor)),
          ],
        ),
        body: SingleChildScrollView(
            child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(children: [
            _paymentconfirmation(),
            SizedBox(height: 60),
            _timeofconsultation(),
            SizedBox(height: 50),
            Text(
              "Dr. Neeraj Nagaich - Gastroenterology",
              style: TextStyle(
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Icon(Icons.location_on_outlined,
                    color: AppColors.lighttextColor, size: 20),
                Text(
                  "Fortis escorts jaipur.",
                  style: TextStyle(
                    color: AppColors.lighttextColor,
                  ),
                ),
              ],
            ),
            SizedBox(height: 5),
            Divider(),
            SizedBox(height: 5),
            Container(
                height: 250,
                width: 250,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/paymentimage.png")))),
            SizedBox(height: 10),
            _medicalhistorypage(),
            SizedBox(height: 10),
          ]),
        )));
  }

  _paymentconfirmation() {
    return Row(children: [
      Container(
          height: 25,
          width: 25,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/paymentsuccess.png"),
                  fit: BoxFit.cover))),
      SizedBox(
        width: 10,
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Payment Confirmend!",
            style: TextStyle(
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: 3),
          Text(
            "Doctor will connect you soon",
            style: TextStyle(
                fontWeight: FontWeight.w500,
                color: AppColors.appbarbackgroundColor),
          ),
        ],
      )
    ]);
  }

  _timeofconsultation() {
    return Card(
        elevation: 3,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Container(
          width: Get.width / 1.7,
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text(
                "Thu, 09 Jun",
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 17,
                ),
              ),
              SizedBox(width: 8),
              Text(
                "08:00",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 17,
                    color: AppColors.appbarbackgroundColor),
              ),
            ]),
          ),
        ));
  }

  _medicalhistorypage() {
    // ignore: deprecated_member_use
    return FlatButton(
        onPressed: () {
          // Get.off(FindDoctorsPage(),
          //     transition: Transition.rightToLeftWithFade,
          //     duration: Duration(milliseconds: 600));
        },
        child: CustomButton(
            text1: "",
            text2: "Brief Medical History",
            width: Get.width,
            height: 50));
  }
}
