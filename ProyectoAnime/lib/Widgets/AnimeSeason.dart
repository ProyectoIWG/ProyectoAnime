import 'package:ProyectoAnime/functions/functions.dart';
import 'package:flutter/material.dart';

import '../jikan_api.dart';

class AnimeSeason extends StatelessWidget {
  const AnimeSeason({
    Key key,
    @required DateTime fecha,
  })  : _fecha = fecha,
        super(key: key);

  final DateTime _fecha;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: animeSeason(_fecha),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return CircularProgressIndicator();
        } else {
          Season _season = snapshot.data;
          return Container(
            height: 550,
            child: ListView.builder(
              itemCount: 70,
              scrollDirection: Axis.vertical,
              itemBuilder: (context, position) {
                return Padding(
                  padding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                  child: Card(
                    margin: EdgeInsets.symmetric(
                      vertical: 1,
                      horizontal: 15,
                    ),
                    child: ListTile(
                      leading: Image.network(_season.anime[position].imageUrl),
                      title: Text(_season.anime[position].title),
                      onTap: () {},
                    ),
                  ),
                );
              },
            ),
          );
        }
      },
    );
  }
}
