import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:university_system/constants.dart';
import 'package:university_system/view/pages/setting.dart';
import 'package:university_system/viewmodel/faqs/faq_cubit.dart';
import 'package:expansion_widget/expansion_widget.dart';
import 'package:simple_html_css/simple_html_css.dart';

import 'dart:math' as math;

class Faqs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => FaqCubit()..GetFAQ(),
      child: BlocConsumer<FaqCubit, FaqState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          FaqCubit myFaqCubit = FaqCubit.get(context);
          return Scaffold(
              appBar: AppBar(
                leading: BackButton(
                  color: Colors.black,
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return Setting();
                      },
                    ));
                  },
                ),
                centerTitle: true,
                backgroundColor: Colors.transparent,
                elevation: 0,
                title: Text('FAQs',
                    style: TextStyle(color: Colors.black, fontSize: 20)),
              ),
              body: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: myFaqCubit.Faqmodel == null
                      ? Center(child: CircularProgressIndicator(color: Constants.deepcolor,)):



                  ExpansionWidget(
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
                                              myFaqCubit
                                                  .Faqmodel!.data![0].question
                                                  .toString(),
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
                          textAlign: TextAlign.center,
                          text: HTML.toTextSpan(context,
                              myFaqCubit.Faqmodel!.data![0].answer.toString(),
                              defaultTextStyle: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  decoration: TextDecoration.none)),
                        ),
                      ))));
        },
      ),
    );
  }
}
