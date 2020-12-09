import 'package:ProyectoAnime/Widgets/Informaciongeneral.dart';
import 'package:ProyectoAnime/Widgets/Sinopsis.dart';
import 'package:ProyectoAnime/Widgets/Personajes.dart';
import 'package:ProyectoAnime/widgets/ParteSuperiorManga.dart';
import 'package:flutter/material.dart';

class MangaPage extends StatelessWidget {
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
      body: Column(
        children: <Widget>[
          ParteSuperiorManga(malId),
          Sinopsis(malId),
          Informaciongeneral(malId),
          Personajes(malId),
        ],
      ),
    );
  }
}
