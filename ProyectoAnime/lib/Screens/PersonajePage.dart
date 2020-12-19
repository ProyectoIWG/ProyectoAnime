import 'package:ProyectoAnime/widgets/InfoGeneralPersonaje.dart';
import 'package:ProyectoAnime/Widgets/ParteSuperiorPersonaje.dart';
import 'package:flutter/material.dart';

class PersonajePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    int malId = ModalRoute.of(context).settings.arguments;
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/FondoPersonaje.jpeg"), fit: BoxFit.cover),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Image.asset(
            "assets/iconologo.png",
            height: 50,
          ),
        ),
        body: ListView(
          children: <Widget>[
            ParteSuperiorPersonaje(malId),
            InfoGeneralPersonaje(malId),
          ],
        ),
      ),
    );
  }
}
