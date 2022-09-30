import 'package:flutter/material.dart';
import 'package:university_system/constants.dart';
import 'package:university_system/view/pages/mainhome.dart';

class Notes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton:  FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
        backgroundColor: Colors.grey,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
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
          'Notes',
          style: TextStyle(
              color: Constants.black,
              fontSize: 30,
              fontWeight: FontWeight.w500),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(Icons.filter_alt_sharp, color: Constants.deepcolor))
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
              child: Text(
            'No Data To Show',
            style: TextStyle(
                color: Colors.grey, fontSize: 20, fontWeight: FontWeight.w500),
          )),

        ],
      ),
    );
  }
}
