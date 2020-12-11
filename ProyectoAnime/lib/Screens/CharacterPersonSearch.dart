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
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Image.asset(
          "assets/iconologo.png",
          height: 50,
        ),
      ),
      body: Column(
        children: [
          Text('Los resultados de la busqueda son:'),
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
                return Container(
                  height: 625,
                  child: ListView.builder(
                    itemCount: animedata.length,
                    scrollDirection: Axis.vertical,
                    itemBuilder: (context, position) {
                      return Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                        child: Card(
                          margin: EdgeInsets.symmetric(
                            vertical: 1,
                            horizontal: 15,
                          ),
                          child: ListTile(
                            leading:
                                Image.network(animedata[position].imageUrl),
                            title: Text(animedata[position].name),
                            onTap: () {
                              if (_tipo == SearchType.person) {
                                Navigator.of(context).pushNamed('/PersonPage',
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
                    },
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
