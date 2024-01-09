import 'package:flutter/material.dart';


class HomeScereen extends StatelessWidget {
  const HomeScereen({super.key});

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
        ],
      ),
    );
  }
}
