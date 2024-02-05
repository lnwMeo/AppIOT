import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../screens/setting_groupuser_page.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class GroupName extends StatelessWidget {
  const GroupName({super.key});

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
                          'SERVER 1',
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
                        onTap: () => {
                          // Navigator.push(
                          //     context,
                          //     MaterialPageRoute(
                          //         builder: (context) => GroupUser()))
                        },
                        child: Container(
                            child: CircleAvatar(
                          backgroundColor: Colors.lightGreen.shade900,
                          radius: 20,
                          child: Icon(
                            FontAwesomeIcons.line,
                            color: Colors.white,
                            size: 20,
                          ),
                        )),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      InkWell(
                        onTap: () => {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => GroupUser()))
                        },
                        child: Container(
                            child: CircleAvatar(
                          backgroundColor: Colors.green,
                          radius: 20,
                          child: Icon(
                            Icons.edit,
                            color: Colors.white,
                            size: 20,
                          ),
                        )),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      InkWell(
                        onTap: () => {print('delete')},
                        child: Container(
                          child: CircleAvatar(
                              radius: 20,
                              backgroundColor: Colors.red,
                              child: Icon(
                                Icons.delete,
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
