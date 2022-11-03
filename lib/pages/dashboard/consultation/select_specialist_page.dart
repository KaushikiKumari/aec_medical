import 'package:aec_medical/utils/colors.dart';
import 'package:aec_medical/utils/strings.dart';
import 'package:aec_medical/utils/strings_style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SelectSpecialistPage extends StatefulWidget {
  const SelectSpecialistPage({Key? key}) : super(key: key);

  @override
  _SelectSpecialistPageState createState() => _SelectSpecialistPageState();
}

class _SelectSpecialistPageState extends State<SelectSpecialistPage> {
  String enable = "List";
  List<String> name = [
    "Kidney & Urine",
    "General Physician",
    "Stomach & Diagestion",
    "Dermatology",
    "Psychaiatry",
    "Gynaecology",
  ];
  List<String> SelectedList = ["0", "0", "0", "0", "0", "0"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
        backgroundColor: AppColors.appbarbackgroundColor,
        centerTitle: true,
        title: Text(
          "Select specialists",
          style: StringsStyle.pagetitlestyle,
        ),
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: Icon(Icons.keyboard_arrow_left_outlined, size: 30)),
      ),
      body: Column(
        children: [
          Container(
              height: 70,
              width: Get.width / 1,
              child: Padding(
                padding: const EdgeInsets.only(right: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text("View",
                        style: TextStyle(
                          color: AppColors.darktextColor,
                          fontSize: 15,
                          letterSpacing: 0.3,
                          fontWeight: FontWeight.w500,
                        )),
                    IconButton(
                        onPressed: () {
                          setState(() {
                            enable = enable == "List" ? "Grid" : "List";
                          });
                        },
                        icon: Icon(
                          enable == "List" ? Icons.grid_view : Icons.view_list,
                          size: 30,
                        ))
                  ],
                ),
              )),
          Expanded(
              child: enable == "List"
                  ? getListViewContext()
                  : getGridViewContext()),
        ],
      ),
    );
  }

  Widget getListViewContext() {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: ListView.builder(
          itemCount: name.length,
          itemBuilder: (BuildContext context, index) {
            return InkWell(
              onTap: () {
                setState(() {
                  SelectedList[index] = SelectedList[index] == "0" ? "1" : "0";
                });
              },
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Card(
                    elevation: 3,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                Icon(
                                  SelectedList[index] == "0"
                                      ? Icons.circle_outlined
                                      : Icons.album,
                                  size: 25,
                                  color: SelectedList[index] == "0"
                                      ? Colors.black
                                      : Colors.red,
                                ),
                                Text("   " + name[index],
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: AppColors.darktextColor,
                                      fontSize: 15,
                                      letterSpacing: 0.3,
                                      fontWeight: FontWeight.w500,
                                    )),
                              ])),
                          Container(
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: AppColors.redColor),
                              alignment: Alignment.center,
                              child: Padding(
                                padding: const EdgeInsets.all(10),
                                child: Icon(Icons.person,
                                    size: 30, color: Colors.white),
                              )),
                        ],
                      ),
                    )),
              ),
            );
          }),
    );
  }

  Widget getGridViewContext() {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10),
      child: GridView.count(
        crossAxisCount: 3,
        mainAxisSpacing: 5,
        crossAxisSpacing: 5,
        childAspectRatio: 1,
        children: List.generate(name.length, (index) {
          return Card(
              elevation: 3,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              color: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: Colors.red),
                      alignment: Alignment.center,
                      child: Padding(
                        padding: const EdgeInsets.all(15),
                        child:
                            Icon(Icons.person, size: 30, color: Colors.white),
                      )),
                  Center(
                    child: Text(name[index],
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: AppColors.darktextColor,
                          letterSpacing: 0.3,
                          fontWeight: FontWeight.w500,
                        )),
                  ),
                ],
              ));
        }),
      ),
    );
  }
}
