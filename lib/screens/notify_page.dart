import 'package:flutter/material.dart';

class NotifyScreens extends StatefulWidget {
  const NotifyScreens({super.key});

  @override
  State<NotifyScreens> createState() => _NotifyScreensState();
}

class _NotifyScreensState extends State<NotifyScreens> {
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
                    Text("Nontify",style: TextStyle(
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