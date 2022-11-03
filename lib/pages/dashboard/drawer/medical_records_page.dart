import 'dart:io';

import 'package:aec_medical/controller/medical_record_add_controller.dart';
import 'package:aec_medical/custom/custom_button.dart';
import 'package:aec_medical/utils/colors.dart';
import 'package:aec_medical/utils/strings.dart';
import 'package:aec_medical/utils/strings_style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class MedicalRecordsPage extends StatefulWidget {
  @override
  _MedicalRecordsPageState createState() => _MedicalRecordsPageState();
}

class _MedicalRecordsPageState extends State<MedicalRecordsPage> {
  final medicalRecordsAddController = Get.put(MedicalRecordsAddController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
        backgroundColor: AppColors.appbarbackgroundColor,
        centerTitle: true,
        title: Text(
          Strings.MEDICALRECORDSTITLE,
          style: StringsStyle.pagetitlestyle,
        ),
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: Icon(Icons.keyboard_arrow_left_outlined, size: 30)),
      ),
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        _showPicker(context);
                      },
                      child: Obx(
                        () => medicalRecordsAddController
                                    .selectedImagePath.value ==
                                ''
                            ? Image.asset("assets/images/medical_records.png")
                            : Image.file(
                                File(medicalRecordsAddController
                                    .selectedImagePath.value),
                                fit: BoxFit.cover,
                              ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(Strings.MEDICALHEADING,
                        style: StringsStyle.medicalheadingstyle),
                    SizedBox(
                      height: 10,
                    ),
                    Text(Strings.MEDICALSUBHEADING1,
                        style: StringsStyle.medicalsubheadingstyle),
                    Text(Strings.MEDICALSUBHEADING2,
                        style: StringsStyle.medicalsubheadingstyle),
                  ],
                ),
                _addrecordbutton(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  _addrecordbutton() {
    return FlatButton(
      onPressed: () {
        _showPicker(context);
      },
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: CustomButton(
            text1: "", text2: "Add a record", width: Get.width, height: 50),
      ),
    );
  }
}

void _showPicker(context) {
  final signupController = Get.put(MedicalRecordsAddController());
  showModalBottomSheet(
      isDismissible: true,
      context: context,
      builder: (BuildContext bc) {
        return SafeArea(
          child: Container(
            child: new Wrap(
              children: <Widget>[
                Container(
                  child: Text(
                    "Add a record",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      color: AppColors.darktextColor,
                    ),
                  ),
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(top: 15),
                ),
                Center(
                  child: Container(
                    height: 2,
                    width: 95,
                    color: AppColors.appbarbackgroundColor,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                new ListTile(
                    leading: new Image.asset("assets/images/camera.png"),
                    title: new Text(
                      'Take A photo',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: AppColors.darktextColor,
                      ),
                    ),
                    onTap: () {
                      signupController.getImage(ImageSource.camera);
                      Navigator.of(context).pop();
                    }),
                new ListTile(
                  leading: new Image.asset("assets/images/image.png"),
                  title: new Text(
                    'Upload from Gallery',
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: AppColors.darktextColor),
                  ),
                  onTap: () {
                    signupController.getImage(ImageSource.gallery);
                    Navigator.of(context).pop();
                  },
                ),
                new ListTile(
                    leading: new Image.asset("assets/images/upload.png"),
                    title: new Text(
                      'Upload Files',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: AppColors.darktextColor,
                      ),
                    ),
                    onTap: () {
                      signupController.getImage(ImageSource.gallery);
                      Navigator.of(context).pop();
                    }),
              ],
            ),
          ),
        );
      });
}
