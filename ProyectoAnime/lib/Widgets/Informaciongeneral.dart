import 'package:built_collection/built_collection.dart';
import 'package:flutter/material.dart';
import 'package:ProyectoAnime/functions/functions.dart';
import 'package:url_launcher/url_launcher.dart';
import '../jikan_api.dart';

class Informaciongeneral extends StatelessWidget {
  final int mailId;
  Informaciongeneral(this.mailId);
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: animeData(mailId),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return CircularProgressIndicator();
        } else {
          Anime data = snapshot.data;
          return Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.symmetric(
                  vertical: 25.0,
                ),
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      color: Colors.black,
                      width: 2.5,
                    )),
                height: 45,
                width: 200,
                child: Column(
                  children: <Widget>[
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Text(
                        "Informacion general: ",
                        style: TextStyle(
                          fontSize: 20.0,
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
                child: Column(
                  children: <Widget>[
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Text(
                        ("Titulo: " +
                            '\n' +
                            data.title +
                            '\n' +
                            data.titleJapanese +
                            '\n' +
                            data.titleJapanese),
                        style: TextStyle(
                          fontSize: 15.0,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Text(
                        "Tipo: " + data.type,
                        style: TextStyle(
                          fontSize: 15.0,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Text(
                        "Status: " + data.status,
                        style: TextStyle(
                          fontSize: 15.0,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Text(
                        "Duración: " + data.duration,
                        style: TextStyle(
                          fontSize: 15.0,
                        ),
                      ),
                    ),
                    FutureBuilder(
                      future: getVideos(mailId),
                      builder: (context, snapshot) {
                        if (snapshot.connectionState ==
                            ConnectionState.waiting) {
                          return CircularProgressIndicator();
                        } else {
                          BuiltList<Episode> data2 = snapshot.data;
                          if (data2.isEmpty || data2.first.videoUrl == null) {
                            return Text('');
                          } else {
                            return Align(
                              alignment: Alignment.bottomLeft,
                              child: RaisedButton(
                                child: Text('Presiona para ver: ' + data.title),
                                onPressed: () {
                                  String url = data2.first.videoUrl.substring(
                                      0, data2.first.videoUrl.length - 2);
                                  launch(url);
                                },
                              ),
                            );
                          }
                        }
                      },
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
