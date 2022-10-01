import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:university_system/constants.dart';
import 'package:university_system/view/component/home/lecturecarditem.dart';
import 'package:university_system/view/pages/mainhome.dart';
import 'package:university_system/viewmodel/midterm/midterm_cubit.dart';

class Final extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => MidtermCubit()..GetMiddata(),
      child: BlocConsumer<MidtermCubit, MidtermState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          MidtermCubit MyMidTermCubit = MidtermCubit.get(context);

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
                'Final',
                style: TextStyle(
                    color: Constants.black,
                    fontSize: 30,
                    fontWeight: FontWeight.w500),
              ),
              actions: [
                PopupMenuButton(itemBuilder: (context) =>
                [
                  PopupMenuItem(child: Text(' All Final'),),
                  PopupMenuItem(child: Text(' Finished Final')),
                  PopupMenuItem(child: Text(' Remaining Final')),
                ]
                  ,icon:Icon(Icons.filter_alt,color: Constants.deepcolor,size: 30,),
                )
              ],
            ),
            body:  Padding(
              padding: const EdgeInsets.all(8.0),
              child: MyMidTermCubit.MyMidtermModel == null
                  ? Center(
                  child: CircularProgressIndicator(
                    color: Constants.deepcolor,
                  ))
                  : ListView.builder(
                itemBuilder: (context, index) {
                  return MyMidTermCubit
                      .MyMidtermModel!.data![index].isFinal ==
                      true
                      ? LectureCardItem(
                      title: MyMidTermCubit
                          .MyMidtermModel!.data![index].examSubject
                          .toString(),
                      lectureday: MyMidTermCubit
                          .MyMidtermModel!.data![index].examDate
                          .toString(),
                      starttime: MyMidTermCubit
                          .MyMidtermModel!.data![index].examStartTime
                          .toString(),
                      endtime: MyMidTermCubit
                          .MyMidtermModel!.data![index].examEndTime
                          .toString())
                      : SizedBox();
                },
                itemCount: MyMidTermCubit.MyMidtermModel!.data!.length,
                shrinkWrap: true,
              ),
            ),

          );
        },
      ),
    );
  }
}
