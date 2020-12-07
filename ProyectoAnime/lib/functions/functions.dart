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

Future<CharacterStaff> animeStaff(int malId) async {
  var jikan = Jikan();
  var a = jikan.getAnimeCharactersStaff(malId);
  return a;
}

getDirector(CharacterStaff data) {
  for (var i in data.staff) {
    if (i.positions.first == 'Director') {
      return i.name;
    }
  }
}
