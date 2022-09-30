import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:university_system/constants.dart';
import 'package:university_system/model/sectionmodel/sectionmodel.dart';
import 'package:university_system/viewmodel/database/network/dio_helper.dart';
import 'package:university_system/viewmodel/database/network/end_points.dart';

part 'section_state.dart';

class SectionCubit extends Cubit<SectionState> {
  SectionCubit() : super(SectionInitial());
  static SectionCubit get(context)=>BlocProvider.of(context);
  sectionmodel? SectionModel;
  void GetDataSection(){
    DioHelper.getData(url: sectionEndPoint,token: accesstoken).then((value)  {
      SectionModel=sectionmodel.fromJson(value.data);
      emit(SectionChanged());
    });
  }
}
