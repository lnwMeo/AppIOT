import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../screens/setting_groupuser_page.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class GroupJoin extends StatelessWidget {
  const GroupJoin({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 3.0),
      height: 70,
      child: Card(
          color: Colors.grey.withOpacity(0.10),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
          elevation: 8,
          child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Row(
                      children: [
                        Text(
                          'CCTV 1',
                          style: GoogleFonts.prompt(
                            textStyle: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      InkWell(
                        onTap: () => {print('outgroup')},
                        child: Container(
                          child: CircleAvatar(
                              radius: 20,
                              backgroundColor: Colors.red,
                              child: Icon(
                                Icons.logout,
                                color: Colors.white,
                                size: 20,
                              )),
                        ),
                      )
                    ],
                  ),
                ],
              ))),
    );
  }
}
