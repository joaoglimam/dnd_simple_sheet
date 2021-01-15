import 'package:flutter/material.dart';

class Ficha extends StatefulWidget {
  @override
  _FichaState createState() => _FichaState();
}

class _FichaState extends State<Ficha> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
            child: Text("Oie sou uma ficha",
                style: TextStyle(
                    fontFamily: 'Raleway', fontWeight: FontWeight.bold))),
      ),
    );
  }
}
