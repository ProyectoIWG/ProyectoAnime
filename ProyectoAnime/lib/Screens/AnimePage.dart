import 'package:ProyectoAnime/Widgets/Informaciongeneral.dart';
import 'package:ProyectoAnime/Widgets/PartesuperiorPagAnime.dart';
import 'package:ProyectoAnime/Widgets/Sinopsis.dart';
import 'package:flutter/material.dart';

class AnimePage extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Scaffold(appBar: AppBar(
        backgroundColor: Colors.black,
        title: Image.asset(
          "assets/iconologo.png",
           height: 50,
           ),
      ),
      body: Column(
        children: <Widget>[
          PartesuperiorPagAnime(),
          Sinopsis(),
          Informaciongeneral(),
        ],
      ),
      );
  }
}