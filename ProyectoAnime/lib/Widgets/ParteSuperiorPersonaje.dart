import 'package:flutter/material.dart';
// import 'package:ProyectoAnime/jikan_api.dart';

class ParteSuperiorPersonaje extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
              )),
          height: 120,
          width: 90,
          child: Align(
            alignment: Alignment.center,
            child: Image.asset(
              "assets/chainsaw.png",
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
          height: 120,
          width: 250,
          child: ListView(
            children: <Widget>[
              Align(
                alignment: Alignment.centerLeft,
                child: Text("Nombre:"),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Text(" "),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text("serie: "),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(" "),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text("Edad: "),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Text(" "),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text("Cumpleaños: "),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Text(" "),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text("caracteristicas personaje: "),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
