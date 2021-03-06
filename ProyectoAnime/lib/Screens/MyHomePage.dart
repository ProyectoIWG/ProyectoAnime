import 'package:ProyectoAnime/Widgets/AnimeSeason.dart';
import 'package:ProyectoAnime/Widgets/MenuLateral.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  MyHomePageStatus createState() => MyHomePageStatus();
}

class MyHomePageStatus extends State<MyHomePage> {
  DateTime _fecha = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Image.asset(
          "assets/iconologo.png",
          height: 50,
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              Navigator.of(context).pushNamed('/SearchPage');
            },
          )
        ],
      ),
      drawer: MenuLateral(),
      body: Container(
        alignment: Alignment.center,
        child: AnimeSeason(fecha: _fecha),
      ),
    );
  }
}
