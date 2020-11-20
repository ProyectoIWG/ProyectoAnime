import 'package:built_collection/built_collection.dart';

import '../jikan_api.dart';

Future<BuiltList<Search>> buscar(String str, var a) async {
  var jikan = Jikan();
  var busqueda = await jikan.search(str, a);
  return busqueda;
}

Future<int> id(String str, var b) async {
  var a = await buscar(str, b);
  return a.first.malId;
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
