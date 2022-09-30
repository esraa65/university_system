import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:university_system/viewmodel/database/network/dio_helper.dart';

import '../../view/pages/mainhome.dart';
import '../database/network/end_points.dart';

part 'sign_state.dart';

class SignCubit extends Cubit<SignState> {
  SignCubit() : super(SignInitial());
  static SignCubit get(context)=>BlocProvider.of(context);
  TextEditingController email = TextEditingController();
  TextEditingController pass = TextEditingController();
  TextEditingController name = TextEditingController();
  TextEditingController number = TextEditingController();
  void signup(context){
    var data = {"email": email.text, "password": pass.text,"name":name.text,"number":number.text};

    DioHelper.postData(url: registerEndPoint, data: data) .then((value)  {
      print(value.data);
      if(value.statusCode == 200){
        Navigator.push(context, MaterialPageRoute(builder:(context){
          return MainHome();
        }));
      }
    })
        .catchError((erorr) {
      print(erorr);
    });
  }

}
