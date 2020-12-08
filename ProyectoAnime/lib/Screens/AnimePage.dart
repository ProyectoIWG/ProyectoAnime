import 'package:ProyectoAnime/Widgets/Informaciongeneral.dart';
import 'package:ProyectoAnime/Widgets/PartesuperiorPagAnime.dart';
import 'package:ProyectoAnime/Widgets/Personajes.dart';
import 'package:ProyectoAnime/Widgets/Sinopsis.dart';
import 'package:flutter/material.dart';

class AnimePage extends StatefulWidget {
  @override
  _AnimePageState createState() => _AnimePageState();
}

class _AnimePageState extends State<AnimePage> {
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
        scrollDirection: Axis.vertical,
        children: [
          Column(
            children: <Widget>[
              PartesuperiorPagAnime(malId),
              Sinopsis(malId),
              Informaciongeneral(malId),
              Personajes(malId),
            ],
          ),
        ],
      ),
    );
  }
}
