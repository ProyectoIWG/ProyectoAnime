import 'package:ProyectoAnime/functions/functions.dart';
import 'package:built_collection/built_collection.dart';
import 'package:flutter/material.dart';

import '../jikan_api.dart';

class GetMangaTop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
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
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  color: Colors.black87),
              alignment: Alignment.center,
              child: Text(
                'Top 10 mangas mejores calificados',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.black87,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: FutureBuilder(
                  future: top10(TopType.manga),
                  builder: (BuildContext context, AsyncSnapshot snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return Center(child: CircularProgressIndicator());
                    } else {
                      BuiltList<Top> top = snapshot.data;
                      return ListView.builder(
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
                              color: Colors.white10,
                              child: ListTile(
                                leading: Image.network(
                                  top[position].imageUrl,
                                ),
                                title: Text(
                                  top[position].title,
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.white),
                                ),
                                subtitle: Text(
                                  top[position].score.toString(),
                                  style: TextStyle(color: Colors.white70),
                                ),
                                onTap: () {
                                  Navigator.of(context).pushNamed('/MangaPage',
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
            ),
          ],
        ),
      ),
    );
  }
}
