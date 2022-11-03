import 'package:aec_medical/custom/custom_button.dart';
import 'package:aec_medical/utils/colors.dart';
import 'package:aec_medical/utils/strings.dart';
import 'package:aec_medical/utils/strings_style.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OffersPage extends StatefulWidget {
  @override
  _OffersPageState createState() => _OffersPageState();
}

class _OffersPageState extends State<OffersPage> {
  bool isExpand = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.backgroundColor,
        appBar: AppBar(
          backgroundColor: AppColors.appbarbackgroundColor,
          centerTitle: true,
          title: Text(
            Strings.OFFERSPAGETITLE,
            style: StringsStyle.pagetitlestyle,
          ),
          leading: IconButton(
              onPressed: () {
                Get.back();
              },
              icon: Icon(Icons.keyboard_arrow_left_outlined, size: 30)),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20),
                Text(Strings.AVAILABLE_OFFERS,
                    style: StringsStyle.normaltextstyle),
                SizedBox(height: 10),
                _availableoffer(),
                SizedBox(height: 30),
                _applycoupon(),
              ],
            ),
          ),
        ));
  }

  _availableoffer() {
    return Container(
        child: ListView.builder(
            scrollDirection: Axis.vertical,
            primary: true,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: 3,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.all(5.0),
                child: InkWell(
                  onTap: () {
                    setState(() {
                      isExpand = isExpand ? false : true;
                    });
                  },
                  child: Container(
                    width: Get.width / 1,
                    decoration: BoxDecoration(
                        color: AppColors.whitetextColor,
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(10)),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("25% off on your first",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                color: AppColors.appbarbackgroundColor,
                              )),
                          SizedBox(height: 3),
                          Text("online consultation",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                color: AppColors.appbarbackgroundColor,
                              )),
                          SizedBox(height: 5),
                          Text(
                              "25% off up to rs.100. valid for your first online",
                              style: TextStyle(
                                color: AppColors.appbarbackgroundColor,
                              )),
                          SizedBox(height: 3),
                          Text("consultation",
                              style: TextStyle(
                                color: AppColors.appbarbackgroundColor,
                              )),
                          SizedBox(height: 5),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(),
                              DottedBorder(
                                borderType: BorderType.Rect,
                                radius: Radius.circular(10),
                                child: ClipRRect(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                  child: Container(
                                      height: 50,
                                      width: 150,
                                      color: AppColors.whitetextColor,
                                      child: Center(
                                        child: Text("Use code: First25",
                                            style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.w500,
                                              color: AppColors
                                                  .appbarbackgroundColor,
                                            )),
                                      )),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              );
            }));
  }

  _applycoupon() {
    return Visibility(
        visible: isExpand,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(Strings.APPLYCOUPONCARD, style: StringsStyle.normaltextstyle),
            SizedBox(height: 15),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                    height: 50,
                    width: Get.width / 1 - 180,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: AppColors.whitetextColor,
                      border: Border.all(color: Colors.grey, width: 1.5),
                    ),
                    child: TextFormField(
                        textAlignVertical: TextAlignVertical.bottom,
                        decoration: InputDecoration(
                            hintText: 'Enter your details here',
                            hintStyle: TextStyle(
                                color: AppColors.appbarbackgroundColor,
                                fontSize: 12),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(
                                  color: AppColors.whitetextColor, width: 1),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(
                                  color: AppColors.whitetextColor, width: 1),
                            ),
                            errorBorder: OutlineInputBorder(
                                borderSide: new BorderSide(
                                    color: Colors.grey, width: 1),
                                borderRadius: BorderRadius.circular(10)),
                            focusedErrorBorder: OutlineInputBorder(
                                borderSide: new BorderSide(
                                    color: Colors.grey, width: 1),
                                borderRadius: BorderRadius.circular(10)),
                            border: OutlineInputBorder(
                                borderSide: new BorderSide(
                                    color: Colors.yellow, width: 1),
                                borderRadius: BorderRadius.circular(10))))),
                SizedBox(width: 10),
                CustomButton(
                    text1: "", text2: "Apply Now", width: 150, height: 50)
              ],
            ),
          ],
        ));
  }
}
