import 'package:flutter/material.dart';

import '../jikan_api.dart';

class BotonBusqueda extends StatelessWidget {
  const BotonBusqueda({
    Key key,
    @required tipo,
    @required this.result,
  })  : _tipo = tipo,
        super(key: key);

  final _tipo;
  final result;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: Icon(Icons.search),
      onPressed: () async {
        Future.delayed(
          Duration(seconds: 1, milliseconds: 5),
          () {
            switch (_tipo) {
              case SearchType.anime:
                {
                  Navigator.of(context)
                      .pushNamed('/AnimangaS', arguments: result);
                }
                break;
              case SearchType.manga:
                {
                  Navigator.of(context)
                      .pushNamed('/AnimangaS', arguments: result);
                }
                break;
              case SearchType.character:
                {
                  Navigator.of(context)
                      .pushNamed('/CharPerS', arguments: result);
                }
                break;
              case SearchType.person:
                {
                  Navigator.of(context)
                      .pushNamed('/CharPerS', arguments: result);
                }
                break;
            }
          },
        );
      },
    );
  }
}
