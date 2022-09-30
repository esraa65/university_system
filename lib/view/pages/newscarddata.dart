import "package:flutter/material.dart";
import 'package:university_system/constants.dart';
import 'package:university_system/view/pages/news.dart';

class NewsCardData extends StatelessWidget {
  String urltoimg;
  String title;
  String description;

  NewsCardData(this.urltoimg, this.title, this.description);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.white,
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(height: MediaQuery.of(context).size.height/4,
                  child: Card(
                    shape:
                        RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                    child: Column(crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              InkWell(onTap: (){
                                Navigator.push(context, MaterialPageRoute(
                                    builder: (context){return News();}
                                ));
                              },
                                  child: Icon(Icons.arrow_back_ios,color: Constants.deafultcolor,)),

                            ],
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Row(mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text('Orange ',style: TextStyle(fontSize: 25,fontWeight:FontWeight.w500,color: Constants.orangetext),),
                                Text(' Digital Center',style: TextStyle(fontSize: 25,fontWeight: FontWeight.w500),),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),

                  ),

                ),
                Column(crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  Text('ODCs',style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),),
                  Text('1/10/2001',style: TextStyle(fontSize: 10,color: Constants.deafultcolor),),
                ],),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                    Text('ODC Supports All Universties',style: TextStyle(fontSize: 20,color: Colors.black26),)
                  ],),
                )
              ],
            ),
          )),
    );
  }
}
