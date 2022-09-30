import 'dart:async';

import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:university_system/constants.dart';
import 'package:university_system/view/pages/login.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(milliseconds: 3000),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => Login())));
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Expanded(
        child: Container(
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    Text(
                      'Orange ',
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w500,
                          color: Constants.orangetext,
                          decoration: TextDecoration.none),
                    ),
                    Text(
                      ' Digital Center',
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w500,
                          decoration: TextDecoration.none),
                    )
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                child: LinearPercentIndicator(
                  backgroundColor: Colors.black12,
                  width: MediaQuery.of(context).size.width - 40,
                  progressColor: Colors.deepOrangeAccent,
                  lineHeight: 10.0,
                  animation: true,
                  animationDuration: 1600,
                  barRadius: Radius.circular(10),
                  percent: 1.0,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
