import 'package:flutter/material.dart';
import 'package:expansion_widget/expansion_widget.dart';
import 'package:simple_html_css/simple_html_css.dart';
import 'dart:math'as math;

import '../../../constants.dart';

Widget FaqCard ({required String Question,required String Answer,required BuildContext context}){
  return  ExpansionWidget(
      initiallyExpanded: false,
      titleBuilder: (double animationValue, _, bool isExpaned,
          toogleFunction) {
        return InkWell(
            onTap: () => toogleFunction(animated: true),
            child: Container(
              decoration: BoxDecoration(
                  color: Constants.deepcolor,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20),
                      topLeft: Radius.circular(20))),
              child: Padding(
                padding: EdgeInsets.all(8),
                child: Row(
                    crossAxisAlignment:
                    CrossAxisAlignment.center,
                    children: [
                      Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: RichText(
                              text: HTML.toTextSpan(
                                  context,
                                  Question,
                                  defaultTextStyle: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      decoration:
                                      TextDecoration.none)),
                            ),
                          )),
                      Transform.rotate(
                        angle: math.pi * animationValue / 1,
                        child: Icon(
                          Icons.arrow_drop_up,
                          size: 40,
                          color: Colors.black,
                        ),
                        alignment: Alignment.center,
                      )
                    ]),
              ),
            ));
      },
      content: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            color: Colors.black38,
            borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(20),
                bottomLeft: Radius.circular(20))),
        padding: EdgeInsets.all(20),
        child: RichText(
          text: HTML.toTextSpan(context,
             Answer.toString(),
              defaultTextStyle: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  decoration: TextDecoration.none)),
        ),
      ));
}