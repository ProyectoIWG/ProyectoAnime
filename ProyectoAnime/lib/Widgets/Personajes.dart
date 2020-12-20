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
                          Expanded(
                            child: Container(
                              margin: EdgeInsets.symmetric(
                                vertical: 25.0,
                                horizontal: 33.0,
                              ),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(
                                  color: Colors.grey,
                                  width: 2.5,
                                ),
                              ),
                              height: 70,
                              width: 70,
                              child: Align(
                                alignment: Alignment.center,
                                child: Image.network(
                                  verificarImagen1(data.characters[i].imageUrl),
                                  width: 90,
                                  height: 70,
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.white24,
                                  border: Border.all(
                                    color: Colors.black,
                                    width: 2.5,
                                  ),
                                  borderRadius: BorderRadius.circular(10)),
                              height: 70,
                              width: 120,
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
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              margin: EdgeInsets.symmetric(
                                horizontal: 33.0,
                              ),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(
                                  color: Colors.grey,
                                  width: 2.5,
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              height: 70,
                              width: 30,
                              child: Align(
                                alignment: Alignment.center,
                                child: Image(
                                  image: (verificarImagen2(
                                              data.characters[i].voiceActors) ==
                                          null)
                                      ? AssetImage('assets/Fondo_Blanco.png')
                                      : NetworkImage(
                                          verificarImagen2(
                                              data.characters[i].voiceActors),
                                        ),
                                ),
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
