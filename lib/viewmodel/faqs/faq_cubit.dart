import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:university_system/constants.dart';
import 'package:university_system/model/faqsmodel/faqs.dart';
import 'package:university_system/view/pages/faqs.dart';
import 'package:university_system/viewmodel/database/network/dio_helper.dart';
import 'package:university_system/viewmodel/database/network/end_points.dart';

part 'faq_state.dart';

class FaqCubit extends Cubit<FaqState> {
  FaqCubit() : super(FaqInitial());

  FAQs? Faqmodel;

  static FaqCubit get(context) => BlocProvider.of(context);

  void GetFAQ() {
    DioHelper.getData(
      url: faqEndPoint,
      token: accesstoken,
    ).then(
        (value) => {Faqmodel = FAQs.fromJson(value.data), emit(FaqChanged())});
  }
}
