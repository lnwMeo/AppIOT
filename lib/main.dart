import 'package:flutter/material.dart';
import 'screens/login_regis/login.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/services.dart';
// import './screens/bottonnav.dart';

// import 'MoneyBox.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
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
