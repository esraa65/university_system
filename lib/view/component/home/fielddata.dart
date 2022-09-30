import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:university_system/constants.dart';

Widget customText(String word ,{TextEditingController? textCt, Icon ? icon ,var fielddata}){

  return Container(
    decoration:BoxDecoration(borderRadius: BorderRadius.circular(12)),
    child: Padding(
      padding: const EdgeInsets.all(12.0),

      child: TextFormField(onChanged: (value) =>fielddata ,
       controller:textCt ,
        decoration: InputDecoration(
          suffixIcon: icon ?? null ,
            hintText: word,
          focusedBorder:OutlineInputBorder(
            borderSide: const BorderSide(color: Constants.deafultcolor, width: 2.0),
            borderRadius: BorderRadius.circular(15.0),
          ),
        enabledBorder:OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.grey, width: 2.0),
          borderRadius: BorderRadius.circular(15.0),
        ) ),

      ),
    ),
  );

}