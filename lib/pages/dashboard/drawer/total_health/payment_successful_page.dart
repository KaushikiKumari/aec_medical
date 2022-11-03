import 'package:flutter/material.dart';

class PaymentSuccessfulPage extends StatefulWidget {
  const PaymentSuccessfulPage({Key? key}) : super(key: key);

  @override
  _PaymentSuccessfulPageState createState() => _PaymentSuccessfulPageState();
}

class _PaymentSuccessfulPageState extends State<PaymentSuccessfulPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: CircleAvatar(
            radius: 100,
            backgroundColor: Colors.green[100],
            child: Center(
              child: Container(
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/images/paymentsuccess.png"),
                          fit: BoxFit.cover))),
            ),
          ),
        ),
      ),
    );
  }
}
