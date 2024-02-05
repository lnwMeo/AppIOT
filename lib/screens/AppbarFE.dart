import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppbarFE extends StatelessWidget {
  const AppbarFE({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(),
      child: Column(children: [
        Padding(
          padding: EdgeInsets.only(top: 35, left: 15, right: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'I-tec',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Row(
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.white,
                        image: DecorationImage(
                            image: AssetImage("assets/images/pic1.png"))),
                  ),
                  Padding(padding: EdgeInsets.only(left: 8.0)),
                  Column(
                    children: [
                      Text(
                        'Hi!! Meo CH',
                        style: GoogleFonts.prompt(
                          textStyle: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                      Text(
                        'ID : xxxxxx',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w300,
                            fontStyle: FontStyle.italic),
                      )
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
