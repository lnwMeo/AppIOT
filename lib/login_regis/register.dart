import 'package:flutter/material.dart';
import 'login.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  Widget _buildEmailRE() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Register',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.normal,
            color: Colors.white,
          ),
        ),
        SizedBox(height: 15.0),
        Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.3),
                spreadRadius: 4,
                blurRadius: 1,
                offset: Offset(0, 3),
              ),
            ],
            borderRadius: BorderRadius.circular(15),
          ),
          // decoration: kBoxDecorationStyle,
          height: 50.0,
          child: TextField(
            keyboardType: TextInputType.emailAddress,
            style: TextStyle(color: Colors.white),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 14.0),
              prefixIcon: Icon(
                Icons.email,
                color: Colors.white,
              ),
              hintText: 'Email',
              hintStyle: TextStyle(color: Colors.grey.shade500),
              // hintStyle: kHintTextStyle,
            ),
          ),
        )
      ],
    );
  }

  Widget _buildPasswordRE() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.3),
                spreadRadius: 4,
                blurRadius: 1,
                offset: Offset(0, 3),
              ),
            ],
            borderRadius: BorderRadius.circular(15),
          ),
          // decoration: kBoxDecorationStyle,
          height: 50.0,
          child: TextField(
            obscureText: true,
            style: TextStyle(color: Colors.white),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 14.0),
              prefixIcon: Icon(
                Icons.lock,
                color: Colors.white,
              ),
              hintText: 'Password',
              hintStyle: TextStyle(color: Colors.grey.shade500),
              // hintStyle: kHintTextStyle,
            ),
          ),
        )
      ],
    );
  }

  Widget _builConfirmPasswordRE() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.3),
                spreadRadius: 4,
                blurRadius: 1,
                offset: Offset(0, 3),
              ),
            ],
            borderRadius: BorderRadius.circular(15),
          ),
          // decoration: kBoxDecorationStyle,
          height: 50.0,
          child: TextField(
            obscureText: true,
            style: TextStyle(color: Colors.white),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 14.0),
              prefixIcon: Icon(
                Icons.lock,
                color: Colors.white,
              ),
              hintText: 'Confirm Password',
              hintStyle: TextStyle(color: Colors.grey.shade500),
              // hintStyle: kHintTextStyle,
            ),
          ),
        )
      ],
    );
  }

  Widget _builRegisterbutton() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 5.0),
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () => print('Register Pressed'),
        child: Text(
          'REGISTER',
          style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
              fontFamily: 'OpenSans'),
        ),
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(Colors.blueAccent),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: <Widget>[
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
                Text(
                  "i-tec",
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: "OpenSans",
                    fontSize: 50.0,
                    fontWeight: FontWeight.w500,
                    fontStyle: FontStyle.italic,
                  ),
                ),
                SizedBox(height: 30.0),
                _buildEmailRE(),
                SizedBox(height: 15.0),
                _buildPasswordRE(),
                SizedBox(height: 15.0),
                _builConfirmPasswordRE(),
                SizedBox(height: 15.0),
                _builRegisterbutton()
              ],
            )),
          ),
        )
      ],
    ));
  }
}
