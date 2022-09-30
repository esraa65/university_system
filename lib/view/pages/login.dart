import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';
import 'package:university_system/constants.dart';
import 'package:university_system/view/component/home/fielddata.dart';
import 'package:university_system/view/pages/signup.dart';
import 'package:university_system/viewmodel/login/login_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Orange',
                        style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                                color: Constants.orangetext, fontSize: 30))),
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
              BlocProvider<LoginCubit>(
                create: (context) => LoginCubit(),
                child: BlocConsumer<LoginCubit, LoginState>(
                    listener: (context, state) {},
                    builder: (context, state) {
                      LoginCubit MyloginCubit=LoginCubit.get(context);
                      return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                textAlign: TextAlign.start,
                                'Login',
                                style: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                        fontSize: 18, color: Colors.black)),
                              ),
                            ),
                            customText(
                              "email",textCt:MyloginCubit.email
                            ),
                            customText("password",textCt:MyloginCubit.pass,
                                icon: Icon(Icons.remove_red_eye)),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                'Fogot Password?',
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Constants.deafultcolor,
                                    decoration: TextDecoration.underline),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: SizedBox(
                                width: 400,
                                height: 50,
                                child: ElevatedButton(
                                    onPressed: () {
                                      MyloginCubit.login(context);
                                      showTopSnackBar(
                                        curve: Curves.bounceOut,
                                        context,
                                        CustomSnackBar.success(
                                          message:
                                          "Welcome back !",
                                        ),
                                      );
                                    },
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Constants.deepcolor,
                                      shape: new RoundedRectangleBorder(
                                        borderRadius:
                                            new BorderRadius.circular(10.0),
                                      ),
                                    ),
                                    child: Text(
                                      'Login',
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    )),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(
                                    child: Divider(
                                        color: Colors.black12, thickness: 3)),
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
                                          return SignUp();
                                        },
                                      ));
                                    },
                                    style: ElevatedButton.styleFrom(
                                      side: BorderSide(
                                          color: Constants.deepcolor, width: 2),
                                      backgroundColor: Colors.transparent,
                                      elevation: 0,
                                      shape: new RoundedRectangleBorder(
                                        borderRadius:
                                            new BorderRadius.circular(10.0),
                                      ),
                                    ),
                                    child: Text(
                                      'Sign Up',
                                      style: GoogleFonts.poppins(
                                          textStyle: TextStyle(
                                              fontSize: 20,
                                              color: Constants.deepcolor,
                                              fontWeight: FontWeight.bold)),
                                    )),
                              ),
                            )
                          ]);
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
