import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import '../../viewmodel/home/mainhome_cubit.dart';

class MainHome extends StatelessWidget {
  const MainHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<MainhomeCubit>(
        create: (context) => MainhomeCubit(),
        child: BlocConsumer<MainhomeCubit, MainhomeState>(
          listener: (context, state) {
            // TODO: implement listener
          },
          builder: (context, state) {
            MainhomeCubit myCubit = MainhomeCubit.get(context);
            return MaterialApp(debugShowCheckedModeBanner: false,
              home: Scaffold(
                body:myCubit.pages[myCubit.currenIndex],
                bottomNavigationBar: SafeArea(
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
                    child: GNav(
                      rippleColor: Colors.grey[300]!,
                      hoverColor: Colors.grey[100]!,
                      gap: 8,
                      activeColor: Colors.orange,
                      iconSize: 24,
                      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                      duration: Duration(milliseconds: 400),
                      tabBackgroundColor: Colors.grey[100]!,
                      color: Colors.black,
                      tabs: [
                        GButton(
                          icon: Icons.home_filled,
                          text: 'Home',
                        ),
                        GButton(
                          icon: Icons.newspaper,
                          text: 'News',
                        ),
                        GButton(
                          icon: Icons.settings,
                          text: 'Settings',
                        ),
                      ],
                      onTabChange: (index) {
                        myCubit.changeindex(index);
                      },
                    ),
                  ),
                ),
              ),
            );
          },
        ));
  }
}
