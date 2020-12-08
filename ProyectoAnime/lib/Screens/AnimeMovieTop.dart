import 'package:ProyectoAnime/functions/functions.dart';
import 'package:ProyectoAnime/jikan_api.dart';
import 'package:built_collection/built_collection.dart';
import 'package:flutter/material.dart';

class GetAnimeMovieTop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Image.asset(
          "assets/iconologo.png",
          height: 50,
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Top 10 peliculas animes mejores calificadas',
                style: TextStyle(fontSize: 19),
              ),
            ),
            Container(
              height: 615,
              child: FutureBuilder(
                future: topMovies(TopType.anime),
                builder: (BuildContext context, AsyncSnapshot snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return Center(child: CircularProgressIndicator());
                  } else {
                    BuiltList<Top> top = snapshot.data;
                    return ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      itemCount: 10,
                      itemBuilder: (context, position) {
                        return Padding(
                          padding: const EdgeInsets.all(10),
                          child: Card(
                            margin: EdgeInsets.symmetric(
                              vertical: 1,
                              horizontal: 15,
                            ),
                            child: ListTile(
                              leading: Image.network(
                                top[position].imageUrl,
                              ),
                              title: Text(
                                top[position].title,
                                style: TextStyle(fontSize: 20),
                              ),
                              subtitle: Text(top[position].score.toString()),
                              onTap: () {
                                Navigator.of(context).pushNamed('/AnimePage',
                                    arguments: top[position].malId);
                              },
                            ),
                          ),
                        );
                      },
                    );
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}