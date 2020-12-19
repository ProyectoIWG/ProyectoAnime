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
          return Container(
            decoration: BoxDecoration(
              color: Colors.white24,
              border: Border.all(
                color: Colors.black,
                width: 2.5,
              ),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Container(
                    child: Column(
                      children: <Widget>[
                        Container(
                          height: 125,
                          width: 135,
                          child: Column(
                            children: <Widget>[
                              Container(
                                decoration: BoxDecoration(
                                    color: Colors.white38,
                                    border: Border.all(
                                      color: Colors.white38,
                                      width: 2.5,
                                    ),
                                    borderRadius: BorderRadius.circular(10)),
                                margin: EdgeInsets.symmetric(
                                  vertical: 6.0,
                                ),
                                height: 45,
                                width: 60,
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Text(
                                    "Nombre",
                                    style: TextStyle(
                                        fontSize: 15.0, color: Colors.white),
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
                                    fontSize: 15.0,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 100,
                          width: 135,
                          child: Column(
                            children: <Widget>[
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.white38,
                                  border: Border.all(
                                    color: Colors.white38,
                                    width: 2.5,
                                  ),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                margin: EdgeInsets.symmetric(
                                  vertical: 6.0,
                                ),
                                height: 45,
                                width: 60,
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Text(
                                    "Autor",
                                    style: TextStyle(
                                      fontSize: 15.0,
                                      color: Colors.white,
                                    ),
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
                                    fontSize: 15.0,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    child: Column(
                      children: <Widget>[
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.grey,
                              border: Border.all(
                                color: Colors.grey,
                                width: 2.5,
                              ),
                              borderRadius: BorderRadius.circular(10)),
                          margin: EdgeInsets.symmetric(
                            vertical: 10.0,
                          ),
                          height: 130,
                          width: 92,
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
                          height: 80,
                          width: 90,
                          child: Column(
                            children: <Widget>[
                              Container(
                                decoration: BoxDecoration(
                                    color: Colors.white38,
                                    border: Border.all(
                                      color: Colors.white38,
                                      width: 2.5,
                                    ),
                                    borderRadius: BorderRadius.circular(10)),
                                height: 30,
                                width: 90,
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Text(
                                    "N° de caps:",
                                    style: TextStyle(
                                      fontSize: 15.0,
                                      color: Colors.white,
                                    ),
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
                                  verificarCaps(data.chapters).toString(),
                                  style: TextStyle(
                                    fontSize: 15.0,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    child: Column(
                      children: <Widget>[
                        Container(
                          height: 100,
                          width: 135,
                          child: Container(
                            height: 30,
                            width: 70,
                            decoration: BoxDecoration(
                                color: Colors.white38,
                                border: Border.all(
                                  color: Colors.white38,
                                  width: 2.5,
                                ),
                                borderRadius: BorderRadius.circular(10)),
                            margin: EdgeInsets.symmetric(
                              vertical: 30.0,
                              horizontal: 15.0,
                            ),
                            child: Align(
                              alignment: Alignment.center,
                              child: Text(
                                "Nota: " + data.score.toString(),
                                style: TextStyle(
                                  fontSize: 15.0,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          height: 125,
                          width: 135,
                          child: Column(
                            children: <Widget>[
                              Container(
                                height: 30,
                                width: 70,
                                decoration: BoxDecoration(
                                  color: Colors.white38,
                                  border: Border.all(
                                    color: Colors.white38,
                                    width: 2.5,
                                  ),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                margin: EdgeInsets.symmetric(
                                  vertical: 6.0,
                                ),
                                child: Align(
                                  alignment: Alignment.topCenter,
                                  child: Text(
                                    "Generos",
                                    style: TextStyle(
                                      fontSize: 15.0,
                                      color: Colors.white,
                                    ),
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
                                      fontSize: 15.0, color: Colors.white),
                                ),
                              ),
                              Align(
                                alignment: Alignment.center,
                                child: Text(
                                  data.genres[1].name,
                                  style: TextStyle(
                                    fontSize: 15.0,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        }
      },
    );
  }
}
