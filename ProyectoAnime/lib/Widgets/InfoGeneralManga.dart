import 'package:flutter/material.dart';
import 'package:ProyectoAnime/jikan_api.dart';
import 'package:ProyectoAnime/functions/functions.dart';

class InfoGeneralManga extends StatelessWidget {
  final int malId;
  InfoGeneralManga(this.malId);
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: mangaData(malId),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return CircularProgressIndicator();
        } else {
          Manga data = snapshot.data;
          return Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.symmetric(
                  vertical: 25.0,
                ),
                decoration: BoxDecoration(
                    color: Colors.white24,
                    border: Border.all(
                      color: Colors.black,
                      width: 2.5,
                    ),
                    borderRadius: BorderRadius.circular(10)
                    ),
                height: 45,
                width: 200,
                child: Column(
                  children: <Widget>[
                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        "Informacion general: ",
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(" "),
                    ),
                  ],
                ),
              ),
              Card(
                color: Colors.white24,
                child: Column(
                  children: <Widget>[
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Text(
                        "Titulo: " +
                            '\n' +
                            data.title +
                            '\n' +
                            data.titleEnglish +
                            '\n' +
                            data.titleJapanese,
                        style: TextStyle(
                          fontSize: 15.0,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Text(
                        "Tipo: " + data.type,
                        style: TextStyle(
                          fontSize: 15.0,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Text(
                        "Status: " + data.status,
                        style: TextStyle(
                          fontSize: 15.0,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Text(
                        "Autores: " + data.authors.first.name,
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
          );
        }
      },
    );
  }
}
