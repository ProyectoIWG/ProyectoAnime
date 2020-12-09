import 'package:ProyectoAnime/functions/functions.dart';
import 'package:flutter/material.dart';
// import 'package:ProyectoAnime/jikan_api.dart';

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
          return Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.symmetric(
                  vertical: 30.0,
                  horizontal: 20.0,
                ),
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      color: Colors.black,
                      width: 2.5,
                    )),
                height: 40,
                width: 170,
                child: Align(
                  alignment: Alignment.center,
                  child: Text("Información general"),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      color: Colors.black,
                      width: 2.5,
                    )),
                height: 300,
                width: 350,
                child: Container(
                  child: ListView(
                    children: <Widget>[
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text("Roles de actuación de voz:"),
                      ),
                    ],
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
