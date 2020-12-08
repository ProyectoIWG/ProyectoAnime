import 'package:flutter/material.dart';

class MenuLateral extends StatelessWidget {
  const MenuLateral({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      // Menu lateral
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          UserAccountsDrawerHeader(
            decoration: BoxDecoration(color: Colors.black),
            accountName: Text(
                'Creado por \nAdolo Espinosa, Nicolas Bello y \nDarwin Gutiérrez'),
            accountEmail: null,
            currentAccountPicture: Image.asset(
              'assets/Saber.png',
            ),
          ),
          ListTile(
            title: Text('Top 10 Animes'),
            onTap: () {
              Navigator.of(context).pushNamed('/AnimeTop');
            },
          ),
          ListTile(
            title: Text('Top 10 Animes Populares'),
            onTap: () {
              Navigator.of(context).pushNamed('/AnimePopu');
            },
          ),
          ListTile(
            title: Text('Top 10 Animes en Emisión'),
            onTap: () {
              Navigator.of(context).pushNamed('/AnimeAiring');
            },
          ),
          ListTile(
            title: Text('Top 10 Peliculas Anime'),
            onTap: () {
              Navigator.of(context).pushNamed('/AnimeMovie');
            },
          ),
          ListTile(
            title: Text('Top 10 Mangas'),
            onTap: () {
              Navigator.of(context).pushNamed('/MangaTop');
            },
          ),
        ],
      ),
    );
  }
}
