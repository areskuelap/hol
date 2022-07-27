import 'package:flutter/material.dart';
import 'dart:math';

class Hola extends StatefulWidget {
  @override
  _HolaState createState() => _HolaState();
}

class _HolaState extends State<Hola> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFF7C229),
        title: Text(
          'Tips',
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      bottomNavigationBar: Container(
        height: 50,
      ),
      backgroundColor: Color(0xFFF4F3E3),
      body: Builder(
        builder: (BuildContext context) => Container(
            padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
            child: SingleChildScrollView(
              child: Column(children: <Widget>[
                SizedBox(
                  height: 10,
                ),
                Text('Texto de ejemplo', style: TextStyle(fontSize: 18)),
              ]),
            )),
      ),
    );
  }
}
