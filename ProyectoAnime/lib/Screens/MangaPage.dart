import 'package:ProyectoAnime/Widgets/InfoGeneralManga.dart';
import 'package:ProyectoAnime/Widgets/SinopsisManga.dart';
import 'package:ProyectoAnime/Widgets/PersonajesManga.dart';
import 'package:ProyectoAnime/widgets/ParteSuperiorManga.dart';
import 'package:flutter/material.dart';

class MangaPage extends StatefulWidget {
  @override
  _MangaPageState createState() => _MangaPageState();
}

class _MangaPageState extends State<MangaPage> {
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
              ParteSuperiorManga(malId),
              SinopsisManga(malId),
              InfoGeneralManga(malId),
              PersonajesManga(malId),
            ],
          )
        ],
      ),
    );
  }
}
