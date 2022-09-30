import 'package:flutter/material.dart';
import 'package:university_system/constants.dart';
import 'package:university_system/view/component/home/newscard.dart';
import 'package:university_system/view/pages/home.dart';
import 'package:university_system/view/pages/mainhome.dart';
import 'package:university_system/view/pages/newscarddata.dart';
class News extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
            color: Constants.deepcolor,
          onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return MainHome();
              },));
          },
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text(
          'news',
          style: TextStyle(
              color: Constants.black,
              fontWeight: FontWeight.bold,
              fontSize: 26),
        ),
      ),
      body: Column(children: [
        InkWell(onTap: (){
          Navigator.push(context, MaterialPageRoute(
            builder: (context) {
              return NewsCardData('Orangr Digital Center', 'ODC', 'OD Supports All University');


            },
          ));

        },
            child: NewsCard('ODCs'))
      ],)
    );
  }
}
