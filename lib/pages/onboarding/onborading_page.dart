import 'package:aec_medical/main.dart';
import 'package:aec_medical/pages/onboarding/onboarding_content_page.dart';
import 'package:aec_medical/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoardingPage extends StatefulWidget {
  @override
  _OnBoardingPageState createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  int currentIndex = 0;
  late PageController _controller;

  @override
  void initState() {
    _controller = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              controller: _controller,
              itemCount: contents.length,
              onPageChanged: (int index) {
                setState(() {
                  currentIndex = index;
                });
              },
              itemBuilder: (_, i) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(40, 50, 40, 20),
                          child: Container(
                            height: 300,
                            width: MediaQuery.of(context).size.width / 1,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(contents[i].image),
                                  fit: BoxFit.fill),
                            ),
                          ),
                        ),
                        SizedBox(height: 0),
                        Text(
                          contents[i].title,
                          style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.w900,
                              color: AppColors.darktextColor),
                        ),
                        SizedBox(height: 10),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text(
                            contents[i].discription,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: AppColors.darktextColor,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 100, 20, 40),
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: List.generate(
                      contents.length,
                      (index) => buildDot(index, context),
                    ),
                  ),
                  GestureDetector(
                      onTap: () {
                        Get.to(Homepage(),
                            transition: Transition.upToDown,
                            duration: Duration(milliseconds: 600));
                      },
                      child: Container(
                          child: currentIndex == 0 || currentIndex == 1
                              ? Text("Skip")
                              : Text("Start")))
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Container buildDot(int index, BuildContext context) {
    return Container(
      alignment: Alignment.topLeft,
      height: 10,
      width: 10,
      margin: EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          color:
              currentIndex == index ? AppColors.darktextColor : Colors.black12),
    );
  }
}
