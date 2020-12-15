import 'package:ProyectoAnime/Widgets/InfogeneralPagPersona.dart';
import 'package:ProyectoAnime/Widgets/ParteSuperiorPersona.dart';
import 'package:flutter/material.dart';

class PagPersona extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    int malId = ModalRoute.of(context).settings.arguments;
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
          PartesuperiorPersona(malId),
          InfogeneralPagPersona(malId),
        ],
      ),
    );
  }
}
