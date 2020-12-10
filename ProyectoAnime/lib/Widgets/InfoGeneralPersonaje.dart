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
          width: 170,
          child: Align(
            alignment: Alignment.center,
            child: Text("actor"),
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
          child: ListView(
            children: <Widget>[
              Align(
                alignment: Alignment.topLeft,
                child: Text("nombre japones generico"),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
