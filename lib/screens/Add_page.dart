import 'package:flutter/material.dart';

class Addscreens extends StatefulWidget {
  const Addscreens({super.key});

  @override
  State<Addscreens> createState() => _AddscreensState();
}

class _AddscreensState extends State<Addscreens> {
  @override
  Widget build(BuildContext context) {
       return Scaffold(
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xFF000000),
                  Color(0xFF1A237E),
                ],
              ),
            ),
          ),
          Container(
            height: double.infinity,
            child: SingleChildScrollView(
              physics: AlwaysScrollableScrollPhysics(),
              padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 200.0),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text("Add",style: TextStyle(
                        color: Colors.white,
                        fontFamily: "OpenSans",
                        fontSize: 50.0,
                        fontWeight: FontWeight.w500,
                        fontStyle: FontStyle.italic,
                      ),)
                  ],
                )),
            ),
          )
        ],
      ),
      //  bottomNavigationBar: BottonNav(),
    );
  }
}