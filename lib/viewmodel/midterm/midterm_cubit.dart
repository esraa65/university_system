import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:university_system/constants.dart';
import 'package:university_system/model/midtermmodel/midtermmodel.dart';
import 'package:university_system/viewmodel/database/network/dio_helper.dart';
import 'package:university_system/viewmodel/database/network/end_points.dart';

part 'midterm_state.dart';

class MidtermCubit extends Cubit<MidtermState> {
  MidtermCubit() : super(MidtermInitial());
  static MidtermCubit get(context) => BlocProvider.of(context);
  MidtermModel? MyMidtermModel;
  void GetMiddata() {
    DioHelper.getData(url: examsEndPoint, token: accesstoken).then((value) {
      MyMidtermModel = MidtermModel.fromJson(value.data);
      emit(MidtermChanged());
    });
  }
}
