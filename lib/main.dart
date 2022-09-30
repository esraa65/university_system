import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:university_system/view/component/home/splashscreen.dart';

import 'package:university_system/viewmodel/database/network/dio_helper.dart';
void main()async {
  await DioHelper.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This component is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          textTheme: GoogleFonts.latoTextTheme(Theme.of(context).textTheme)),
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
      );
  }
}
