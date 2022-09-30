import 'package:flutter/material.dart';
import 'package:university_system/constants.dart';
import 'package:university_system/view/pages/login.dart';
import 'package:university_system/view/pages/setting.dart';

class SettingListTileItem extends StatelessWidget {
  String title;
  var page;

  SettingListTileItem({required this.title, this.page});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        title == 'Log out'
            ? showDialog(
                builder: (context) {
                  return AlertDialog(
                    content: Text('Are You Sure ?'),
                    actions: <Widget>[
                      TextButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(
                            builder: (context) {
                              return Login();
                            },
                          ));
                        },
                        child: Text(
                          'Sure',
                          style: TextStyle(color: Constants.orangetext),
                        ),
                      ),
                      TextButton(
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(
                              builder: (context) {
                                return Setting();
                              },
                            ));
                          },
                          child: Text('Cancel',
                              style:
                                  TextStyle(color: Constants.deafultcolor)))
                    ],
                    backgroundColor: Colors.white,
                    elevation: 24,
                  );
                },
                context: context,
              )
            : Navigator.push(
                context, MaterialPageRoute(builder: (context) => page));
      },
      child: ListTile(
        title: Text(title),
        trailing: Icon(
          Icons.chevron_right,
          size: 25,
        ),
      ),
    );
  }
}
