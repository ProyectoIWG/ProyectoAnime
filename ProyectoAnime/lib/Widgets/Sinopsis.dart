import 'package:ProyectoAnime/functions/functions.dart';
import 'package:flutter/material.dart';
import 'package:ProyectoAnime/jikan_api.dart';

class Sinopsis extends StatelessWidget {
  final int malId;
  Sinopsis(this.malId);
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: animeData(malId),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return CircularProgressIndicator();
        } else {
          Anime sinopsis = snapshot.data;
          return Column(
            children: <Widget>[
              Card(
                color: Colors.white24,
                margin: EdgeInsets.symmetric(
                  vertical: 25.0,
                  horizontal: 100.0,
                ),
                child: ListTile(
                  title: Text(
                    'Sinopsis',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20.0,
                      fontFamily: 'Dosis',
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Card(
                color: Colors.white24,
                margin: EdgeInsets.symmetric(
                  vertical: 5.0,
                  horizontal: 25.0,
                ),
                child: ListTile(
                  title: Text(
                    sinopsis.synopsis,
                    style: TextStyle(
                      fontSize: 15.0,
                      fontFamily: 'Dosis',
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          );
        }
      },
    );
  }
}
