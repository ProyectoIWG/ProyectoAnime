import 'package:flutter/material.dart';
import 'package:ProyectoAnime/jikan_api.dart';
import 'package:ProyectoAnime/functions/functions.dart';

class InfogeneralPagPersona extends StatelessWidget {
  final int malId;
  InfogeneralPagPersona(this.malId);
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: getPersonInfo(malId),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return CircularProgressIndicator();
        } else {
          Person data = snapshot.data;
          if (data.voiceActingRoles.isNotEmpty) {
            return Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.zero,
                  decoration: BoxDecoration(
                      color: Colors.grey[800],
                      border: Border.all(
                        color: Colors.grey[800],
                        width: 3,
                      ),
                      borderRadius: BorderRadius.circular(10)),
                  height: 40,
                  width: 170,
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      "Roles de actuación de voz",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border(
                        top: BorderSide(
                      width: 2.5,
                    )),
                  ),
                  height: 440,
                  width: 380,
                  child: ListView(
                    shrinkWrap: true,
                    children: <Widget>[
                      for (int i = 0; i < data.voiceActingRoles.length; i++)
                        Container(
                          margin: EdgeInsets.only(
                            bottom: 5.0,
                          ),
                          height: 105,
                          width: 310,
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.grey[800],
                                border: Border.all(
                                  color: Colors.grey[800],
                                  width: 2.5,
                                ),
                                borderRadius: BorderRadius.circular(10)),
                            child: Column(
                              children: [
                                Row(
                                  children: <Widget>[
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        "Personaje: " +
                                            data.voiceActingRoles[i].character
                                                .name,
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.symmetric(
                                        horizontal: 10.0,
                                      ),
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          border: Border.all(
                                            color: Colors.black,
                                            width: 2.5,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      height: 60,
                                      width: 70,
                                      child: Align(
                                        alignment: Alignment.centerRight,
                                        child: Image.network(
                                          data.voiceActingRoles[i].character
                                              .imageUrl,
                                          width: 90,
                                          height: 60,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    'Anime: ' +
                                        data.voiceActingRoles[i].anime.name,
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                    ],
                  ),
                ),
              ],
            );
          } else if (data.publishedManga.isNotEmpty) {
            return Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.zero,
                  decoration: BoxDecoration(
                      color: Colors.grey[800],
                      border: Border.all(
                        color: Colors.grey[800],
                        width: 3,
                      ),
                      borderRadius: BorderRadius.circular(10)),
                  height: 40,
                  width: 170,
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      "Mangas Publicados",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.black,
                    border: Border(
                      top: BorderSide(
                        color: Colors.black,
                        width: 2.5,
                      ),
                    ),
                  ),
                  height: 440,
                  width: 388,
                  child: ListView(
                    shrinkWrap: true,
                    children: <Widget>[
                      for (int i = 0; i < data.publishedManga.length; i++)
                        Container(
                          margin: EdgeInsets.only(
                            bottom: 5.0,
                          ),
                          height: 120,
                          width: 310,
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.grey[800],
                                border: Border.all(
                                  color: Colors.grey[800],
                                  width: 2.5,
                                ),
                                borderRadius: BorderRadius.circular(10)),
                            child: Column(
                              children: [
                                Column(
                                  children: <Widget>[
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        "Titulo: " +
                                            data.publishedManga[i].manga.name,
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.symmetric(
                                        horizontal: 10.0,
                                      ),
                                      decoration: BoxDecoration(
                                          color: Colors.grey[800],
                                          border: Border.all(
                                            color: Colors.grey[800],
                                            width: 2.5,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      height: 60,
                                      width: 70,
                                      child: Align(
                                        alignment: Alignment.centerRight,
                                        child: Image.network(
                                          data.publishedManga[i].manga.imageUrl,
                                          width: 90,
                                          height: 60,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    'Rol: ' + data.publishedManga[i].position,
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                    ],
                  ),
                ),
              ],
            );
          } else {
            return Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.zero,
                  decoration: BoxDecoration(
                      color: Colors.grey[800],
                      border: Border.all(
                        color: Colors.grey[800],
                        width: 3,
                      ),
                      borderRadius: BorderRadius.circular(10)),
                  height: 40,
                  width: 170,
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      "Posición en el Anime",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.black,
                    border: Border(
                        top: BorderSide(
                      color: Colors.black,
                      width: 2.5,
                    )),
                  ),
                  height: 440,
                  width: 388,
                  child: ListView(
                    shrinkWrap: true,
                    children: <Widget>[
                      for (int i = 0; i < data.animeStaffPositions.length; i++)
                        Container(
                          margin: EdgeInsets.only(
                            bottom: 5.0,
                          ),
                          height: 120,
                          width: 310,
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.grey[800],
                                border: Border.all(
                                  color: Colors.grey[800],
                                  width: 2.5,
                                ),
                                borderRadius: BorderRadius.circular(10)),
                            child: Column(
                              children: [
                                Column(
                                  children: <Widget>[
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        "Titulo: " +
                                            data.animeStaffPositions[i].anime
                                                .name,
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.symmetric(
                                        horizontal: 10.0,
                                      ),
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          border: Border.all(
                                            color: Colors.black,
                                            width: 2.5,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      height: 60,
                                      width: 70,
                                      child: Align(
                                        alignment: Alignment.centerRight,
                                        child: Image.network(
                                          data.animeStaffPositions[i].anime
                                              .imageUrl,
                                          width: 90,
                                          height: 60,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    'Rol: ' +
                                        data.animeStaffPositions[i].position,
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                    ],
                  ),
                ),
              ],
            );
          }
        }
      },
    );
  }
}
