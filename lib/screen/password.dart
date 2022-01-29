// @dart=2.9
import 'dart:convert';
import 'package:flutter/material.dart';

import 'package:bogdzonhov/screen/login.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/otp_text_field.dart';
import 'package:otp_text_field/style.dart';

class Password extends StatefulWidget {
  @override
  _PasswordState createState() => _PasswordState();
}

class _PasswordState extends State<Password> {
  @override
  Widget build(BuildContext context) {
    double totalHeight = MediaQuery.of(context).size.height;
    double totalWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0.0,
        backgroundColor: Color(0xFFB4091E),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
        bottomOpacity: 0.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(13),
          ),
        ),
        elevation: 0.0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Stack(
              alignment: Alignment.center,
              children: <Widget>[Text('Нууц үг оруулах')],
            ),
          ],
        ),
        automaticallyImplyLeading: false,
        centerTitle: true,
        actions: <Widget>[
          Row(
            children: <Widget>[],
          )
        ],
      ),
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: _getBody(),
    );
  }

  Widget _getBody() {
    double totalHeight = MediaQuery.of(context).size.height;
    double totalWidth = MediaQuery.of(context).size.width;
    bool checkedBox = false;
    return Stack(children: <Widget>[
      Padding(
        padding:
            EdgeInsets.only(left: totalWidth * 0.1, top: totalHeight * 0.05),
        child: Text(
          'Нууц үгээ оруулна уу',
          style: TextStyle(
            fontSize: 15,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      Padding(
        padding: EdgeInsets.only(left: totalWidth * 0.1, top: totalHeight * 0),
        child: Container(
          // color: Color.fromARGB(50, 200, 50, 20),
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(
                    left: totalWidth * 0, top: totalHeight * 0.1),
                child: SizedBox(
                  height: 100,
                  width: totalWidth * 0.8,
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      hintText: 'Нууц үг',
                      hintStyle: TextStyle(color: Colors.grey),
                      filled: true,
                      fillColor: Color(0xFFF8FAFB),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide(color: Colors.grey)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide(color: Colors.grey)),
                    ),
                    cursorColor: Color(0xFF30C6CC),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      Padding(
        padding:
            EdgeInsets.only(left: totalWidth * 0.1, top: totalHeight * 0.2),
        child: Container(
          // color: Color.fromARGB(50, 200, 50, 20),
          child: Column(
            children: <Widget>[
              Padding(
                padding:
                    EdgeInsets.only(left: totalWidth * 0, top: totalHeight * 0),
                child: SizedBox(
                  height: 100,
                  width: totalWidth * 0.8,
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      hintText: 'Дахин оруулах',
                      hintStyle: TextStyle(color: Colors.grey),
                      filled: true,
                      fillColor: Color(0xFFF8FAFB),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide(color: Colors.grey)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide(color: Colors.grey)),
                    ),
                    cursorColor: Color(0xFF30C6CC),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      Positioned(
        bottom: MediaQuery.of(context).viewInsets.bottom,
        left: 30,
        right: 00,
        child: Padding(
          padding: EdgeInsets.only(
              left: totalWidth * 0.02, bottom: totalHeight * 0.05),
          child: SizedBox(
            height: 50,
            width: totalWidth * 0.8,
            child: TextButton(
                onPressed: () {
                  Navigator.push(context,
                      new MaterialPageRoute(builder: (context) => Nom()));
                },
                style: TextButton.styleFrom(
                  backgroundColor: Color(0xFFB4091E),
                  primary: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                ),
                child: Text('ҮРГЭЛЖЛҮҮЛЭХ')),
          ),
        ),
      ),
    ]);
  }
}
