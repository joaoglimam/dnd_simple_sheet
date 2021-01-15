import 'package:flutter/material.dart';
import './Screen/usuario.dart';
import './Screen/ficha.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.white,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'DND SIMPLE SHEET'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var listaDeBotoes;
  List<Widget> listaDeTelas;
  var pageIndex;

  @override
  void initState() {
    pageIndex = 0;
    listaDeTelas = [Usuario(), Ficha()];
    listaDeBotoes = <Widget>[
      SafeArea(
        child: Container(
          child: Text(
            "DND Simple Sheet",
            style: TextStyle(color: Colors.black),
          ),
          color: Colors.white,
          padding: EdgeInsets.all(20),
        ),
      ),
      botaoMenu(
          "usuário",
          () => setState(() {
                pageIndex = 0;
                Navigator.pop(context);
              })),
      botaoMenu(
          "ficha",
          () => setState(() {
                pageIndex = 1;
                Navigator.pop(context);
              })),
      botaoMenu("inventário", () => Navigator.pop(context)),
      botaoMenu("magias", () => Navigator.pop(context)),
    ];
    super.initState();
  }

  Widget botaoMenu(String titulo, Function acao) {
    return ListTile(
      title: Text('$titulo'),
      //atualização de página
      onTap: acao,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(widget.title,
              style: TextStyle(
                  fontFamily: 'Raleway', fontWeight: FontWeight.bold))),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: listaDeBotoes,
        ),
      ),
      body: listaDeTelas[pageIndex],
    );
  }
}
