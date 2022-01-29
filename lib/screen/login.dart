// @dart=2.9
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:bogdzonhov/screen/cond.dart';
import 'package:bogdzonhov/screen/checking.dart';
import 'package:bogdzonhov/screen/zurhai.dart';
import 'package:bogdzonhov/screen/login.dart';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/otp_text_field.dart';
import 'package:otp_text_field/style.dart';

class Nom extends StatefulWidget {
  @override
  _NomState createState() => _NomState();
}

class _NomState extends State<Nom> {
  @override
  bool _checkBox = false;
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
              children: <Widget>[Text('Ном захиалах')],
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
            EdgeInsets.only(left: totalWidth * 0.1, top: totalHeight * 0.05),
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
                      hintText: 'Номын нэрээр хайх',
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
            EdgeInsets.only(left: totalWidth * 0.05, top: totalHeight * 0.25),
        child: Row(
          children: [
            SizedBox(
              width: totalWidth * 0.018,
            ),
            Checkbox(
              // ignore: prefer_const_constructors

              // ignore: prefer_const_constructors
              shape: RoundedRectangleBorder(),
              // ignore: prefer_const_constructors
              activeColor: Color(0xFFB4091E),
              value: _checkBox,
              onChanged: (value) {
                setState(() {
                  _checkBox = !_checkBox;
                });
              },
            ),
            // ignore: prefer_const_constructors
            RichText(
              text: new TextSpan(
                // Note: Styles for TextSpans must be explicitly defined.
                // Child text spans will inherit styles from parent
                style: new TextStyle(
                  fontSize: 14.0,
                  color: Colors.black,
                ),
                children: <TextSpan>[
                  new TextSpan(
                      text: 'Алтан гэрэл 1500', style: new TextStyle()),
                ],
              ),
            ),
          ],
        ),
      ),
      Padding(
        padding:
            EdgeInsets.only(left: totalWidth * 0.05, top: totalHeight * 0.3),
        child: Row(
          children: [
            SizedBox(
              width: totalWidth * 0.018,
            ),
            Checkbox(
              // ignore: prefer_const_constructors

              // ignore: prefer_const_constructors
              shape: RoundedRectangleBorder(),
              // ignore: prefer_const_constructors
              activeColor: Color(0xFFB4091E),
              value: _checkBox,
              onChanged: (value) {
                setState(() {
                  _checkBox = !_checkBox;
                });
              },
            ),
            // ignore: prefer_const_constructors
            RichText(
              text: new TextSpan(
                // Note: Styles for TextSpans must be explicitly defined.
                // Child text spans will inherit styles from parent
                style: new TextStyle(
                  fontSize: 14.0,
                  color: Colors.black,
                ),
                children: <TextSpan>[
                  new TextSpan(
                      text: 'Цагаан шүхэрт 1500', style: new TextStyle()),
                ],
              ),
            ),
          ],
        ),
      ),
      Padding(
        padding:
            EdgeInsets.only(left: totalWidth * 0.05, top: totalHeight * 0.35),
        child: Row(
          children: [
            SizedBox(
              width: totalWidth * 0.018,
            ),
            Checkbox(
              // ignore: prefer_const_constructors

              // ignore: prefer_const_constructors
              shape: RoundedRectangleBorder(),
              // ignore: prefer_const_constructors
              activeColor: Color(0xFFB4091E),
              value: _checkBox,
              onChanged: (value) {
                setState(() {
                  _checkBox = !_checkBox;
                });
              },
            ),
            // ignore: prefer_const_constructors
            RichText(
              text: new TextSpan(
                // Note: Styles for TextSpans must be explicitly defined.
                // Child text spans will inherit styles from parent
                style: new TextStyle(
                  fontSize: 14.0,
                  color: Colors.black,
                ),
                children: <TextSpan>[
                  new TextSpan(
                      text: 'Сандуйн жүд 1500', style: new TextStyle()),
                ],
              ),
            ),
          ],
        ),
      ),
      Padding(
        padding:
            EdgeInsets.only(left: totalWidth * 0.1, top: totalHeight * 0.6),
        child: SizedBox(
          height: 50,
          width: totalWidth * 0.8,
          child: TextButton(
              onPressed: () {
                Navigator.push(context,
                    new MaterialPageRoute(builder: (context) => Cond()));
              },
              style: TextButton.styleFrom(
                backgroundColor: Color(0xFFB4091E),
                primary: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
              ),
              child: Text('ЗАХИАЛАХ')),
        ),
      ),
    ]);
  }
}
