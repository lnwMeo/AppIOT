import 'package:flutter/material.dart';
import '../screens/AppbarFE.dart';
import '../widget/cart_notifyWater.dart';
import '../widget/cart_notifysmoke.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sticky_headers/sticky_headers.dart';
import '../widget/cart_notifyaddgroup.dart';

class NotifyScreens extends StatelessWidget {
  var height, width;
  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                Color(0xFF000000),
                Color(0xFF1A237E),
              ])),
          height: height,
          width: width,
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 80.0),
              child: SafeArea(
                  child: Column(
                children: [
                  AppbarFE(),
                  Column(
                    children: [
                      Container(
                        padding: EdgeInsets.only(left: 15, top: 18),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'การแจ้งเตือน',
                            style: GoogleFonts.prompt(
                              textStyle: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ),
                        ),
                      ),
                      CardNotifyWater(),
                      CardNotifySmoke(),
                      CardNotifySmoke(),
                      CardNotifyAddgrop(),
                      CardNotifyAddgrop(),
                      CardNotifyAddgrop(),
                    ],
                  )
                ],
              )),
            ),
          ),
        ),
      ),
    );
  }
}
