import 'package:flutter/material.dart';
import 'package:link/link.dart';
//import 'package:webview_flutter/webview_flutter.dart';

class Informaciongeneral extends StatelessWidget {
  final int mailId;
  Informaciongeneral(this.mailId);
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
                  "Duración: ",
                  style: TextStyle(
                    fontSize: 15.0,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: Link(
                    child: Text("Link: Ver Kaguya-sama: Love is War"),
                    url:
                        "https://www3.animeflv.net/ver/kaguyasama-wa-kokurasetai-tensaitachi-no-renai-zunousen-1"),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
