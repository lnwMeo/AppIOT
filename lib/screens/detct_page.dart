import 'package:flutter/material.dart';
import '../screens/AppbarFE.dart';
import '../widget/cart_detctwater.dart';
import '../widget/cart_detctsmok.dart';
import 'package:google_fonts/google_fonts.dart';

class DetctScreens extends StatelessWidget {
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
                            'เซ็นเซอร์ตรวจจับน้ำ',
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
                      GridView.count(
                        crossAxisCount: 2,
                        crossAxisSpacing: 1.0,
                        mainAxisSpacing: 0.8,
                        childAspectRatio: 1 / 0.6,
                        shrinkWrap:
                            true, // ให้ GridView ปรับขนาดตามเนื้อที่ที่จำเป็น
                        physics:
                            NeverScrollableScrollPhysics(), // ปิดการเลื่อนของ GridView เอง
                        children: [
                          CartDetctWater(),
                          CartDetctWater(),
                          CartDetctWater(),
                        ],
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 15, top: 18),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'เซ็นเซอร์ตรวจจับควัน',
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
                      GridView.count(
                        crossAxisCount: 2,
                        crossAxisSpacing: 1.0,
                        mainAxisSpacing: 0.8,
                        childAspectRatio: 1 / 0.6,
                        shrinkWrap:
                            true, // ให้ GridView ปรับขนาดตามเนื้อที่ที่จำเป็น
                        physics: NeverScrollableScrollPhysics(),
                        children: [
                          CartDetctSmoke(),
                          CartDetctSmoke(),
                        ],
                      )
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
