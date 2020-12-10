import 'package:ProyectoAnime/widgets/InfoGeneralPersonaje.dart';
import 'package:ProyectoAnime/Widgets/ParteSuperiorPersonaje.dart';
import 'package:flutter/material.dart';

class PersonajePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Image.asset(
          "assets/iconologo.png",
          height: 50,
        ),
      ),
      body: ListView(
        children: <Widget>[
          ParteSuperiorPersonaje(),
          InfoGeneralPersonaje(),
        ],
      ),
    );
  }
}
