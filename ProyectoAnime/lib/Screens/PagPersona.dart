import 'package:ProyectoAnime/Widgets/InfogeneralPagPersona.dart';
import 'package:ProyectoAnime/Widgets/ParteSuperiorPersona.dart';
import 'package:flutter/material.dart';

class PagPersona extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    int malId = ModalRoute.of(context).settings.arguments;
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/FondoPersonaje.jpeg"), fit: BoxFit.cover),
      ),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Image.asset(
            "assets/iconologo.png",
            height: 50,
          ),
        ),
        body: ListView(
          children: <Widget>[
            PartesuperiorPersona(malId),
            InfogeneralPagPersona(malId),
          ],
        ),
        backgroundColor: Colors.black12,
      ),
    );
  }
}
