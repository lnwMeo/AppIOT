import 'package:flutter/material.dart';
import '../screens/AppbarFE.dart';
// import '../widget/cart_notifyWater.dart';
// import '../widget/cart_notifysmoke.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:sticky_headers/sticky_headers.dart';
// import '../widget/cart_notifyaddgroup.dart';

class Addscreens extends StatelessWidget {
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
                            'เพิ่มเซนเซอร์',
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
                      SizedBox(
                        height: 5,
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 40),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'ใส่ Key เพื่อเพิ่มเซนเซอร์',
                            style: GoogleFonts.prompt(
                              textStyle: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.5),
                                spreadRadius: 4,
                                blurRadius: 1,
                                offset: Offset(0, 3),
                              ),
                            ],
                            borderRadius: BorderRadius.circular(15),
                          ),
                          // decoration: kBoxDecorationStyle,
                          height: 40.0,
                          child: TextField(
                            keyboardType: TextInputType.text,
                            style: TextStyle(color: Colors.white),
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.only(top: 5.0),
                              prefixIcon: Icon(
                                Icons.vpn_key_sharp,
                                color: Colors.white,
                              ),
                              hintText: 'Key Senser',
                              hintStyle: TextStyle(color: Colors.grey.shade500),
                              // hintStyle: kHintTextStyle,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      ElevatedButton(
                        // onPressed: () => print('Login Pressed'),
                        onPressed: () {
                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(
                          //       builder: (context) => BottonNav()),
                          // );
                        },
                        child: Text(
                          'ยืนยัน',
                          style: GoogleFonts.prompt(
                            textStyle: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ),
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                              Colors.green.shade800),
                        ),
                      ),
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




// import 'package:flutter/material.dart';

// class Addscreens extends StatefulWidget {
//   const Addscreens({super.key});

//   @override
//   State<Addscreens> createState() => _AddscreensState();
// }

// class _AddscreensState extends State<Addscreens> {
//   @override
//   Widget build(BuildContext context) {
//        return Scaffold(
//       body: Stack(
//         children: [
//           Container(
//             height: double.infinity,
//             width: double.infinity,
//             decoration: BoxDecoration(
//               gradient: LinearGradient(
//                 begin: Alignment.topCenter,
//                 end: Alignment.bottomCenter,
//                 colors: [
//                   Color(0xFF000000),
//                   Color(0xFF1A237E),
//                 ],
//               ),
//             ),
//           ),
//           Container(
//             height: double.infinity,
//             child: SingleChildScrollView(
//               physics: AlwaysScrollableScrollPhysics(),
//               padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 200.0),
//               child: Center(
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: <Widget>[
//                     Text("Add",style: TextStyle(
//                         color: Colors.white,
//                         fontFamily: "OpenSans",
//                         fontSize: 50.0,
//                         fontWeight: FontWeight.w500,
//                         fontStyle: FontStyle.italic,
//                       ),)
//                   ],
//                 )),
//             ),
//           )
//         ],
//       ),
//       //  bottomNavigationBar: BottonNav(),
//     );
//   }
// }