import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:university_system/constants.dart';
import 'package:university_system/view/pages/setting.dart';
import 'package:university_system/view/component/home/fielddata.dart';

class Support extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
                return Setting();
              },
            ));
          }),
        ),
        title: Text(
          'Support',
          style: TextStyle(
              color: Constants.black,
              fontSize: 30,
              fontWeight: FontWeight.w500),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            customText("Name", icon: Icon(Icons.person,color: Constants.deepcolor,)),
            customText("E-Mail", icon: Icon(Icons.mail,color: Constants.deepcolor,)),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: TextFormField(
                maxLines: 6,
                decoration: InputDecoration(
                    hintText: "What's making you happy",
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                          color: Constants.deafultcolor, width: 2.0),
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(color: Colors.grey, width: 2.0),
                      borderRadius: BorderRadius.circular(15.0),
                    )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox( width: 350,
                height: 50,
                child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      side: BorderSide(
                          color: Constants.deepcolor,
                          width: MediaQuery.of(context).size.width / 2),
                      backgroundColor: Constants.deepcolor,
                      elevation: 0,
                      shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(10.0),
                      ),
                    ),
                    child: Text(
                      'submit',
                      style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.bold)),
                    )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
