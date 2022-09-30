import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:university_system/view/pages/news.dart';
import 'package:university_system/view/pages/setting.dart';
import 'package:university_system/view/pages/home.dart';
part 'mainhome_state.dart';

class MainhomeCubit extends Cubit<MainhomeState> {
  int currenIndex = 0;
  List<Widget> pages = [Home() , News(), Setting()];
  MainhomeCubit() : super(MainhomeInitial());
  static MainhomeCubit get(context)=>BlocProvider.of(context);
   void changeindex(newindex){
     currenIndex=newindex;
     emit(IndexChanged());
   }
}
