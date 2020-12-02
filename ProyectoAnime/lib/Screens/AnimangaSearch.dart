import 'package:ProyectoAnime/jikan_api.dart';
import 'package:built_collection/built_collection.dart';
import 'package:flutter/material.dart';

class AnimangaSearch extends StatefulWidget {
  @override
  _AnimangaSearchState createState() => _AnimangaSearchState();
}

class _AnimangaSearchState extends State<AnimangaSearch> {
  @override
  Widget build(BuildContext context) {
    BuiltList<Search> _search = ModalRoute.of(context).settings.arguments;

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
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Los Resultados de tu busqueda son'),
            ),
            Container(
              height: 625.0,
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: 15,
                itemBuilder: (context, position) {
                  return Padding(
                    padding: const EdgeInsets.all(10),
                    child: Card(
                      margin: EdgeInsets.symmetric(
                        vertical: 1,
                        horizontal: 15,
                      ),
                      child: ListTile(
                        leading: Image.network(
                          _search[position].imageUrl,
                          height: 100,
                          width: 50,
                        ),
                        title: Text(_search[position].title),
                        onTap: () {},
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ));
  }
}
