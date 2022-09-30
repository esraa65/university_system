
import 'package:flutter/material.dart';
import 'package:university_system/constants.dart';
import 'package:university_system/view/pages/mainhome.dart';
import 'package:table_calendar/table_calendar.dart';
class EventDate extends StatelessWidget {
  const EventDate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 10,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Constants.deepcolor,
          ),
          onPressed: (() {
            Navigator.push(context, MaterialPageRoute(
              builder: (context) {
                return MainHome();
              },
            ));
          }),
        ),
        title: Text(
          'MidTerms',
          style: TextStyle(
              color: Constants.black,
              fontSize: 20),
        ),

      ),
      body: Column(children: [
      TableCalendar(
      firstDay: DateTime.utc(2010, 10, 16),
      lastDay: DateTime.utc(2030, 3, 14),
      focusedDay: DateTime.now(),
    )
      ],),
    );
  }
}
