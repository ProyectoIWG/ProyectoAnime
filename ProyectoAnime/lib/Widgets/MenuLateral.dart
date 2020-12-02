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
            accountName:
                Text('Creado por \n Adolo Espinosa, Nicolas Bello y Darwin'),
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
