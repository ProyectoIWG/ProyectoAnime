import 'package:built_collection/built_collection.dart';

import '../jikan_api.dart';

Future<BuiltList<Search>> buscar(String str, var a) async {
  var jikan = Jikan();
  var busqueda = await jikan.search(str, a);
  return busqueda;
}

Future<BuiltList<Search>> id(String str, var b) async {
  var a = await buscar(str, b);
  return a;
}

Future<BuiltList<Top>> top10(var tipo) async {
  var jikan = Jikan();
  var a = await jikan.getTop(tipo);
  return a;
}

Future<BuiltList<Top>> topPopu(var tipo) async {
  var jikan = Jikan();
  var a = await jikan.getTop(tipo, subtype: TopSubtype.bypopularity);
  return a;
}

Future<BuiltList<Top>> topAiring(var tipo) async {
  var jikan = Jikan();
  var a = await jikan.getTop(tipo, subtype: TopSubtype.airing);
  return a;
}

Future<BuiltList<Top>> topMovies(var tipo) async {
  var jikan = Jikan();
  var a = await jikan.getTop(tipo, subtype: TopSubtype.movie);
  return a;
}

getSeason(DateTime mes) {
  if (mes.month == 1 || mes.month == 2 || mes.month == 3) {
    return SeasonType.winter;
  } else if (mes.month == 4 || mes.month == 5 || mes.month == 6) {
    return SeasonType.spring;
  } else if (mes.month == 7 || mes.month == 8 || mes.month == 9) {
    return SeasonType.summer;
  } else {
    return SeasonType.fall;
  }
}

Future<Season> animeSeason(DateTime fecha) async {
  var jikan = Jikan();
  var a = jikan.getSeason(year: fecha.year, season: getSeason(fecha));
  return a;
}

tipo(String str) {
  var a;
  if (str == "Anime") {
    a = SearchType.anime;
    return a;
  } else if (str == "Persona") {
    a = SearchType.person;
    return a;
  } else if (str == "Manga") {
    a = SearchType.manga;
    return a;
  } else {
    a = SearchType.character;
    return a;
  }
}

Future<Anime> animeData(int malId) async {
  var jikan = Jikan();
  var a = jikan.getAnimeInfo(malId);
  return a;
}

Future<Manga> mangaData(int malId) async {
  var jikan = Jikan();
  var a = jikan.getMangaInfo(malId);
  return a;
}

Future<CharacterStaff> animeStaff(int malId) async {
  var jikan = Jikan();
  var a = jikan.getAnimeCharactersStaff(malId);
  return a;
}

getDirector(CharacterStaff data) {
  for (var i in data.staff) {
    for (var e in i.positions) {
      if (e == 'Director') {
        return i.name;
      }
    }
  }
  return '?';
}

Future<Character> getCharacData(int malId) {
  var jikan = Jikan();
  var a = jikan.getCharacterInfo(malId);
  return a;
}

Future<BuiltList<Episode>> getVideos(int malId) {
  var jikan = Jikan();
  var a = jikan.getAnimeEpisodes(malId);
  return a;
}

Future<CharacterStaff> getStaffA(int malId) {
  var jikan = Jikan();
  var a = jikan.getAnimeCharactersStaff(malId);
  return a;
}

Future<BuiltList<CharacterRole>> getStaffM(int malId) {
  var jikan = Jikan();
  var a = jikan.getMangaCharacters(malId);
  return a;
}

Future<Person> getPersonInfo(int malId) {
  var jikan = Jikan();
  var a = jikan.getPersonInfo(malId);
  return a;
}

verificarCaps(int number) {
  if (number == null) {
    return '?';
  } else {
    return number.toString();
  }
}

verificarImagen1(String str) {
  if (str == null) {
    return 'https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/6169b41c-74fe-4235-9815-1e8d4dc87406/d3hgxl4-a6d413df-c24f-4077-b1d2-8765659ef170.png/v1/fill/w_900,h_800,strp/png_fondo_blanco_by_camilhitha124_d3hgxl4-fullview.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOiIsImlzcyI6InVybjphcHA6Iiwib2JqIjpbW3siaGVpZ2h0IjoiPD04MDAiLCJwYXRoIjoiXC9mXC82MTY5YjQxYy03NGZlLTQyMzUtOTgxNS0xZThkNGRjODc0MDZcL2QzaGd4bDQtYTZkNDEzZGYtYzI0Zi00MDc3LWIxZDItODc2NTY1OWVmMTcwLnBuZyIsIndpZHRoIjoiPD05MDAifV1dLCJhdWQiOlsidXJuOnNlcnZpY2U6aW1hZ2Uub3BlcmF0aW9ucyJdfQ.ZwoW6wOVYsacJ1ORGubUbgFGNpuBOXcOAme5iDko2sM';
  } else {
    return str;
  }
}

verificarImagen2(BuiltList<VoiceActor> data) {
  if (data.isEmpty) {
    return 'https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/6169b41c-74fe-4235-9815-1e8d4dc87406/d3hgxl4-a6d413df-c24f-4077-b1d2-8765659ef170.png/v1/fill/w_900,h_800,strp/png_fondo_blanco_by_camilhitha124_d3hgxl4-fullview.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOiIsImlzcyI6InVybjphcHA6Iiwib2JqIjpbW3siaGVpZ2h0IjoiPD04MDAiLCJwYXRoIjoiXC9mXC82MTY5YjQxYy03NGZlLTQyMzUtOTgxNS0xZThkNGRjODc0MDZcL2QzaGd4bDQtYTZkNDEzZGYtYzI0Zi00MDc3LWIxZDItODc2NTY1OWVmMTcwLnBuZyIsIndpZHRoIjoiPD05MDAifV1dLCJhdWQiOlsidXJuOnNlcnZpY2U6aW1hZ2Uub3BlcmF0aW9ucyJdfQ.ZwoW6wOVYsacJ1ORGubUbgFGNpuBOXcOAme5iDko2sM';
  } else {
    for (var i in data) {
      if (i.language == 'Japanese') {
        return i.imageUrl;
      }
    }
  }
}

verificarNombre(BuiltList<VoiceActor> data) {
  if (data.isEmpty) {
    return '';
  } else {
    for (var i in data) {
      if (i.language == 'Japanese') {
        return i.name;
      }
    }
  }
}

verificarCumple(var str) {
  if (str == null) {
    return '?';
  } else {
    return str.substring(0, 10);
  }
}

verificarAbout(var str) {
  if (str == null) {
    return '';
  } else {
    return str;
  }
}

String getSeries(BuiltList<CharacterRole> data) {
  String names = '';
  for (var i in data) {
    names += i.name + '\n';
  }
  return names;
}
