import 'package:ProyectoAnime/jikan_api.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:flutter/material.dart';

class MangaPage extends StatefulWidget {
  @override
  MangaPageStatus createState() => MangaPageStatus();
}

class MangaPageStatus extends State<MangaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.black,
            title: Image.asset("assets/iconologo.png", height: 50)));
  }
}
