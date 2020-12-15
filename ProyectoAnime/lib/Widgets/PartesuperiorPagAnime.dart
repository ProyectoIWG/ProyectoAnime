import 'package:ProyectoAnime/functions/functions.dart';
import 'package:flutter/material.dart';
import 'package:ProyectoAnime/jikan_api.dart';

class PartesuperiorPagAnime extends StatelessWidget {
  final int malId;
  PartesuperiorPagAnime(this.malId);
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: animeData(malId),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return CircularProgressIndicator();
        } else {
          Anime animeinfo = snapshot.data;
          String nota = animeinfo.score.toString();
          return Row(
            children: <Widget>[
              Column(
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.lightGreen,
                      border: Border.all(
                        color: Colors.lightBlue,
                        width: 2.5,
                      ),
                    ),
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
                            animeinfo.title,
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
                    child: FutureBuilder(
                      future: animeStaff(malId),
                      builder: (context, snapshot) {
                        if (snapshot.connectionState ==
                            ConnectionState.waiting) {
                          return CircularProgressIndicator();
                        } else {
                          CharacterStaff data = snapshot.data;
                          return Column(
                            children: <Widget>[
                              Align(
                                alignment: Alignment.center,
                                child: Text(
                                  "Director",
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
                                  getDirector(data),
                                  style: TextStyle(
                                    fontSize: 12.0,
                                  ),
                                ),
                              ),
                            ],
                          );
                        }
                      },
                    ),
                  ),
                ],
              ),
              Column(
                children: <Widget>[
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
                        animeinfo.imageUrl,
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
                          child: Text(verificarCaps(animeinfo.episodes)),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Column(
                children: <Widget>[
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
                        "Nota: $nota",
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
                            animeinfo.genres[0].name,
                            style: TextStyle(
                              fontSize: 12.0,
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Text(
                            animeinfo.genres[1].name,
                            style: TextStyle(
                              fontSize: 12.0,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          );
        }
      },
    );
  }
}
