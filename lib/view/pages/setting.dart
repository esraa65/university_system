import 'package:flutter/material.dart';
import 'package:university_system/constants.dart';
import 'package:university_system/view/component/home/settinglisttileitem.dart';
import 'package:university_system/view/pages/mainhome.dart';
import 'package:university_system/view/pages/support.dart';
import 'package:university_system/view/pages/ourpartnerspage.dart';
import 'package:university_system/view/pages/termsandcondition.dart';
import 'package:university_system/view/pages/faqs.dart';

class Setting extends StatelessWidget {

  List settings = [
    ["FAQ", Faqs()],
    ["Terms & Condition", TermsAndCondition()],
    ["Our Partners", OurPartnersPage()],
    ["Support", Support()],
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: BackButton(
            color: Constants.deepcolor,
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return MainHome();
            },));
          },
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text('Settings',
            style: TextStyle(color: Colors.black, fontSize: 30)),
      ),
      body: Column(
        children: [
          SettingListTileItem(
            title: 'FAQ',
            page: Faqs(),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Divider(
              color: Colors.black12,
              height: 5,
            ),
          ),
          InkWell(onTap:(){
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return TermsAndCondition();
          },));},
            child: SettingListTileItem(
              title: 'Terms & Condition',
              page: TermsAndCondition(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Divider(
              color: Colors.black12,
              height: 5,
            ),
          ),
          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return OurPartnersPage();
              },));
            },
            child: SettingListTileItem(
              title: 'Our Partners',
              page: OurPartnersPage(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Divider(
              color: Colors.black12,
              height: 5,
            ),
          ),
          InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return Support();
                  },
                ));
              },
            child: SettingListTileItem(
              title: 'Support',
              page: Support(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Divider(
              color: Colors.black12,
              height: 5,
            ),
          ),
          SettingListTileItem(
            title: 'Log out',
          )
        ],
      ),

    );
  }
}
