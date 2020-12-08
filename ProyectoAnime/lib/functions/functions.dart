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
    } else {
      return '?';
    }
  }
}

Future<BuiltList<Promo>> getVideos(int malId) {
  var jikan = Jikan();
  var a = jikan.getAnimeVideos(malId);
  return a;
}

Future<CharacterStaff> getStaff(int malId) {
  var jikan = Jikan();
  var a = jikan.getAnimeCharactersStaff(malId);
  return a;
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
    return data.first.imageUrl;
  }
}

verificarNombre(BuiltList<VoiceActor> data) {
  if (data.isEmpty) {
    return '';
  } else {
    return data.first.name;
  }
}
