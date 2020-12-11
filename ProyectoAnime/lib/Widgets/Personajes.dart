import 'package:flutter/material.dart';
import 'package:ProyectoAnime/functions/functions.dart';
import 'package:ProyectoAnime/jikan_api.dart';

class Personajes extends StatelessWidget {
  final int malId;
  Personajes(this.malId);
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: getStaffA(malId),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return CircularProgressIndicator();
        } else {
          CharacterStaff data = snapshot.data;
          return Container(
            child: Column(
              children: [
                for (int i = 0; i < data.characters.length; i++)
                  Column(
                    children: <Widget>[
                      Row(
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
                            height: 100,
                            width: 90,
                            child: Align(
                              alignment: Alignment.center,
                              child: Image.network(
                                verificarImagen1(data.characters[i].imageUrl),
                                width: 90,
                                height: 125,
                              ),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.yellow,
                                border: Border.all(
                                  color: Colors.lightBlue,
                                  width: 2.5,
                                )),
                            height: 40,
                            width: 165,
                            child: Align(
                              alignment: Alignment.center,
                              child: Text(
                                "Peronaje: " +
                                    data.characters[i].name +
                                    '\nActor: ' +
                                    verificarNombre(
                                        data.characters[i].voiceActors),
                                style: TextStyle(
                                  fontSize: 12.0,
                                ),
                              ),
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
                                )),
                            height: 100,
                            width: 90,
                            child: Align(
                              alignment: Alignment.center,
                              child: Image.network(
                                verificarImagen2(
                                    data.characters[i].voiceActors),
                                width: 90,
                                height: 125,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
              ],
            ),
          );
        }
      },
    );
  }
}