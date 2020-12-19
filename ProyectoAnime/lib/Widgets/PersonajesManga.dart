import 'package:built_collection/built_collection.dart';
import 'package:flutter/material.dart';
import 'package:ProyectoAnime/jikan_api.dart';
import 'package:ProyectoAnime/functions/functions.dart';

class PersonajesManga extends StatelessWidget {
  final int malId;
  PersonajesManga(this.malId);
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: getStaffM(malId),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return CircularProgressIndicator();
        } else {
          BuiltList<CharacterRole> data = snapshot.data;
          return Container(
            child: Column(
              children: [
                for (int i = 0; i < data.length; i++)
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
                                verificarImagen1(data[i].imageUrl),
                                width: 90,
                                height: 125,
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
                                borderRadius: BorderRadius.circular(10)
                                ),
                            height: 70,
                            width: 120,
                            child: Align(
                              alignment: Alignment.center,
                              child: Text(
                                data[i].name,
                                style: TextStyle(
                                  fontSize: 12.0,
                                  color: Colors.white,
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
