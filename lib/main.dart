import 'package:flutter/material.dart';
import 'login_regis/login.dart';

// import 'MoneyBox.dart';

void main() {
  runApp(MyApp());
}

//สร้าง widget
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "SupperIOT",
      home: LoginPage(),
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
    );
  }
}
