import 'package:ProyectoAnime/functions/functions.dart';
import 'package:ProyectoAnime/jikan_api.dart';
import 'package:built_collection/built_collection.dart';
import 'package:flutter/material.dart';

class CharPerSearch extends StatefulWidget {
  @override
  _CharPerSearchState createState() => _CharPerSearchState();
}

class _CharPerSearchState extends State<CharPerSearch> {
  @override
  Widget build(BuildContext context) {
    List _datos = ModalRoute.of(context).settings.arguments;
    SearchType _tipo = _datos[1];
    String _strBuscar = _datos[0];

    return Scaffold(
      backgroundColor: Colors.white70,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Image.asset(
          "assets/iconologo.png",
          height: 50,
        ),
      ),
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40), color: Colors.black87),
            alignment: Alignment.center,
            child: Text(
              'Los resultados de la busqueda son:',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
          FutureBuilder(
            future: buscar(_strBuscar, _tipo),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return Padding(
                  padding: const EdgeInsets.all(160.0),
                  child: Center(
                    child: CircularProgressIndicator(
                      strokeWidth: 6.0,
                      backgroundColor: Colors.grey,
                    ),
                  ),
                );
              } else {
                BuiltList<Search> animedata = snapshot.data;
                int largo = verificarlenght(animedata);
                return Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.black87,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: ListView.builder(
                      itemCount: largo,
                      scrollDirection: Axis.vertical,
                      itemBuilder: (context, position) {
                        if (largo == 1) {
                          return Card(
                            color: Colors.white10,
                            child: ListTile(
                              title: Text(
                                'No se encontraron resultados',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          );
                        } else {
                          return Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 5, horizontal: 15),
                            child: Card(
                              margin: EdgeInsets.symmetric(
                                vertical: 1,
                                horizontal: 15,
                              ),
                              color: Colors.white10,
                              child: ListTile(
                                leading:
                                    Image.network(animedata[position].imageUrl),
                                title: Text(
                                  animedata[position].name,
                                  style: TextStyle(color: Colors.white),
                                ),
                                onTap: () {
                                  if (_tipo == SearchType.person) {
                                    Navigator.of(context).pushNamed(
                                        '/PersonPage',
                                        arguments: animedata[position].malId);
                                  } else {
                                    Navigator.of(context).pushNamed(
                                        '/CharacterPage',
                                        arguments: animedata[position].malId);
                                  }
                                },
                              ),
                            ),
                          );
                        }
                      },
                    ),
                  ),
                );
              }
            },
          )
        ],
      ),
    );
  }
}
