import 'package:aec_medical/custom/custom_button.dart';
import 'package:aec_medical/pages/dashboard/consultation/select_speciality_page.dart';
import 'package:aec_medical/utils/colors.dart';
import 'package:aec_medical/utils/strings.dart';
import 'package:aec_medical/utils/strings_style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ConsultationPage extends StatefulWidget {
  const ConsultationPage({Key? key}) : super(key: key);

  @override
  _ConsultationPageState createState() => _ConsultationPageState();
}

class _ConsultationPageState extends State<ConsultationPage> {
  var _index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.backgroundColor,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                color: AppColors.whitetextColor,
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 5),
                        _heading(),
                        SizedBox(height: 20),
                        _searchbox(),
                      ]),
                ),
              ),
              SizedBox(height: 2),
              _listview(),
              SizedBox(height: 2),
              _newconsultationbutton(),
              SizedBox(height: 30),
            ],
          ),
        ));
  }

  _heading() {
    return Text(Strings.HEADINGTITLE, style: StringsStyle.headingstyle);
  }

  _searchbox() {
    return Container(
      height: 50,
      width: Get.width,
      decoration: BoxDecoration(
        color: AppColors.whitetextColor,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
              color: Colors.grey.shade300,
              spreadRadius: 1,
              blurRadius: 5,
              offset: Offset(3, 3))
        ],
      ),
      child: TextFormField(
          textAlignVertical: TextAlignVertical.bottom,
          decoration: InputDecoration(
              hintText: 'search',
              hintStyle: TextStyle(
                color: Colors.black38,
              ),
              suffixIcon: Icon(
                Icons.search,
                size: 30,
                color: Colors.black38,
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: Colors.white, width: 1),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: Colors.white, width: 1),
              ),
              errorBorder: OutlineInputBorder(
                  borderSide: new BorderSide(color: Colors.grey, width: 1),
                  borderRadius: BorderRadius.circular(10)),
              focusedErrorBorder: OutlineInputBorder(
                  borderSide: new BorderSide(color: Colors.grey, width: 1),
                  borderRadius: BorderRadius.circular(10)),
              border: OutlineInputBorder(
                  borderSide: new BorderSide(color: Colors.yellow, width: 1),
                  borderRadius: BorderRadius.circular(10)))),
    );
  }

  _listview() {
    return Container(
        color: AppColors.whitetextColor,
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                        splashColor: AppColors.appbarbackgroundColor,
                        onTap: () {
                          setState(() {
                            _index = 0;
                          });
                        },
                        child: _index == 0
                            ? Text("Upcoming",
                                style: TextStyle(
                                  color: AppColors.darktextColor,
                                  fontSize: 15,
                                  letterSpacing: 0.5,
                                  fontWeight: FontWeight.bold,
                                ))
                            : Text("Upcoming",
                                style: TextStyle(
                                  color: AppColors.lighttextColor,
                                  fontSize: 15,
                                  letterSpacing: 0.5,
                                ))),
                    InkWell(
                        splashColor: AppColors.appbarbackgroundColor,
                        onTap: () {
                          setState(() {
                            _index = 1;
                          });
                        },
                        child: _index == 1
                            ? Text("Past",
                                style: TextStyle(
                                  color: AppColors.darktextColor,
                                  fontSize: 15,
                                  letterSpacing: 0.5,
                                  fontWeight: FontWeight.bold,
                                ))
                            : Text("Past",
                                style: TextStyle(
                                  color: AppColors.lighttextColor,
                                  fontSize: 15,
                                  letterSpacing: 0.5,
                                ))),
                  ]),
            ),
            SizedBox(height: 10),
            Divider(color: Colors.grey),
            Visibility(
                visible: _index == 0,
                child: Padding(
                    padding: const EdgeInsets.only(top: 5.0),
                    child: Container(
                        child: ListView.builder(
                            scrollDirection: Axis.vertical,
                            primary: true,
                            shrinkWrap: true,
                            physics: NeverScrollableScrollPhysics(),
                            itemCount: 3,
                            itemBuilder: (BuildContext context, int index) {
                              return Padding(
                                padding: const EdgeInsets.all(2.0),
                                child: Container(
                                  child: Column(
                                    children: [
                                      Container(
                                          color: AppColors.whitetextColor,
                                          child: Padding(
                                            padding: const EdgeInsets.all(10.0),
                                            child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text("09/04/2020",
                                                      style: TextStyle(
                                                          color: AppColors
                                                              .lighttextColor,
                                                          fontSize: 12)),
                                                  SizedBox(height: 5),
                                                  Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Row(
                                                          children: [
                                                            Text(
                                                                "Dentist - Docter Name",
                                                                style:
                                                                    TextStyle(
                                                                  color: AppColors
                                                                      .darktextColor,
                                                                  letterSpacing:
                                                                      0.5,
                                                                )),
                                                            Padding(
                                                              padding:
                                                                  const EdgeInsets
                                                                          .only(
                                                                      left: 10),
                                                              child: SizedBox(
                                                                  height: 20,
                                                                  width: 20,
                                                                  child: Image
                                                                      .asset(
                                                                          "assets/images/help.png")),
                                                            ),
                                                          ],
                                                        ),
                                                        Row(
                                                          children: [
                                                            Padding(
                                                                padding:
                                                                    const EdgeInsets
                                                                            .only(
                                                                        right:
                                                                            10),
                                                                child: Icon(
                                                                    Icons
                                                                        .edit_outlined,
                                                                    color: AppColors
                                                                        .appbarbackgroundColor)),
                                                            Text("Modify",
                                                                style:
                                                                    TextStyle(
                                                                  color: AppColors
                                                                      .darktextColor,
                                                                  letterSpacing:
                                                                      0.5,
                                                                )),
                                                          ],
                                                        ),
                                                      ]),
                                                ]),
                                          )),
                                      Divider(color: Colors.grey)
                                    ],
                                  ),
                                ),
                              );
                            })))),
            Visibility(
                visible: _index == 1,
                child: Padding(
                    padding: const EdgeInsets.only(top: 5.0),
                    child: Container(
                        child: ListView.builder(
                            scrollDirection: Axis.vertical,
                            primary: true,
                            shrinkWrap: true,
                            physics: NeverScrollableScrollPhysics(),
                            itemCount: 3,
                            itemBuilder: (BuildContext context, int index) {
                              return Padding(
                                padding: const EdgeInsets.all(2.0),
                                child: Container(
                                  child: Column(
                                    children: [
                                      Container(
                                          color: AppColors.whitetextColor,
                                          child: Padding(
                                            padding: const EdgeInsets.all(10.0),
                                            child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text("09/04/2020",
                                                      style: TextStyle(
                                                          color: AppColors
                                                              .lighttextColor,
                                                          fontSize: 12)),
                                                  SizedBox(height: 5),
                                                  Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Row(
                                                          children: [
                                                            Text(
                                                                "Dentist - Docter Name",
                                                                style:
                                                                    TextStyle(
                                                                  color: AppColors
                                                                      .darktextColor,
                                                                  letterSpacing:
                                                                      0.5,
                                                                )),
                                                            Padding(
                                                              padding:
                                                                  const EdgeInsets
                                                                          .only(
                                                                      left: 10),
                                                              child: SizedBox(
                                                                  height: 20,
                                                                  width: 20,
                                                                  child: Image
                                                                      .asset(
                                                                          "assets/images/help.png")),
                                                            ),
                                                          ],
                                                        ),
                                                        // Row(
                                                        //   children: [
                                                        //     Padding(
                                                        //         padding: const EdgeInsets.only(
                                                        //             right:
                                                        //                 10),
                                                        //         child: Icon(
                                                        //             Icons.edit_outlined,
                                                        //             color: AppColors.appbarbackgroundColor)),
                                                        //     Text(
                                                        //         "Modify",
                                                        //         style:
                                                        //             TextStyle(
                                                        //           color:
                                                        //               AppColors.darktextColor,
                                                        //           letterSpacing:
                                                        //               0.5,
                                                        //         )),
                                                        //   ],
                                                        // ),
                                                      ]),
                                                ]),
                                          )),
                                      Divider(color: Colors.grey)
                                    ],
                                  ),
                                ),
                              );
                            })))),
          ]),
        ));
  }

  _newconsultationbutton() {
    return Container(
      color: AppColors.whitetextColor,
      // ignore: deprecated_member_use
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        // ignore: deprecated_member_use
        child: FlatButton(
          onPressed: () {
            Get.to(SelectSpecialityPage(),
                transition: Transition.rightToLeftWithFade,
                duration: Duration(milliseconds: 600));
          },
          child: CustomButton(
              text1: "",
              text2: "Start a new consultation",
              width: Get.width,
              height: 50),
        ),
      ),
    );
  }
}
