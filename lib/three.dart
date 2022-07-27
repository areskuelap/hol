import 'package:flutter/material.dart';
import 'dart:math';

class Hello extends StatefulWidget {
  @override
  _HelloState createState() => _HelloState();
}

class _HelloState extends State<Hello> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFF7C229),
        title: Text(
          'Agenda',
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
