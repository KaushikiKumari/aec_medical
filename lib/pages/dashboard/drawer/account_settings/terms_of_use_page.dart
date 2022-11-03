import 'package:aec_medical/utils/colors.dart';
import 'package:aec_medical/utils/strings.dart';
import 'package:aec_medical/utils/strings_style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TermsOfUsePage extends StatefulWidget {
  const TermsOfUsePage({Key? key}) : super(key: key);

  @override
  _TermsOfUsePageState createState() => _TermsOfUsePageState();
}

class _TermsOfUsePageState extends State<TermsOfUsePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.backgroundColor,
        appBar: AppBar(
          backgroundColor: AppColors.appbarbackgroundColor,
          centerTitle: true,
          title: Text(
            Strings.TERMSOFUSETITLE,
            style: StringsStyle.pagetitlestyle,
          ),
          leading: IconButton(
              onPressed: () {
                Get.back();
              },
              icon: Icon(Icons.keyboard_arrow_left_outlined, size: 30)),
        ),
        body: SingleChildScrollView(
            child: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            SizedBox(height: 30),
            _logo(),
            SizedBox(
              height: 20,
            ),
            _middilebanner(),
            SizedBox(
              height: 20,
            ),
            _description(),
          ]),
        )));
  }

  _logo() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(height: 5),
        Container(
            height: 180,
            width: 180,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/logo.png")))),
        Text(
          Strings.LOGO_TITLE,
          style: StringsStyle.redlogotitlestyle,
        ),
      ],
    );
  }

  _middilebanner() {
    return SizedBox(
      width: Get.width,
      child: Card(
          color: AppColors.appbarbackgroundColor,
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Center(
              child: Text(Strings.MIDDILEBANNERTEXT,
                  style: TextStyle(
                    color: AppColors.whitetextColor,
                    fontWeight: FontWeight.w500,
                    fontSize: 17,
                  )),
            ),
          )),
    );
  }

  _description() {
    return Column(children: [
      Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
        child: Text(
            "asda dasdada bhda asdna esa ds adc zXf zXce zsc de zs tyh , kscn aksf l zcke zxcn ithpoerp dkl asfiojpasdf dfs asfpeo zsfdclkdsof zslfjodr a sdjna askj dakj aer kdajk kajsdkaj jhdk ajsdja adj ajsdjk jakj  aueasd kjasdajk c asd akasdhakr ajaskjasdfakj asjdbajhsda ",
            style: TextStyle(
              color: Colors.black,
              fontSize: 15,
            )),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Text(
            "asda dasdada bhda asdna esa ds adc zXf zXce zsc de zs tyh , kscn aksf l zcke zxcn ithpoerp dkl asfiojpasdf dfs asfpeo zsfdclkdsof zslfjodr a sdjna askj dakj aer kdajk kajsdkaj jhdk ajsdja adj ajsdjk jakj  aueasd kjasdajk c asd akasdhakr ajaskjasdfakj asjdbajhsda ",
            style: TextStyle(
              color: Colors.black,
              fontSize: 15,
            )),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Text(
            "asda dasdada bhda asdna esa ds adc zXf zXce zsc de zs tyh , kscn aksf l zcke zxcn ithpoerp dkl asfiojpasdf dfs asfpeo zsfdclkdsof zslfjodr a sdjna askj dakj aer kdajk kajsdkaj jhdk ajsdja adj ajsdjk jakj  aueasd kjasdajk c asd akasdhakr ajaskjasdfakj asjdbajhsda ",
            style: TextStyle(
              color: Colors.black,
              fontSize: 15,
            )),
      ),
    ]);
  }
}
