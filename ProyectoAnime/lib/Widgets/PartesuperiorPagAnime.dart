import 'package:ProyectoAnime/functions/functions.dart';
import 'package:flutter/material.dart';
import 'package:ProyectoAnime/jikan_api.dart';
import 'package:flutter/rendering.dart';

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
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                margin: EdgeInsets.symmetric(
                                  vertical: 3.0,
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
                                alignment: Alignment.center,
                                child: Text(
                                  animeinfo.title,
                                  style: TextStyle(
                                      fontSize: 15.0, color: Colors.white),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
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
                                          "Director",
                                          style: TextStyle(
                                            fontSize: 15.0,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.center,
                                      child: Text(
                                        getDirector(data),
                                        style: TextStyle(
                                          fontSize: 15.0,
                                          color: Colors.white,
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
                            borderRadius: BorderRadius.circular(10),
                          ),
                          margin: EdgeInsets.symmetric(
                            vertical: 10.0,
                          ),
                          height: 130,
                          width: 92,
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
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                height: 35,
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
                                alignment: Alignment.center,
                                child: Text(
                                  verificarCaps(animeinfo.episodes),
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
                              borderRadius: BorderRadius.circular(10),
                            ),
                            margin: EdgeInsets.symmetric(
                              vertical: 30.0,
                              horizontal: 15.0,
                            ),
                            child: Align(
                              alignment: Alignment.center,
                              child: Text(
                                "Nota: $nota",
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
                                height: 35,
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
                                alignment: Alignment.center,
                                child: Text(
                                  animeinfo.genres[0].name,
                                  style: TextStyle(
                                    fontSize: 15.0,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.center,
                                child: Text(
                                  animeinfo.genres[1].name,
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
