import 'package:aec_medical/custom/custom_button.dart';
import 'package:aec_medical/utils/colors.dart';
import 'package:aec_medical/utils/strings.dart';
import 'package:aec_medical/utils/strings_style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EditMyAccountPage extends StatefulWidget {
  const EditMyAccountPage({Key? key}) : super(key: key);

  @override
  _EditMyAccountPageState createState() => _EditMyAccountPageState();
}

class _EditMyAccountPageState extends State<EditMyAccountPage> {
  final _formKey = GlobalKey<FormState>();
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
          _editimagebody(),
          _editprofilebody(),
        ])))));
  }

  _headingcard() {
    return Container(
      width: Get.width,
      child: Card(
          elevation: 5,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5.0),
          ),
          child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(children: [
                CircleAvatar(radius: 40),
                SizedBox(width: 20),
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Text("Hello ANURAG,",
                      style: TextStyle(
                          color: AppColors.darktextColor,
                          fontWeight: FontWeight.w500,
                          fontSize: 16)),
                  SizedBox(height: 5),
                  Text("How're you today?",
                      style: TextStyle(
                          color: AppColors.darktextColor, fontSize: 12)),
                ]),
              ]))),
    );
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

  _editimagebody() {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text("Update",
                  style: TextStyle(
                      color: AppColors.darktextColor,
                      fontWeight: FontWeight.w500,
                      fontSize: 15)),
              SizedBox(height: 2),
              Text("Profile picture",
                  style: TextStyle(
                      color: AppColors.darktextColor,
                      fontWeight: FontWeight.w500,
                      fontSize: 15)),
            ]),
            Stack(
              children: [
                CircleAvatar(
                    radius: 40,
                    backgroundColor: Colors.white,
                    child: Container(
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                    "assets/images/editprofile.png"))))),
                Positioned(
                  left: 10,
                  right: 10,
                  top: 10,
                  bottom: 10,
                  child: Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/images/upload.png")))),
                )
              ],
            ),
          ]),
        )
      ]),
    );
  }

  _editprofilebody() {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Form(
          key: _formKey,
          child: Column(children: [
            Container(
                height: 50,
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
                    Colors.white70,
                  ]),
                  borderRadius: BorderRadius.circular(8),
                ),
                alignment: Alignment.bottomLeft,
                child: TextFormField(
                  keyboardType: TextInputType.text,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  textAlignVertical: TextAlignVertical.bottom,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
                    errorBorder:
                        new OutlineInputBorder(borderSide: BorderSide.none),
                    labelText: "Name",
                    labelStyle: TextStyle(
                      color: AppColors.lighttextColor,
                      fontSize: 14,
                    ),
                  ),
                  validator: (value) {
                    if (value!.trim().isEmpty) {
                      return "Please, enter your name";
                    }

                    return null;
                  },
                )),
            SizedBox(
              height: 15,
            ),
            Container(
                height: 50,
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
                    Colors.white70,
                  ]),
                  borderRadius: BorderRadius.circular(8),
                ),
                alignment: Alignment.bottomLeft,
                child: TextFormField(
                  keyboardType: TextInputType.number,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  textAlignVertical: TextAlignVertical.bottom,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
                    errorBorder:
                        new OutlineInputBorder(borderSide: BorderSide.none),
                    labelText: "Mobile number",
                    labelStyle: TextStyle(
                      color: AppColors.lighttextColor,
                      fontSize: 14,
                    ),
                  ),
                  validator: (value) {
                    if (value!.trim().isEmpty) {
                      return "Please, enter your mobile number";
                    }
                    if (value.trim().length < 10) {
                      return "mobile number have must be atleast 10 digits";
                    }
                    return null;
                  },
                )),
            SizedBox(height: 15),
            Container(
                height: 50,
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
                    Colors.white70,
                  ]),
                  borderRadius: BorderRadius.circular(8),
                ),
                alignment: Alignment.bottomLeft,
                child: TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  textAlignVertical: TextAlignVertical.bottom,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
                    errorBorder:
                        new OutlineInputBorder(borderSide: BorderSide.none),
                    labelText: "Email Id",
                    labelStyle: TextStyle(
                      color: AppColors.lighttextColor,
                      fontSize: 14,
                    ),
                  ),
                  validator: (value) {
                    if (value!.trim().isEmpty) {
                      return "Please, enter your emailid";
                    }

                    return null;
                  },
                )),
            SizedBox(height: 15),
            Container(
                height: 50,
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
                    Colors.white70,
                  ]),
                  borderRadius: BorderRadius.circular(8),
                ),
                alignment: Alignment.bottomLeft,
                child: TextFormField(
                  keyboardType: TextInputType.text,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  textAlignVertical: TextAlignVertical.bottom,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
                    errorBorder:
                        new OutlineInputBorder(borderSide: BorderSide.none),
                    labelText: "Gender",
                    labelStyle: TextStyle(
                      color: AppColors.lighttextColor,
                      fontSize: 14,
                    ),
                  ),
                  validator: (value) {
                    if (value!.trim().isEmpty) {
                      return "Please, enter your gender";
                    }

                    return null;
                  },
                )),
            SizedBox(height: 15),
            Container(
                height: 50,
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
                    Colors.white70,
                  ]),
                  borderRadius: BorderRadius.circular(8),
                ),
                alignment: Alignment.bottomLeft,
                child: TextFormField(
                  keyboardType: TextInputType.text,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  textAlignVertical: TextAlignVertical.bottom,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
                    errorBorder:
                        new OutlineInputBorder(borderSide: BorderSide.none),
                    labelText: "Date Of Birth",
                    labelStyle: TextStyle(
                      color: AppColors.lighttextColor,
                      fontSize: 14,
                    ),
                  ),
                  validator: (value) {
                    if (value!.trim().isEmpty) {
                      return "Please, enter your date of birth";
                    }

                    return null;
                  },
                )),
            SizedBox(height: 15),
            Container(
                height: 50,
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
                    Colors.white70,
                  ]),
                  borderRadius: BorderRadius.circular(8),
                ),
                alignment: Alignment.bottomLeft,
                child: TextFormField(
                  keyboardType: TextInputType.text,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  textAlignVertical: TextAlignVertical.bottom,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
                    errorBorder:
                        new OutlineInputBorder(borderSide: BorderSide.none),
                    labelText: "Blood Group",
                    labelStyle: TextStyle(
                      color: AppColors.lighttextColor,
                      fontSize: 14,
                    ),
                  ),
                  validator: (value) {
                    if (value!.trim().isEmpty) {
                      return "Please, enter your blood group";
                    }

                    return null;
                  },
                )),
            SizedBox(height: 15),
            Container(
                height: 50,
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
                    Colors.white70,
                  ]),
                  borderRadius: BorderRadius.circular(8),
                ),
                alignment: Alignment.bottomLeft,
                child: TextFormField(
                  keyboardType: TextInputType.text,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  textAlignVertical: TextAlignVertical.bottom,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
                    errorBorder:
                        new OutlineInputBorder(borderSide: BorderSide.none),
                    labelText: "Material Status",
                    labelStyle: TextStyle(
                      color: AppColors.lighttextColor,
                      fontSize: 14,
                    ),
                  ),
                  validator: (value) {
                    if (value!.trim().isEmpty) {
                      return "Please, enter your material status";
                    }

                    return null;
                  },
                )),
            SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                    height: 50,
                    width: Get.width / 2.3,
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
                        Colors.white70,
                      ]),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    alignment: Alignment.bottomLeft,
                    child: TextFormField(
                      keyboardType: TextInputType.text,
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      textAlignVertical: TextAlignVertical.bottom,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 15.0),
                        errorBorder:
                            new OutlineInputBorder(borderSide: BorderSide.none),
                        labelText: "Height",
                        labelStyle: TextStyle(
                          color: AppColors.lighttextColor,
                          fontSize: 14,
                        ),
                      ),
                      validator: (value) {
                        if (value!.trim().isEmpty) {
                          return "Please, enter your height";
                        }

                        return null;
                      },
                    )),
                Container(
                    height: 50,
                    width: Get.width / 2.3,
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
                        Colors.white70,
                      ]),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    alignment: Alignment.bottomLeft,
                    child: TextFormField(
                      keyboardType: TextInputType.text,
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      textAlignVertical: TextAlignVertical.bottom,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 15.0),
                        errorBorder:
                            new OutlineInputBorder(borderSide: BorderSide.none),
                        labelText: "Weight",
                        labelStyle: TextStyle(
                          color: AppColors.lighttextColor,
                          fontSize: 14,
                        ),
                      ),
                      validator: (value) {
                        if (value!.trim().isEmpty) {
                          return "Please, enter your weight";
                        }

                        return null;
                      },
                    )),
              ],
            ),
            SizedBox(height: 15),
            Container(
                height: 50,
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
                    Colors.white70,
                  ]),
                  borderRadius: BorderRadius.circular(8),
                ),
                alignment: Alignment.bottomLeft,
                child: TextFormField(
                  keyboardType: TextInputType.number,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  textAlignVertical: TextAlignVertical.bottom,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
                    errorBorder:
                        new OutlineInputBorder(borderSide: BorderSide.none),
                    labelText: "Emergency Contact",
                    labelStyle: TextStyle(
                      color: AppColors.lighttextColor,
                      fontSize: 14,
                    ),
                  ),
                  validator: (value) {
                    if (value!.trim().isEmpty) {
                      return "Please, enter your emergency contact";
                    }
                    if (value.trim().length < 10) {
                      return "mobile number have must be atleast 10 digits";
                    }
                    return null;
                  },
                )),
            SizedBox(height: 15),
            Container(
                height: 50,
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
                    Colors.white70,
                  ]),
                  borderRadius: BorderRadius.circular(8),
                ),
                alignment: Alignment.bottomLeft,
                child: TextFormField(
                  keyboardType: TextInputType.text,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  textAlignVertical: TextAlignVertical.bottom,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
                    errorBorder:
                        new OutlineInputBorder(borderSide: BorderSide.none),
                    labelText: "Location",
                    labelStyle: TextStyle(
                      color: AppColors.lighttextColor,
                      fontSize: 14,
                    ),
                  ),
                  validator: (value) {
                    if (value!.trim().isEmpty) {
                      return "Please, enter your location";
                    }

                    return null;
                  },
                )),
            SizedBox(height: 30),
            FlatButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    Get.back();
                    Get.snackbar("Profile Updated", "profile changese saved",
                        backgroundColor: AppColors.whitetextColor,
                        borderRadius: 10,
                        boxShadows: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.4),
                            spreadRadius: 1,
                            blurRadius: 3,
                            offset: Offset(0, 3),
                          ),
                        ],
                        snackPosition: SnackPosition.BOTTOM,
                        margin: EdgeInsets.all(10),
                        colorText: AppColors.appbarbackgroundColor,
                        forwardAnimationCurve: Curves.bounceInOut);
                  }
                },
                child: CustomButton(
                    text1: "",
                    text2: "Save Changes",
                    width: Get.width,
                    height: 50)),
          ])),
    );
  }
}
