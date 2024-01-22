import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CartDetctWater extends StatelessWidget {
  const CartDetctWater({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 3.0, vertical: 3.0),
      // height: MediaQuery.of(context).size.height * 0.8,
      // width: 100,
      child: Card(
        color: Colors.grey.withOpacity(0.10),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
        elevation: 8,
        child: Row(
          children: <Widget>[
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 14),
                  child: Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Colors.grey),
                    child: Icon(
                      Icons.water, // ใส่ไอคอนที่ต้องการ
                      color: Colors.white, // สีของไอคอน
                      size: 30, // ขนาดของไอคอน
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 8),
                    child: Column(
                      children: [
                        Text(
                          'Detect Water',
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
                          'Senser 1',
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
                      ],
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
    // รายการอื่น ๆ ที่คุณต้องการ
  }
}
