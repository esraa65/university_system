import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:university_system/view/pages/mainhome.dart';
import 'package:university_system/viewmodel/database/network/dio_helper.dart';
import 'package:university_system/viewmodel/database/network/end_points.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitial());

  static LoginCubit get(context) => BlocProvider.of(context);
  TextEditingController email = TextEditingController();
  TextEditingController pass = TextEditingController();

  void login(context) {
    var data = {"email": email.text, "password": pass.text};
    DioHelper.postData(
      url: loginEndPoint,
      data: data,
    )
        .then((value)  {
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
