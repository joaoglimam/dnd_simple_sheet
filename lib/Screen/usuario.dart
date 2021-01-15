import 'package:flutter/material.dart';

class Usuario extends StatefulWidget {
  @override
  _UsuarioState createState() => _UsuarioState();
}

class _UsuarioState extends State<Usuario> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
            child: Text("Oie sou um usuario",
                style: TextStyle(
                    fontFamily: 'Raleway', fontWeight: FontWeight.bold))),
      ),
    );
  }
}
