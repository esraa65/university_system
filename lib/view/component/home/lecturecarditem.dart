import 'package:flutter/material.dart';


class LectureCardItem extends StatelessWidget {
  String title;
  String  lectureday;
  String starttime;
  String endtime;
  String ? lecturedata;
  LectureCardItem({required
      this.title, required this.lectureday,required  this.starttime, required this.endtime, lecturedata});

  @override
  Widget build(BuildContext context) {
    return Padding(

      padding: const EdgeInsets.all(8.0),
      child: Container(margin: EdgeInsets.all(8),
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),
        width: double.infinity,
        height: MediaQuery.of(context).size.height / 6,
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(title,style: TextStyle(fontSize: 20),),
                    Row(children: [
                      Icon(Icons.alarm,color: Colors.black,),
                      Text("2hrs")
                    ],)
                  ],
                ),
                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Lecture day',style: TextStyle(color: Colors.black38,fontWeight: FontWeight.bold),),
                      Row(children: [
                        Icon(Icons.calendar_month_sharp),
                        Text(lectureday)
                      ],)
                    ],),
                  Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Start time',style: TextStyle(color: Colors.black38,fontWeight: FontWeight.bold)),
                      Row(children: [
                        Icon(Icons.alarm,color: Colors.green,),
                        Text(starttime)
                      ],)
                    ],),
                  Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('End time',style: TextStyle(color: Colors.black38,fontWeight: FontWeight.bold)),
                      Row(children: [
                        Icon(Icons.alarm,color: Colors.pinkAccent,),
                        Text(endtime)
                      ],)
                    ],),

                ],)
              ],
            ),
          ),
        ),
      ),
    );
  }

}


