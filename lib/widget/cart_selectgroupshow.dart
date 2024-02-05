import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SelectGroupshow extends StatefulWidget {
  const SelectGroupshow({super.key});

  @override
  State<SelectGroupshow> createState() => _SelectGroupshowState();
}

class _SelectGroupshowState extends State<SelectGroupshow> {
  List<String> items = [
    'Item1',
    'Item2',
    'Item3',
    'Item4',
    'Item5',
  ];
  String? slectedItem = 'Item1';

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 3.0),
      height: 60,
      child: Card(
        color: Colors.grey.withOpacity(0.10),
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
        elevation: 8,
        child: Row(
          children: <Widget>[
            Expanded(
              child: Container(
                padding: EdgeInsets.only(left: 15),
                child: Text(
                  'เลือกกลุ่ม',
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
            Expanded(
              flex: 1,
              child: Center(
                child: Text(
                  'ดร็อฟดาว',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
