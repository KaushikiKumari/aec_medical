import 'package:aec_medical/utils/colors.dart';
import 'package:aec_medical/utils/strings.dart';
import 'package:aec_medical/utils/strings_style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HelpPage extends StatefulWidget {
  const HelpPage({Key? key}) : super(key: key);

  @override
  _HelpPageState createState() => _HelpPageState();
}

class _HelpPageState extends State<HelpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.backgroundColor,
        appBar: AppBar(
          backgroundColor: AppColors.appbarbackgroundColor,
          centerTitle: true,
          title: Text(
            Strings.HELPPAGETITLE,
            style: StringsStyle.pagetitlestyle,
          ),
          leading: IconButton(
              onPressed: () {
                Get.back();
              },
              icon: Icon(Icons.keyboard_arrow_left_outlined, size: 30)),
        ),
        body: SingleChildScrollView(
            child: Column(children: [
          SizedBox(height: 10),
          Card(
            color: AppColors.whitetextColor,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(Strings.ONLINE_CONSULTATION,
                      style: TextStyle(
                        color: AppColors.darktextColor,
                        fontSize: 15,
                      )),
                  IconButton(
                      onPressed: null,
                      icon: Icon(Icons.keyboard_arrow_right_outlined,
                          color: AppColors.darktextColor, size: 30))
                ],
              ),
            ),
          ),
          Card(
            color: AppColors.whitetextColor,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(Strings.FEEDBACK,
                      style: TextStyle(
                        color: AppColors.darktextColor,
                        fontSize: 15,
                      )),
                  IconButton(
                      onPressed: null,
                      icon: Icon(Icons.keyboard_arrow_right_outlined,
                          color: AppColors.darktextColor, size: 30))
                ],
              ),
            ),
          ),
          Card(
            color: AppColors.whitetextColor,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(Strings.TOTALHEALTHCONCEPT,
                      style: TextStyle(
                        color: AppColors.darktextColor,
                        fontSize: 15,
                      )),
                  IconButton(
                      onPressed: null,
                      icon: Icon(Icons.keyboard_arrow_right_outlined,
                          color: AppColors.darktextColor, size: 30))
                ],
              ),
            ),
          ),
          Card(
            color: AppColors.whitetextColor,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(Strings.HEALTHSCORE,
                      style: TextStyle(
                        color: AppColors.darktextColor,
                        fontSize: 15,
                      )),
                  IconButton(
                      onPressed: null,
                      icon: Icon(Icons.keyboard_arrow_right_outlined,
                          color: AppColors.darktextColor, size: 30))
                ],
              ),
            ),
          ),
        ])));
  }
}
