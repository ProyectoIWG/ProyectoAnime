import 'package:built_collection/built_collection.dart';
import 'package:flutter/material.dart';
import 'package:link/link.dart';
import 'package:ProyectoAnime/functions/functions.dart';

import '../jikan_api.dart';
//import 'package:webview_flutter/webview_flutter.dart';

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
                          BuiltList<Promo> data2 = snapshot.data;
                          return Align(
                            alignment: Alignment.bottomLeft,
                            child: Link(
                                child: Text(
                                    "Link: Ver Trailer" + ' ' + data.title),
                                url: data2.first.videoUrl),
                          );
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
