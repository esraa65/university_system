import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:university_system/constants.dart';
import 'package:university_system/view/component/home/lecturecarditem.dart';
import 'package:university_system/view/pages/mainhome.dart';
import 'package:university_system/viewmodel/lecture/lecture_cubit.dart';


class Lecture extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LectureCubit()..GetDataLecture(),
      child: BlocConsumer<LectureCubit, LectureState>(
          listener: (context, state) {},
          builder: (context, state) {
            LectureCubit MylectureCubit = LectureCubit.get(context);
            return Scaffold(
                appBar: AppBar(
                  centerTitle: true,
                  backgroundColor: Colors.white,
                  elevation: 10,
                  leading: IconButton(
                    icon: Icon(
                      Icons.arrow_back_ios,
                      color: Constants.deepcolor,
                    ),
                    onPressed: (() {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) {
                          return MainHome();
                        },
                      ));
                    }),
                  ),
                  title: Text(
                    'Lectures',
                    style: TextStyle(
                        color: Constants.black,
                        fontSize: 30,
                        fontWeight: FontWeight.w500),
                  ),
                  actions: [

                    PopupMenuButton(itemBuilder: (context) =>
                    [
                      PopupMenuItem(child: Text(' All Lecture'),),
                      PopupMenuItem(child: Text(' Finished Lecture')),
                      PopupMenuItem(child: Text(' Remaining Lecture')),
                    ]
                      ,icon:Icon(Icons.filter_alt,color: Constants.deepcolor,),
                    )
                  ],
                ),
                body: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: MylectureCubit.dataModel == null
                      ? Center(child: CircularProgressIndicator(color: Constants.deepcolor,))
                      : ListView.separated(
                        itemBuilder: (context, index) {
                          return LectureCardItem(
                            title: MylectureCubit
                                .dataModel!.data![index].lectureSubject
                                .toString(),
                            lectureday: 'wednesday',
                            starttime:MylectureCubit
                                .dataModel!.data![index].lectureStartTime.toString() ,
                            endtime:MylectureCubit
                                .dataModel!.data![index].lectureEndTime.toString() ,
                            lecturedata:MylectureCubit
                                .dataModel!.data![index].lectureDate.toString() ,
                          );
                        },
                        separatorBuilder: (context, index) {
                          return SizedBox(
                            height: 30,
                          );
                        },
                        itemCount:MylectureCubit
                            .dataModel!
                            .data!
                            .length,
                        shrinkWrap: true,
                      ),
                ));
          }),
    );
  }
}
