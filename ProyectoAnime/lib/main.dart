import 'package:flutter/material.dart';
import 'package:ProyectoAnime/functions/functions.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  MyHomePageStatus createState() => MyHomePageStatus();
}

class MyHomePageStatus extends State<MyHomePage> {
  var busqueda;
  var nombre;
  int result;
  var _lista = ["Anime", "Manga", "Persona", "Personaje"];
  String _vista = "Seleccione una opción";
  var _tipo;
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
      body: Column(
        children: <Widget>[
          DropdownButton(
            items: _lista
                .map((String a) => DropdownMenuItem(value: a, child: Text(a)))
                .toList(),
            onChanged: (_value) {
              setState(() {
                _vista = _value;
                _tipo = tipo(_value);
              });
            },
            hint: Text(_vista),
          ),
          TextField(
            decoration: InputDecoration(
                hintText: "Busca un anime", icon: Icon(Icons.search)),
            onSubmitted: (String str) async {
              setState(() {
                id(str, _tipo).then((value) {
                  result = value;
                });
              });
            },
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Text(
              "Top 10 Mejores",
              style: TextStyle(
                color: Colors.red,
                fontSize: 20.0,
              ),
            ),
          ),
          DefaultTabController(
              length: 2,
              child: TabBar(
                tabs: [
                  Tab(
                    child: Text(
                      "Anime",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                  Tab(
                    child: Text(
                      "Manga",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                ],
              )),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          print(result);
        },
      ),
    );
  }
}
