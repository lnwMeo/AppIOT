import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CartTemHum extends StatelessWidget {
  const CartTemHum({super.key});

  Widget temp() {
    return Padding(
      padding: const EdgeInsets.only(left: 15),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            width: 60,
            height: 60,
            child: CircularProgressIndicator(
              value: 0.7, // กำหนดค่าที่ต้องการ
              strokeWidth: 8, // กำหนดความหนาของเส้น
              valueColor: AlwaysStoppedAnimation<Color>(Colors.indigoAccent),
              backgroundColor: Colors.indigo.shade100, // กำหนดสี
            ),
          ),
          Positioned.fill(
            child: Center(
              child: Text(
                '70%', // ข้อความที่ต้องการแสดง
                style: GoogleFonts.prompt(
                  textStyle: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget hum() {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            width: 60,
            height: 60,
            child: CircularProgressIndicator(
              value: 0.7, // กำหนดค่าที่ต้องการ
              strokeWidth: 8, // กำหนดความหนาของเส้น
              valueColor: AlwaysStoppedAnimation<Color>(Colors.amber),
              backgroundColor: Colors.amber.shade100,
              // กำหนดสี
            ),
          ),
          Positioned.fill(
            child: Center(
              child: Text(
                '70%', // ข้อความที่ต้องการแสดง
                style: GoogleFonts.prompt(
                  textStyle: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget boxtext() {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Padding(
        padding: const EdgeInsets.only(left: 10.0),
        child: Column(
          children: [
            Text(
              'Temperature && Humidity',
              style: GoogleFonts.prompt(
                textStyle: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
            SizedBox(
              height: 3,
            ),
            Text(
              'Senser 1 on Air no 1',
              style: GoogleFonts.prompt(
                textStyle: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
            SizedBox(
              height: 3,
            ),
            Row(
              children: [
                Text(
                  'Status : ',
                  style: GoogleFonts.prompt(
                    textStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
                Container(
                  height: 10, // ความสูงของเส้น
                  width: 20, // ความกว้างของเส้น
                  decoration: BoxDecoration(
                    color: Colors.green,
                    // สีของเส้น
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 3,
            ),
            Row(
              children: [
                Text(
                  'Temp : ',
                  style: GoogleFonts.prompt(
                    textStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 10,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
                Container(
                  height: 8, // ความสูงของเส้น
                  width: 20, // ความกว้างของเส้น
                  decoration: BoxDecoration(
                    color: Colors.indigoAccent,
                    // สีของเส้น
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 5.0),
                  child: Text(
                    'Hum : ',
                    style: GoogleFonts.prompt(
                      textStyle: TextStyle(
                        color: Colors.white,
                        fontSize: 10,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 8, // ความสูงของเส้น
                  width: 20, // ความกว้างของเส้น
                  decoration: BoxDecoration(
                    color: Colors.amber,
                    // สีของเส้น
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 3.0),
      height: MediaQuery.of(context).size.height * 0.14,
      child: Card(
        color: Colors.grey.withOpacity(0.10),
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
        elevation: 8,
        child: Row(children: <Widget>[
          Row(
            children: [
              temp(),
              hum(),
              boxtext(),
            ],
          )
        ]),
      ),
    );
  }
}
