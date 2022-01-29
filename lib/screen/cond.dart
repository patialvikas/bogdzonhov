import 'dart:math';

import 'package:flutter/material.dart';
import 'package:bogdzonhov/screen/otp.dart';

class Cond extends StatefulWidget {
  // LoginScreen({Key? key}) : super(key: key);

  @override
  State<Cond> createState() => _CondState();
}

class _CondState extends State<Cond> {
  bool _checkBox = false;
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
            EdgeInsets.only(left: totalWidth * 0.1, top: totalHeight * 0.1),
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
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      hintText: 'Овог',
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
                      hintText: 'Нэр',
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
            EdgeInsets.only(left: totalWidth * 0.1, top: totalHeight * 0.3),
        child: Container(
          // color: Color.fromARGB(50, 200, 50, 20),
          child: Row(
            children: <Widget>[
              Padding(
                padding:
                    EdgeInsets.only(left: totalWidth * 0, top: totalHeight * 0),
                child: SizedBox(
                  height: 100,
                  width: totalWidth * 0.13,
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      hintText: '-',
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
              Padding(
                padding: EdgeInsets.only(
                    left: totalWidth * 0.02, top: totalHeight * 0),
                child: SizedBox(
                  height: 100,
                  width: totalWidth * 0.13,
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      hintText: '-',
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
              Padding(
                padding: EdgeInsets.only(
                    left: totalWidth * 0.02, top: totalHeight * 0),
                child: SizedBox(
                  height: 100,
                  width: totalWidth * 0.5,
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      hintText: 'Регистр',
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
            EdgeInsets.only(left: totalWidth * 0.1, top: totalHeight * 0.4),
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
                      hintText: 'Утасны дугаар',
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
            EdgeInsets.only(left: totalWidth * 0.1, top: totalHeight * 0.5),
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
                      hintText: 'Имэйл хаяг',
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
            EdgeInsets.only(left: totalWidth * 0.05, top: totalHeight * 0.58),
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
                      text: 'Үйлчилгээний нөхцөл',
                      style: new TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(0xFFF6AC19))),
                  new TextSpan(
                      text: '-г зөвшөөрч байна', style: new TextStyle()),
                ],
              ),
            ),
          ],
        ),
      ),
      Padding(
        padding:
            EdgeInsets.only(left: totalWidth * 0.1, top: totalHeight * 0.7),
        child: SizedBox(
          height: 50,
          width: totalWidth * 0.8,
          child: TextButton(
              onPressed: () {
                Navigator.push(context,
                    new MaterialPageRoute(builder: (context) => Otp()));
              },
              style: TextButton.styleFrom(
                backgroundColor: Color(0xFFB4091E),
                primary: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
              ),
              child: Text('Үргэлжлүүлэх')),
        ),
      ),
    ]);
  }
}
