import 'package:flutter/material.dart';
// import 'package:ProyectoAnime/jikan_api.dart';

class ParteSuperiorManga extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Column(children: <Widget>[
          Container(
            decoration: BoxDecoration(
                color: Colors.lightGreen,
                border: Border.all(
                  color: Colors.lightBlue,
                  width: 2.5,
                )),
            height: 100,
            width: 135,
            child: Column(
              children: <Widget>[
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Nombre",
                    style: TextStyle(
                      fontSize: 12.0,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(" "),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    "->Chainsawman<-",
                    style: TextStyle(
                      fontSize: 12.0,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.yellow,
                border: Border.all(
                  color: Colors.lightBlue,
                  width: 2.5,
                )),
            height: 100,
            width: 135,
            child: Column(
              children: <Widget>[
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Autor",
                    style: TextStyle(
                      fontSize: 12.0,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(" "),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    "->Tatsuki Fujimito<-",
                    style: TextStyle(
                      fontSize: 12.0,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ]),
        Column(children: <Widget>[
          Container(
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  color: Colors.lightBlue,
                  width: 2.5,
                )),
            height: 145,
            width: 90,
            child: Align(
              alignment: Alignment.center,
              child: Image.asset(
                "assets/chainsaw.png",
                width: 90,
                height: 150,
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.red,
                border: Border.all(
                  color: Colors.lightBlue,
                  width: 2.5,
                )),
            height: 55,
            width: 90,
            child: Column(
              children: <Widget>[
                Align(
                  alignment: Alignment.center,
                  child: Text("N° de caps:"),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(" "),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Text("->95<-"),
                ),
              ],
            ),
          ),
        ]),
        Column(children: <Widget>[
          Container(
            decoration: BoxDecoration(
                color: Colors.yellow,
                border: Border.all(
                  color: Colors.lightBlue,
                  width: 2.5,
                )),
            height: 100,
            width: 135,
            child: Align(
              alignment: Alignment.center,
              child: Text(
                "Nota: X ",
                style: TextStyle(
                  fontSize: 12.0,
                ),
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.lightGreen,
                border: Border.all(
                  color: Colors.lightBlue,
                  width: 2.5,
                )),
            height: 100,
            width: 135,
            child: Column(
              children: <Widget>[
                Align(
                  alignment: Alignment.topCenter,
                  child: Text(
                    "Generos",
                    style: TextStyle(
                      fontSize: 12.0,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(" "),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    "->Comedia Accion<-",
                    style: TextStyle(
                      fontSize: 12.0,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    "->Horror<-",
                    style: TextStyle(
                      fontSize: 12.0,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    "->Sobrenatural<-",
                    style: TextStyle(
                      fontSize: 12.0,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ]),
      ],
    );
  }
}

// soy un cambio by me //
//Hola mundo world//
