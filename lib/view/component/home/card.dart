import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:university_system/constants.dart';

Widget CardHome(
  String path,
  text,
) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      elevation: 15,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          width: 120,
          height: 100,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  decoration: BoxDecoration(shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.black12),
                  child: SvgPicture.asset(path,
                      width: 50,
                      height: 50,
                      color:
                          text == 'Section' ? Constants.deafultcolor : null)),
              Padding(padding: EdgeInsets.symmetric(vertical: 10)),
              Text("$text"),
            ],
          ),
        ),
      ),
    ),
  );
}
