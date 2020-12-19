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
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/Search_Image.jpg'), fit: BoxFit.cover),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Image.asset(
            "assets/iconologo.png",
            height: 50,
          ),
        ),
        body: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.transparent),
              alignment: Alignment.center,
              child: Text(
                'Busca animes, mangas, personajes \no personas relacionadas con el medio',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: DropdownButton(
                    // menu para elegir busqueda
                    items: _lista
                        .map((String a) =>
                            DropdownMenuItem(value: a, child: Text(a)))
                        .toList(),
                    onChanged: (_value) {
                      setState(
                        () {
                          _vista = _value;
                          _tipo = tipo(_value);
                        },
                      );
                    },
                    hint: Text(
                      _vista,
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                /*
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
                ),*/
              ],
            ),
            Container(
              child: TextField(
                // donde se busca
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide(color: Colors.white70),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  filled: true,
                  fillColor: Colors.white70,
                  hintText: "Se busca con 3 letras o más",
                  icon: Icon(
                    Icons.search,
                    color: Colors.white70,
                  ),
                ),
                onSubmitted: (String str) {
                  setState(
                    () {
                      result = str;
                    },
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.black38,
                ),
                alignment: Alignment.center,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Presiona la imagen para buscar ',
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                    Icon(Icons.arrow_downward)
                  ],
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(top: 15, bottom: 15),
                child: MaterialButton(
                  child: Image.asset(
                    'assets/lupa.png',
                    width: 400,
                    height: 400,
                  ),
                  onPressed: () {
                    switch (_tipo) {
                      case SearchType.anime:
                        {
                          if (result.length >= 3) {
                            Navigator.of(context).pushNamed(
                              '/AnimangaS',
                              arguments: [result, _tipo],
                            );
                          }
                        }
                        break;
                      case SearchType.manga:
                        {
                          if (result.length >= 3) {
                            Navigator.of(context).pushNamed(
                              '/AnimangaS',
                              arguments: [result, _tipo],
                            );
                          }
                        }
                        break;
                      case SearchType.character:
                        {
                          if (result.length >= 3) {
                            Navigator.of(context).pushNamed(
                              '/CharPerS',
                              arguments: [result, _tipo],
                            );
                          }
                        }
                        break;
                      case SearchType.person:
                        {
                          if (result.length >= 3) {
                            Navigator.of(context).pushNamed(
                              '/CharPerS',
                              arguments: [result, _tipo],
                            );
                          }
                        }
                        break;
                    }
                  },
                  color: Colors.white70,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
