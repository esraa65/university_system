import 'package:flutter/material.dart';
import 'package:university_system/constants.dart';
import 'package:google_fonts/google_fonts.dart';

class NewsCard extends StatelessWidget {
  String title;

  NewsCard(this.title);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        color: Colors.black12,
        child: Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height / 3,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Constants.deepcolor,
                      ),
                      child: Row(
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon:
                                Icon(Icons.share_rounded, color: Colors.white),
                          ),
                          Container(height:MediaQuery.of(context).size.height/20,color: Colors.white,width: 2),
                          IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.copy_rounded,
                                color: Colors.white,
                              )),
                        ],
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text('Orange',
                        style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                                color: Colors.deepOrange, fontSize: 30))),
                    Text('Digital Center',
                        style: GoogleFonts.poppins(
                            textStyle:
                                TextStyle(color: Colors.black, fontSize: 30)))
                  ],
                ),
                Text(
                  'ODCs Supports All University',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Colors.white),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
