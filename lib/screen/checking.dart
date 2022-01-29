import 'dart:math';

import 'package:flutter/material.dart';
import 'package:bogdzonhov/screen/cond.dart';
import 'package:bogdzonhov/screen/book.dart';

class Checking extends StatefulWidget {
  // LoginScreen({Key? key}) : super(key: key);

  @override
  State<Checking> createState() => _CheckingState();
}

class _CheckingState extends State<Checking> {
  @override
  Widget build(BuildContext context) {
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
              children: <Widget>[Text('Захиалга шалгах')],
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
            EdgeInsets.only(left: totalWidth * 0.1, top: totalHeight * 0.1),
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
                      hintText: 'Утасны дугаар',
                      hintStyle: TextStyle(color: Colors.grey),
                      filled: true,
                      fillColor: Color(0xFFF8FAFB),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide(color: Color(0xFFB4091E))),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide(color: Color(0xFFB4091E))),
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
            EdgeInsets.only(left: totalWidth * 0.1, top: totalHeight * 0.3),
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
                      hintText: 'Захиалгын дугаар',
                      hintStyle: TextStyle(color: Colors.grey),
                      filled: true,
                      fillColor: Color(0xFFF8FAFB),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide(color: Color(0xFFB4091E))),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide(color: Color(0xFFB4091E))),
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
            EdgeInsets.only(left: totalWidth * 0.1, top: totalHeight * 0.4),
        child: SizedBox(
          height: 50,
          width: totalWidth * 0.8,
          child: TextButton(
              onPressed: () {
                Navigator.push(context,
                    new MaterialPageRoute(builder: (context) => Cond()));
              },
              style: TextButton.styleFrom(
                backgroundColor: Color(0xFFF6AC19),
                primary: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
              ),
              child: Text('ШАЛГАХ')),
        ),
      ),
    ]);
  }
}
