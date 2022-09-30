import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:university_system/constants.dart';
import 'package:university_system/view/component/home/fielddata.dart';
import 'package:university_system/view/pages/login.dart';
import 'package:university_system/view/pages/mainhome.dart';
import 'package:university_system/viewmodel/signup/sign_cubit.dart';


class SignUp extends StatefulWidget {
  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  List<String> Genderlist = ['Female', 'Male'];


  @override
  Widget build(BuildContext context) {
    String firstitem = Genderlist.first;
    return BlocProvider(
      create: (context) => SignCubit()..signup(context),
      child: BlocConsumer<SignCubit, SignState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          SignCubit MySigncubit = SignCubit.get(context);
          return Scaffold(
              body: SafeArea(
                  child: SingleChildScrollView(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Orange',
                        style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                                color: Colors.deepOrange, fontSize: 30))),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Digital Center',
                        style: GoogleFonts.poppins(
                            textStyle:
                                TextStyle(color: Colors.black, fontSize: 30))),
                  )
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      textAlign: TextAlign.start,
                      'Sign Up',
                      style: GoogleFonts.poppins(
                          textStyle:
                              TextStyle(fontSize: 18, color: Colors.black)),
                    ),
                  ),
                  customText("Name", textCt: MySigncubit.name),
                  customText("E-mail", textCt: MySigncubit.email),
                  customText("password",
                      textCt: MySigncubit.pass,
                      icon: Icon(Icons.remove_red_eye)),
                  customText("Re-enter password",
                      textCt: MySigncubit.pass,
                      icon: Icon(Icons.remove_red_eye)),
                  customText("phone Number", textCt: MySigncubit.number),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              'Gender',
                              style: TextStyle(fontSize: 18),
                            ),
                            Text(
                              'University',
                              style: TextStyle(fontSize: 18),
                            ),
                          ],
                        ),
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            ElevatedButton.icon(
                              label: Text(
                                'Female',
                                style: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                  fontSize: 20,
                                  color: Constants.black,
                                )),
                              ),
                              icon: Icon(
                                Icons.arrow_drop_down,
                                color: Colors.black38,
                                size: 24.0,
                              ),
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(
                                  builder: (context) {
                                    return SignUp();
                                  },
                                ));
                              },
                              style: ElevatedButton.styleFrom(
                                side: BorderSide(
                                    color: Constants.bordershape, width: 2),
                                backgroundColor: Colors.transparent,
                                elevation: 0,
                                shape: new RoundedRectangleBorder(
                                  borderRadius: new BorderRadius.circular(10.0),
                                ),
                              ),
                            ),
                            ElevatedButton.icon(
                              label: Text(
                                'USA',
                                style: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                  fontSize: 20,
                                  color: Constants.black,
                                )),
                              ),
                              icon: Icon(
                                Icons.arrow_drop_down,
                                color: Colors.black38,
                                size: 24.0,
                              ),
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(
                                  builder: (context) {
                                    return SignUp();
                                  },
                                ));
                              },
                              style: ElevatedButton.styleFrom(
                                side: BorderSide(
                                    color: Constants.bordershape, width: 2),
                                backgroundColor: Colors.transparent,
                                elevation: 0,
                                shape: new RoundedRectangleBorder(
                                  borderRadius: new BorderRadius.circular(10.0),
                                ),
                              ),
                            ),
                          ])
                    ],
                  ),
                ],
              ),
              Column(
                children: [
                  Text('Grade', style: TextStyle(fontSize: 18)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [

                      ElevatedButton.icon(
                        label: Text(
                          'Grade 1',
                          style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                            fontSize: 20,
                            color: Constants.black,
                          )),
                        ),
                        icon: Icon(
                          Icons.arrow_drop_down,
                          color: Colors.black38,
                          size: 24.0,
                        ),
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          side: BorderSide(
                              color: Constants.bordershape, width: 2),
                          backgroundColor: Colors.transparent,
                          elevation: 0,
                          shape: new RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(10.0),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: SizedBox(
                  width: 400,
                  height: 50,
                  child: ElevatedButton(
                      onPressed: () {
                        MySigncubit.signup(context);
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Constants.deepcolor,
                        shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(10.0),
                        ),
                      ),
                      child: Text(
                        'Sign Up',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      )),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(child: Divider(color: Colors.black12, thickness: 3)),
                  Text('  OR  ', style: TextStyle(fontSize: 30)),
                  Expanded(
                      child: Divider(
                    height: 10,
                    color: Colors.black12,
                    thickness: 3,
                  )),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: SizedBox(
                  width: 400,
                  height: 50,
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return Login();
                          },
                        ));
                      },
                      style: ElevatedButton.styleFrom(
                        side: BorderSide(color: Constants.deepcolor, width: 2),
                        backgroundColor: Colors.transparent,
                        elevation: 0,
                        shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(10.0),
                        ),
                      ),
                      child: Text(
                        'Login',
                        style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                                fontSize: 20,
                                color: Constants.deepcolor,
                                fontWeight: FontWeight.bold)),
                      )),
                ),
              ),
            ]),
          )));
        },
      ),
    );
  }
}


