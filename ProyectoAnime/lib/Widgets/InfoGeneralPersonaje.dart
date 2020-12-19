import 'package:ProyectoAnime/functions/functions.dart';
import 'package:flutter/material.dart';
import 'package:ProyectoAnime/jikan_api.dart';

class InfoGeneralPersonaje extends StatelessWidget {
  final int malId;
  InfoGeneralPersonaje(this.malId);
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: getCharacData(malId),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return CircularProgressIndicator();
        } else {
          Character data = snapshot.data;
          return Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.symmetric(
                  vertical: 5.0,
                  horizontal: 20.0,
                ),
                decoration: BoxDecoration(
                    color: Colors.grey[800],
                    border: Border.all(
                      color: Colors.grey[800],
                      width: 2.5,
                    ),
                    borderRadius: BorderRadius.circular(10)),
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    data.about,
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              verificarVoice(data),
            ],
          );
        }
      },
    );
  }
}

verificarVoice(Character data) {
  if (data.voiceActors.isNotEmpty) {
    return Column(
      children: [
        Align(
          alignment: Alignment.center,
          child: Text(
            "actores de voz:",
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            border: Border(
              top: BorderSide(
                width: 2.5,
              ),
            ),
          ),
          height: 440,
          width: 350,
          child: ListView(
            children: <Widget>[
              for (int i = 0; i < data.voiceActors.length; i++)
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
                                "Nombre: " + data.voiceActors[i].name,
                                style: TextStyle(
                                    fontSize: 20, color: Colors.white),
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
                                  borderRadius: BorderRadius.circular(10)),
                              height: 60,
                              width: 70,
                              child: Align(
                                alignment: Alignment.centerRight,
                                child: Image.network(
                                  data.voiceActors[i].imageUrl,
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
                            'Lenguaje: ' + data.voiceActors[i].language,
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
    return Text('');
  }
}
