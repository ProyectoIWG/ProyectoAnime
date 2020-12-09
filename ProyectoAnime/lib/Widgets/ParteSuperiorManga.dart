import 'package:flutter/material.dart';
import 'package:ProyectoAnime/jikan_api.dart';
import 'package:ProyectoAnime/functions/functions.dart';

class ParteSuperiorManga extends StatelessWidget {
  final int malId;
  ParteSuperiorManga(this.malId);
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: mangaData(malId),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return CircularProgressIndicator();
        } else {
          Manga data = snapshot.data;
          return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Column(children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                      color: Colors.lightGreen,
                      border: Border.all(
                        color: Colors.lightBlue,
                        width: 2.5,
                      )),
                  height: 100,
                  width: 135,
                  child: Column(
                    children: <Widget>[
                      Align(
                        alignment: Alignment.center,
                        child: Text(
                          "Nombre",
                          style: TextStyle(
                            fontSize: 12.0,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(" "),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Text(
                          data.title,
                          style: TextStyle(
                            fontSize: 12.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.yellow,
                      border: Border.all(
                        color: Colors.lightBlue,
                        width: 2.5,
                      )),
                  height: 100,
                  width: 135,
                  child: Column(
                    children: <Widget>[
                      Align(
                        alignment: Alignment.center,
                        child: Text(
                          "Autor",
                          style: TextStyle(
                            fontSize: 12.0,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(" "),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Text(
                          data.authors.first.name,
                          style: TextStyle(
                            fontSize: 12.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ]),
              Column(children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: Colors.lightBlue,
                        width: 2.5,
                      )),
                  height: 145,
                  width: 90,
                  child: Align(
                    alignment: Alignment.center,
                    child: Image.network(
                      data.imageUrl,
                      width: 90,
                      height: 150,
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.red,
                      border: Border.all(
                        color: Colors.lightBlue,
                        width: 2.5,
                      )),
                  height: 55,
                  width: 90,
                  child: Column(
                    children: <Widget>[
                      Align(
                        alignment: Alignment.center,
                        child: Text("N° de caps:"),
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(" "),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Text(verificarCaps(data.chapters).toString()),
                      ),
                    ],
                  ),
                ),
              ]),
              Column(children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                      color: Colors.yellow,
                      border: Border.all(
                        color: Colors.lightBlue,
                        width: 2.5,
                      )),
                  height: 100,
                  width: 135,
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      "Nota: " + data.score.toString(),
                      style: TextStyle(
                        fontSize: 12.0,
                      ),
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.lightGreen,
                      border: Border.all(
                        color: Colors.lightBlue,
                        width: 2.5,
                      )),
                  height: 100,
                  width: 135,
                  child: Column(
                    children: <Widget>[
                      Align(
                        alignment: Alignment.topCenter,
                        child: Text(
                          "Generos",
                          style: TextStyle(
                            fontSize: 12.0,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(" "),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Text(
                          data.genres[0].name,
                          style: TextStyle(
                            fontSize: 12.0,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Text(
                          data.genres[1].name,
                          style: TextStyle(
                            fontSize: 12.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ]),
            ],
          );
        }
      },
    );
  }
}
