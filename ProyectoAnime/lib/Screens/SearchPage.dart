import 'package:ProyectoAnime/functions/functions.dart';
import 'package:flutter/material.dart';

import '../jikan_api.dart';

class SearchButton extends StatefulWidget {
  @override
  _SearchButtonState createState() => _SearchButtonState();
}

class _SearchButtonState extends State<SearchButton> {
  String result;
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
      body: Column(
        children: [
          Text(
            'Puede buscar animes, mangas, personajes \no personas relacionadas con el medio',
            style: TextStyle(fontSize: 20),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              DropdownButton(
                // menu para elegir busqueda
                items: _lista
                    .map((String a) =>
                        DropdownMenuItem(value: a, child: Text(a)))
                    .toList(),
                onChanged: (_value) {
                  setState(() {
                    _vista = _value;
                    _tipo = tipo(_value);
                  });
                },
                hint: Text(
                  _vista,
                  style: TextStyle(color: Colors.black87),
                ),
              ),
              IconButton(
                icon: Icon(Icons.search),
                onPressed: () {
                  switch (_tipo) {
                    case SearchType.anime:
                      {
                        Navigator.of(context).pushNamed('/AnimangaS',
                            arguments: [result, _tipo]);
                      }
                      break;
                    case SearchType.manga:
                      {
                        Navigator.of(context).pushNamed('/AnimangaS',
                            arguments: [result, _tipo]);
                      }
                      break;
                    case SearchType.character:
                      {
                        Navigator.of(context)
                            .pushNamed('/CharPerS', arguments: [result, _tipo]);
                      }
                      break;
                    case SearchType.person:
                      {
                        Navigator.of(context)
                            .pushNamed('/CharPerS', arguments: [result, _tipo]);
                      }
                      break;
                  }
                },
              )
            ],
          ),
          TextField(
            // donde se busca
            decoration: InputDecoration(
                hintText: "Busca un anime", icon: Icon(Icons.search)),
            onSubmitted: (String str) {
              setState(
                () {
                  result = str;
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
