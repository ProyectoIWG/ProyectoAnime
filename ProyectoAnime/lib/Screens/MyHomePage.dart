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
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: Colors.black),
              accountName:
                  Text('Creado por \n Adolo Espinosa, Nicolas Bello y Darwin'),
              accountEmail: null,
              currentAccountPicture: Image.asset(
                'assets/Saber.png',
              ),
            ),
            ListTile(
              title: Text('Top 10 Animes'),
              onTap: () {
                Navigator.of(context).pushNamed('/AnimeTop');
              },
            ),
            ListTile(
              title: Text('Top 10 Mangas'),
              onTap: () {
                Navigator.of(context).pushNamed('/MangaTop');
              },
            ),
          ],
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
