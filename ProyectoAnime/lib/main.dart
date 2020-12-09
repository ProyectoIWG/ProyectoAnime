import 'package:ProyectoAnime/Screens/AnimangaSearch.dart';
import 'package:ProyectoAnime/Screens/AnimeAiringTop.dart';
import 'package:ProyectoAnime/Screens/AnimeMovieTop.dart';
import 'package:ProyectoAnime/Screens/AnimePopularity.dart';
import 'package:ProyectoAnime/Screens/CharacterPersonSearch.dart';
import 'package:ProyectoAnime/Screens/MangaPage.dart';
import 'package:ProyectoAnime/Screens/MyHomePage.dart';
import 'package:ProyectoAnime/Screens/SearchPage.dart';
import 'package:flutter/material.dart';

import 'Screens/AnimePage.dart';
import 'Screens/AnimeTop.dart';
import 'Screens/MangaTop.dart';

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
      routes: {
        '/Home': (context) => MyHomePage(),
        '/AnimangaS': (context) => AnimangaSearch(),
        '/CharPerS': (context) => CharPerSearch(),
        '/AnimeTop': (context) => GetAnimeTop(),
        '/MangaTop': (context) => GetMangaTop(),
        '/SearchPage': (context) => SearchButton(),
        '/AnimePage': (context) => AnimePage(),
        '/MangaPage': (context) => MangaPage(),
        '/AnimePopu': (context) => GetAnimePopu(),
        '/AnimeAiring': (context) => GetAnimeAiring(),
        '/AnimeMovie': (context) => GetAnimeMovieTop(),
      },
      initialRoute: '/Home',
    );
  }
}
