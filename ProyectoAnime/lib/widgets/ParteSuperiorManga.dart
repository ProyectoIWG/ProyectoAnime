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
                    "->Kaguya sama: Love is war<-",
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
                    "->Aka Akasaka<-",
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
                "assets/Kaguya.jpg",
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
                  child: Text("->12<-"),
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
                    "->Comedia Romantica<-",
                    style: TextStyle(
                      fontSize: 12.0,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    "->Drama<-",
                    style: TextStyle(
                      fontSize: 12.0,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    "->Escolar<-",
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
