import 'package:ProyectoAnime/jikan_api.dart';
import 'package:built_collection/built_collection.dart';
import 'package:flutter/material.dart';

class AnimeSearch extends StatefulWidget {
  @override
  _AnimeSearchState createState() => _AnimeSearchState();
}

class _AnimeSearchState extends State<AnimeSearch> {
  @override
  Widget build(BuildContext context) {
    BuiltList<Search> _search = ModalRoute.of(context).settings.arguments;
    String _imagen = _search.first.imageUrl;
    String _tittle = _search.first.title;

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
          Card(
            margin: EdgeInsets.symmetric(
              vertical: 20.0,
              horizontal: 25.0,
            ),
            child: ListTile(
              leading: Image.network(_imagen),
              title: Text(
                _tittle,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
