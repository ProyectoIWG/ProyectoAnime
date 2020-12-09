import 'package:flutter/material.dart';

class Informaciongeneral extends StatelessWidget {
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
                child: Text(
                  "Tipo:",
                  style: TextStyle(
                    fontSize: 20.0,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Status:",
                  style: TextStyle(
                    fontSize: 20.0,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Generos:",
                  style: TextStyle(
                    fontSize: 20.0,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Autores:",
                  style: TextStyle(
                    fontSize: 20.0,
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
