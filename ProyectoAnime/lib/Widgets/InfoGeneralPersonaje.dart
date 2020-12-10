import 'package:flutter/material.dart';
// import 'package:ProyectoAnime/jikan_api.dart';

class InfoGeneralPersonaje extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
          width: 350,
          child: ListView(children: <Widget>[
            Align(
              alignment: Alignment.center,
              child: Text(
                  "historia/backstory: nose el loco le paso esto esto otro crecio asi y asi"),
            ),
          ]),
        ),
        Container(
          decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                color: Colors.black,
                width: 2.5,
              )),
          height: 440,
          width: 350,
          child: ListView(
            children: <Widget>[
              Align(
                alignment: Alignment.center,
                child: Text("actores de voz:"),
              ),
              for (int i = 0; i < 6; i++)
                Container(
                  margin: EdgeInsets.symmetric(
                    vertical: 10.0,
                  ),
                  height: 60,
                  width: 300,
                  child: Row(
                    children: <Widget>[
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text("nombre"),
                      ),
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Text("idioma"),
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
                        height: 60,
                        width: 70,
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: Image.asset(
                            "assets/chainsaw.png",
                            width: 90,
                            height: 60,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
            ],
          ),
        ),
      ],
    );
  }
}
