import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CardGroupUser extends StatelessWidget {
  const CardGroupUser({super.key});

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
                        CircleAvatar(
                            radius: 20,
                            backgroundImage:
                                AssetImage("assets/images/pic1.png")),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'tset',
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
