import 'package:flutter/material.dart';
import 'package:ProyectoAnime/jikan_api.dart';
import 'package:ProyectoAnime/functions/functions.dart';

class ParteSuperiorPersonaje extends StatelessWidget {
  final int malId;
  ParteSuperiorPersonaje(this.malId);
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: getCharacData(malId),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return CircularProgressIndicator();
        } else {
          Character data = snapshot.data;
          return Row(
            children: <Widget>[
              Container(
                margin: EdgeInsets.symmetric(
                  vertical: 25.0,
                  horizontal: 10.0,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    color: Colors.black,
                    width: 2.5,
                  ),
                ),
                height: 120,
                width: 90,
                child: Align(
                  alignment: Alignment.center,
                  child: Image.network(
                    data.imageUrl,
                    width: 90,
                    height: 125,
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.green[100],
                  border: Border.all(
                    color: Colors.lightBlue,
                    width: 2.5,
                  ),
                ),
                height: 120,
                width: 250,
                child: ListView(
                  children: <Widget>[
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text("Nombre: " + data.name),
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(" "),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child:
                          Text("Animeography: " + getSeries(data.animeography)),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child:
                          Text("Mangaography: " + getSeries(data.mangaography)),
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
