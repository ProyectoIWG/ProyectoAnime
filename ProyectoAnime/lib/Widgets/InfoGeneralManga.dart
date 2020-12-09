import 'package:flutter/material.dart';

class InfoGeneralManga extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.symmetric(
            vertical: 25.0,
          ),
          decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                color: Colors.black,
                width: 2.5,
              )),
          height: 45,
          width: 200,
          child: Column(
            children: <Widget>[
              Align(
                alignment: Alignment.bottomCenter,
                child: Text(
                  "Informacion general: ",
                  style: TextStyle(
                    fontSize: 20.0,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Text(" "),
              ),
            ],
          ),
        ),
        Card(
          child: Column(
            children: <Widget>[
              Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  "Titulo: ",
                  style: TextStyle(
                    fontSize: 15.0,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  "Tipo: ",
                  style: TextStyle(
                    fontSize: 15.0,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  "Status: ",
                  style: TextStyle(
                    fontSize: 15.0,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  "Autores: ",
                  style: TextStyle(
                    fontSize: 15.0,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
