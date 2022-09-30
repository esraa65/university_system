import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:university_system/constants.dart';
import 'package:university_system/view/component/home/lecturecarditem.dart';
import 'package:university_system/view/pages/mainhome.dart';
import 'package:university_system/viewmodel/setion/section_cubit.dart';

class Section extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SectionCubit()..GetDataSection(),
      child: BlocConsumer<SectionCubit, SectionState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          SectionCubit MySectionCubit=SectionCubit.get(context);

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
                'Section',
                style: TextStyle(color: Constants.black,
                    fontSize: 30,
                    fontWeight: FontWeight.w500),
              ),
              actions: [
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                        Icons.filter_alt_sharp, color: Constants.deepcolor))
              ],
            ),
            body:
            Padding(
              padding: const EdgeInsets.all(8.0),
              child:MySectionCubit.SectionModel==null?
              Center(child: CircularProgressIndicator(color: Constants.deepcolor,)):
              ListView.builder(itemBuilder: (context, index) {
                return LectureCardItem(
                    title: MySectionCubit.SectionModel!.data![index].sectionSubject.toString(),
                    lectureday: 'sunday',
                    starttime: MySectionCubit.SectionModel!.data![index].sectionStartTime.toString(),
                    endtime: MySectionCubit.SectionModel!.data![index].sectionEndTime.toString(),
                    lecturedata:MySectionCubit.SectionModel!.data![index].sectionDate.toString() );
              },shrinkWrap: true,itemCount: MySectionCubit.SectionModel!.data!.length,

              ),
            ),
          );
        },
      ),
    );
  }
}
// LectureCardItem('Flutter', 'wednesday', '12:00pm', '2:00pm', 2),
// LectureCardItem('React', 'thursday', '12:00pm', '2:00pm', 2),
//  LectureCardItem('Vue', 'thursday', '12:00pm', '2:00pm', 2),