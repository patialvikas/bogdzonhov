// @dart=2.9
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:bogdzonhov/screen/cond.dart';
import 'package:bogdzonhov/screen/checking.dart';
import 'package:bogdzonhov/screen/zurhai.dart';
import 'package:bogdzonhov/screen/nom.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/otp_text_field.dart';
import 'package:otp_text_field/style.dart';

class Book extends StatefulWidget {
  @override
  _BookState createState() => _BookState();
}

class _BookState extends State<Book> {
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
              children: <Widget>[Text('Туслах')],
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
        padding: EdgeInsets.only(left: totalWidth * 0, top: totalHeight * 0.18),
        child: Container(
          height: 80,
          width: 500,
          child: InkWell(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.view_headline, color: Colors.grey),
                  onPressed: () {
                    Navigator.push(context,
                        new MaterialPageRoute(builder: (context) => Book()));
                  },
                ),
                Padding(
                  padding: EdgeInsets.only(
                      left: totalWidth * 0.02, top: totalHeight * 0),
                  child: Text(
                    'Захиалга шалгах',
                    style: TextStyle(
                      fontSize: 15.0,
                      color: Colors.black,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      left: totalWidth * 0.38, top: totalHeight * 0),
                  child: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.grey,
                    size: 18.0,
                  ),
                ),
              ],
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Checking()),
              );
            },
          ),
        ),
      ),
      Padding(
        padding: EdgeInsets.only(left: totalWidth * 0, top: totalHeight * 0.25),
        child: Container(
          height: 80,
          width: 500,
          child: InkWell(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.wysiwyg_rounded, color: Colors.grey),
                  onPressed: () {
                    Navigator.push(context,
                        new MaterialPageRoute(builder: (context) => Book()));
                  },
                ),
                Padding(
                  padding: EdgeInsets.only(
                      left: totalWidth * 0.02, top: totalHeight * 0),
                  child: Text(
                    'Ном захиалах',
                    style: TextStyle(
                      fontSize: 15.0,
                      color: Colors.black,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      left: totalWidth * 0.43, top: totalHeight * 0),
                  child: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.grey,
                    size: 18.0,
                  ),
                ),
              ],
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Login()),
              );
            },
          ),
        ),
      ),
      Padding(
        padding: EdgeInsets.only(left: totalWidth * 0, top: totalHeight * 0.32),
        child: Container(
          height: 80,
          width: 500,
          child: InkWell(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.phone, color: Colors.grey),
                  onPressed: () {
                    Navigator.push(context,
                        new MaterialPageRoute(builder: (context) => Book()));
                  },
                ),
                Padding(
                  padding: EdgeInsets.only(
                      left: totalWidth * 0.02, top: totalHeight * 0),
                  child: Text(
                    'Холбоо барих',
                    style: TextStyle(
                      fontSize: 15.0,
                      color: Colors.black,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      left: totalWidth * 0.43, top: totalHeight * 0),
                  child: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.grey,
                    size: 18.0,
                  ),
                ),
              ],
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Cond()),
              );
            },
          ),
        ),
      ),
      Padding(
        padding: EdgeInsets.only(left: totalWidth * 0, top: totalHeight * 0.39),
        child: Container(
          height: 80,
          width: 500,
          child: InkWell(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.ac_unit_outlined, color: Colors.grey),
                  onPressed: () {
                    Navigator.push(context,
                        new MaterialPageRoute(builder: (context) => Book()));
                  },
                ),
                Padding(
                  padding: EdgeInsets.only(
                      left: totalWidth * 0.02, top: totalHeight * 0),
                  child: Text(
                    'Зурхай үзэх',
                    style: TextStyle(
                      fontSize: 15.0,
                      color: Colors.black,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      left: totalWidth * 0.47, top: totalHeight * 0),
                  child: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.grey,
                    size: 18.0,
                  ),
                ),
              ],
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Zurhai()),
              );
            },
          ),
        ),
      ),
    ]);
  }
}
