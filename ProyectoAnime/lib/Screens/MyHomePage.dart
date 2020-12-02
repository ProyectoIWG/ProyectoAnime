import 'package:ProyectoAnime/Widgets/AnimeSeason.dart';
import 'package:ProyectoAnime/Widgets/BotonBusqueda.dart';
import 'package:ProyectoAnime/Widgets/MenuLateral.dart';
import 'package:ProyectoAnime/functions/functions.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  MyHomePageStatus createState() => MyHomePageStatus();
}

class MyHomePageStatus extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  var result;
  var _lista = ["Anime", "Manga", "Persona", "Personaje"];
  String _vista = "Seleccione una opción";
  var _tipo;
  DateTime _fecha = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Image.asset(
          "assets/iconologo.png",
          height: 50,
        ),
      ),
      drawer: MenuLateral(),
      body: Column(
        children: <Widget>[
          DropdownButton(
            // menu para elegir busqueda
            items: _lista
                .map((String a) => DropdownMenuItem(value: a, child: Text(a)))
                .toList(),
            onChanged: (_value) {
              setState(() {
                _vista = _value;
                _tipo = tipo(_value);
              });
            },
            hint: Text(
              _vista,
              style: TextStyle(color: Colors.black87),
            ),
          ),
          TextField(
            // donde se busca
            decoration: InputDecoration(
                hintText: "Busca un anime", icon: Icon(Icons.search)),
            onSubmitted: (String str) async {
              setState(() {
                buscar(str, _tipo).then((value) {
                  result = value;
                });
              });
            },
          ),
          AnimeSeason(fecha: _fecha),
        ],
      ),
      floatingActionButton: BotonBusqueda(tipo: _tipo, result: result),
    );
  }
}
