import 'package:flutter/material.dart';

class GetMangaTop extends StatelessWidget {
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
        child: Text('Manga Top 10'),
      ),
    );
  }
}
