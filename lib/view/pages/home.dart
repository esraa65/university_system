import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:university_system/view/component/home/card.dart';
import 'package:university_system/view/pages/lectures.dart';
import 'package:university_system/view/pages/midterm.dart';
import 'package:university_system/view/pages/notes.dart';
import 'package:university_system/view/pages/section.dart';
import 'package:university_system/view/pages/eventdate.dart';
import 'package:university_system/view/pages/final.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SingleChildScrollView(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Orange',
                            style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                    color: Colors.deepOrange, fontSize: 30))),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Digital Center',
                            style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                    color: Colors.black, fontSize: 30))),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(children: [
                          InkWell(
                              onTap: () {
                                Navigator.push(context, MaterialPageRoute(
                                  builder: (context) {
                                    return Lecture();
                                  },
                                ));
                              },
                              child: CardHome(
                                  "assets/icons/lecture.svg", 'Lecture')),
                          InkWell(
                              onTap: () {
                                Navigator.push(context, MaterialPageRoute(
                                  builder: (context) {
                                    return Midterm();
                                  },
                                ));
                              },
                              child: CardHome(
                                  "assets/icons/midterm.svg", 'Midterms')),
                          InkWell(onTap: (){
                            Navigator.push(context, MaterialPageRoute(
                              builder: (context) {
                                return EventDate();
                              },
                            ));
                          },
                              child: CardHome("assets/icons/event.svg", 'Events')),
                        ]),
                        Column(
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.push(context, MaterialPageRoute(
                                  builder: (context) {
                                    return Section();
                                  },
                                ));
                              },
                              child: CardHome(
                                "assets/icons/sections.svg",
                                "Section",
                              ),
                            ),
                            InkWell(onTap: (){
                              Navigator.push(context, MaterialPageRoute(
                                builder: (context) {
                                  return Final();
                                },
                              ));
                            },
                                child: CardHome("assets/icons/final.svg", "final")),
                            InkWell(
                                onTap: () {
                                  Navigator.push(context, MaterialPageRoute(
                                    builder: (context) {
                                      return Notes();
                                    },
                                  ));
                                },
                                child: CardHome(
                                    "assets/icons/notes.svg", "Notes")),
                          ],
                        ),
                      ],
                    ),
                  ),
                ])));
  }
}
