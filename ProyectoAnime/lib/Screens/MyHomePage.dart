import 'package:ProyectoAnime/Tabs/AnimeTop.dart';
import 'package:ProyectoAnime/Tabs/MangaTop.dart';
import 'package:ProyectoAnime/functions/functions.dart';
import 'package:flutter/material.dart';

import '../jikan_api.dart';

class MyHomePage extends StatefulWidget {
  @override
  MyHomePageStatus createState() => MyHomePageStatus();
}

class MyHomePageStatus extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  var result;
  var _lista = ["Anime", "Manga", "Persona", "Personaje"];
  String _vista = "Seleccione una opción";
  var _tipo;
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

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
          DropdownButton(
            // menu para elegir busqueda
            items: _lista
                .map((String a) => DropdownMenuItem(value: a, child: Text(a)))
                .toList(),
            onChanged: (_value) {
              setState(() {
                _vista = _value;
                _tipo = tipo(_value);
              });
            },
            hint: Text(_vista),
          ),
          TextField(
            // donde se busca
            decoration: InputDecoration(
                hintText: "Busca un anime", icon: Icon(Icons.search)),
            onSubmitted: (String str) async {
              setState(() {
                buscar(str, _tipo).then((value) {
                  result = value;
                });
              });
            },
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Text(
              "Top 10 Mejores",
              style: TextStyle(
                color: Colors.red,
                fontSize: 20.0,
              ),
            ),
          ),
          TabBar(
            controller: _tabController,
            tabs: [
              Tab(
                child: Text(
                  "Anime",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20.0,
                  ),
                ),
              ),
              Tab(
                child: Text(
                  "Manga",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20.0,
                  ),
                ),
              ),
            ],
          ),
          TabBarView(
            controller: _tabController,
            children: <Widget>[
              Container(
                child: Center(
                  child: Text(
                    'Top 10 animes',
                    style: TextStyle(fontSize: 25),
                  ),
                ),
              ),
              Container(
                child: Center(
                  child: Text(
                    'Top 10 mangas',
                    style: TextStyle(fontSize: 25),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.search),
        onPressed: () async {
          switch (_tipo) {
            case SearchType.anime:
              {
                Navigator.of(context)
                    .pushNamed('/AnimangaS', arguments: result);
              }
              break;
            case SearchType.manga:
              {
                Navigator.of(context)
                    .pushNamed('/AnimangaS', arguments: result);
              }
              break;
            case SearchType.character:
              {
                Navigator.of(context).pushNamed('/CharPerS', arguments: result);
              }
              break;
            case SearchType.person:
              {
                Navigator.of(context).pushNamed('/CharPerS', arguments: result);
              }
              break;
          }
        },
      ),
    );
  }
}
