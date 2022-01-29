// @dart=2.9
import 'dart:convert';
import 'package:flutter/material.dart';

import 'package:bogdzonhov/screen/login.dart';
import 'package:bogdzonhov/screen/password.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/otp_text_field.dart';
import 'package:otp_text_field/style.dart';

class Otp extends StatefulWidget {
  @override
  _OtpState createState() => _OtpState();
}

class _OtpState extends State<Otp> {
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
              children: <Widget>[Text('Бүртгүүлэх')],
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
            EdgeInsets.only(left: totalWidth * 0.02, top: totalHeight * 0.0),
        child: Container(
          // color: Color.fromARGB(50, 200, 50, 20),
          child: Column(
            children: <Widget>[],
          ),
        ),
      ),
      Padding(
        padding:
            EdgeInsets.only(left: totalWidth * 0.01, top: totalHeight * 0.0),
        child: Container(
          // color: Color.fromARGB(50, 200, 50, 20),
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(
                    left: totalWidth * 0.07,
                    top: totalHeight * 0.08,
                    right: 0.1),
                child: Text(
                  'Таны утсанд ирсэн 4 оронтой тоогоор өөрийн утсыг баталгаажуулна уу',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    decorationStyle: TextDecorationStyle.wavy,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      Padding(
        padding: EdgeInsets.only(
            left: totalWidth * 0.15,
            top: totalHeight * 0.151,
            right: totalWidth * 0.15),
        child: OTPTextField(
          length: 4,
          width: MediaQuery.of(context).size.width,
          fieldWidth: 50,
          fieldStyle: FieldStyle.box,
          style: TextStyle(fontSize: 17),
          textFieldAlignment: MainAxisAlignment.spaceAround,
          onCompleted: (pin) {
            print("Completed: " + pin);
          },
        ),
      ),
      Padding(
        padding: EdgeInsets.only(
          left: totalWidth * 0.42,
          top: totalHeight * 0.281,
        ),
        child: Text(
          '02:00',
          style: TextStyle(
            color: Color(0xFFF6AC19),
            fontSize: 22,
            fontWeight: FontWeight.bold,
            decorationStyle: TextDecorationStyle.wavy,
          ),
        ),
      ),
      Padding(
        padding:
            EdgeInsets.only(left: totalWidth * 0.28, top: totalHeight * 0.34),
        child: Container(
          height: 60,
          width: 200,
          decoration: BoxDecoration(
            border: Border.all(color: Color(0xFFF6AC19), width: 2),
            borderRadius: BorderRadius.circular(15),
          ),
          child: TextButton(
            onPressed: () {
              Navigator.push(
                  context, new MaterialPageRoute(builder: (context) => Nom()));
            },
            style: TextButton.styleFrom(
              backgroundColor: Colors.white,
              primary: Color(0xFF127EE2),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
            ),
            child: Text(
              'Дахин код авах ',
              style: TextStyle(
                color: Color(0xFFF6AC19),
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
      Positioned(
        bottom: MediaQuery.of(context).viewInsets.bottom,
        left: 30,
        right: 30,
        child: Padding(
          padding: EdgeInsets.only(
              left: totalWidth * 0.02, bottom: totalHeight * 0.05),
          child: SizedBox(
            height: 50,
            width: totalWidth * 0.8,
            child: TextButton(
                onPressed: () {
                  Navigator.push(context,
                      new MaterialPageRoute(builder: (context) => Password()));
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
