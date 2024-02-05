import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../widget/cart_groupuser.dart';

class GroupUser extends StatelessWidget {
  var height, width;

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.black,
          iconTheme: IconThemeData(color: Colors.white),
          title: Text(
            'จัดการกลุ่ม',
            style: GoogleFonts.prompt(
              textStyle: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.normal,
              ),
            ),
          ),
          actions: []),
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: EdgeInsets.only(left: 15, top: 15),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'ห้อง SERVER 1',
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
                      Container(
                        padding: EdgeInsets.only(top: 18, right: 15),
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Row(
                            children: [
                              Icon(
                                Icons.add,
                                size: 20,
                                color: Colors.white,
                              ),
                              SizedBox(width: 3),
                              Text(
                                'เพิ่ม',
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
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                                Colors.green.shade800),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      CardGroupUser(),
                      CardGroupUser(),
                      CardGroupUser(),
                      CardGroupUser(),
                      CardGroupUser(),
                      CardGroupUser(),
                      CardGroupUser(),
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
