import 'package:flutter/material.dart';
import 'package:hola/main.dart';
import 'package:hola/page/onboarding_page.dart';
import 'package:hola/widget/button_widget.dart';
import 'dart:math';
import 'package:hola/one.dart';
import 'package:hola/two.dart';
import 'package:hola/three.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
      appBar: AppBar(
        title: Text(MyApp.title),
      ),
      body: SafeArea(
          child: SingleChildScrollView(
              child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Text(
              "Bienvenido usuario, \nSeleccione:",
              style: TextStyle(color: Colors.black, fontSize: 24.0, fontWeight: FontWeight.bold),
              textAlign: TextAlign.start,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Center(
              child: Wrap(
                spacing: 20,
                runSpacing: 20.0,
                children: <Widget>[
                  SizedBox(
                    width: 160.0,
                    height: 160.0,
                    child: Card(
                      color: Color.fromRGBO(251, 250, 145, 0.8),
                      elevation: 2.0,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
                      child: Center(
                          child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: <Widget>[
                            Image.asset(
                              "assets/todo.png",
                              width: 64.0,
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Text(
                              "Cuentas",
                              style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20.0),
                            ),
                            SizedBox(
                              height: 5.0,
                            ),
                            ElevatedButton(
                              child: Text("Calcular"),
                              onPressed: () => {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => Hi()),
                                )
                              },
                            )
                          ],
                        ),
                      )),
                    ),
                  ),
                  SizedBox(
                    width: 160.0,
                    height: 160.0,
                    child: Card(
                      color: Color.fromRGBO(251, 250, 145, 0.8),
                      elevation: 2.0,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
                      child: Center(
                          child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: <Widget>[
                            Image.asset(
                              "assets/note.png",
                              width: 64.0,
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Text(
                              "Aprender",
                              style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20.0),
                            ),
                            SizedBox(
                              height: 5.0,
                            ),
                            ElevatedButton(
                              child: Text("Ver"),
                              onPressed: () => {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => Hola()),
                                )
                              },
                            )
                          ],
                        ),
                      )),
                    ),
                  ),
                  SizedBox(
                    width: 160.0,
                    height: 160.0,
                    child: Card(
                      color: Color.fromRGBO(251, 250, 145, 0.8),
                      elevation: 2.0,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
                      child: Center(
                          child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: <Widget>[
                            Image.asset(
                              "assets/calendar.png",
                              width: 64.0,
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Text(
                              "Apuntes",
                              style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20.0),
                            ),
                            SizedBox(
                              height: 5.0,
                            ),
                            ElevatedButton(
                              child: Text("Ver"),
                              onPressed: () => {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => Hello()),
                                )
                              },
                            )
                          ],
                        ),
                      )),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ))));

  void goToOnBoarding(context) => Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) => OnBoardingPage()),
      );
}
