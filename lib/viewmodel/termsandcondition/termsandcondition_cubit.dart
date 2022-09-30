import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:university_system/constants.dart';
import 'package:university_system/model/termsandcondition/termsandcondition.dart';
import 'package:university_system/viewmodel/database/network/dio_helper.dart';
import 'package:university_system/viewmodel/database/network/end_points.dart';

part 'termsandcondition_state.dart';

class TermsandconditionCubit extends Cubit<TermsandconditionState> {
  TermsandconditionCubit() : super(TermsandconditionInitial());
  String ? htmlContent;



  static TermsandconditionCubit get(context)=>BlocProvider.of(context);
  TermsAndCondition ?termsmodel;
  void GetTermsData(){
    DioHelper.getData(url: termsEndPoint,token: accesstoken).then((value) {
      termsmodel= TermsAndCondition.fromJson(value.data);
      htmlContent = termsmodel!.data!.terms;
      emit(TermsandconditionChanged());

    });
  }
}
