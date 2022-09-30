import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:university_system/viewmodel/database/network/dio_helper.dart';
import 'package:university_system/viewmodel/database/network/end_points.dart';
import 'package:university_system/constants.dart';

import '../../model/lecturemodel/lecturemodel.dart';

part 'lecture_state.dart';



class LectureCubit extends Cubit<LectureState> {
  LectureCubit() : super(LectureInitial());
  static LectureCubit  get(context)=>BlocProvider.of(context);
  LectureModel ? dataModel;
  void GetDataLecture(){
    DioHelper.getData(url: lectureEndPoint,token: accesstoken).then((value) {
     dataModel = LectureModel.fromJson(value.data);
     emit(Lecturechanged());
    });
  }

}
