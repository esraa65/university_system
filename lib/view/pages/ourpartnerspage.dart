import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:university_system/constants.dart';
import 'package:university_system/view/pages/setting.dart';

class OurPartnersPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: BackButton(
          color: Constants.deepcolor,
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(
              builder: (context) {
                return Setting();
              },
            ));
          },
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 10,
        title: Text('Our Partners',
            style: TextStyle(color: Colors.black, fontSize: 20)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter, end: Alignment.bottomCenter,colors: [Colors.white,
              Colors.black12]),
              borderRadius: BorderRadius.circular(40)),
          height: MediaQuery.of(context).size.height / 3,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'ODC',
                      style: TextStyle(color: Colors.white, fontSize: 29),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Orange ',
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.w500,
                            color: Constants.orangetext),
                      ),
                      Text(
                        ' Digital Center',
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
