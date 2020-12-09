import 'package:flutter/material.dart';
// import 'package:ProyectoAnime/jikan_api.dart';

class Personajes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        for (int i = 0; i < 3; i++)
          Row(
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
                height: 100,
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
                height: 40,
                width: 135,
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Personaje",
                    style: TextStyle(
                      fontSize: 12.0,
                    ),
                  ),
                ),
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
                height: 100,
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
            ],
          ),
      ],
    );
  }
}
