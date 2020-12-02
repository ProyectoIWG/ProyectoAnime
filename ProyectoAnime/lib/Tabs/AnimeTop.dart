import 'package:flutter/material.dart';

class GetAnimeTop extends StatelessWidget {
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
        child: Text('Anime Top 10'),
      ),
    );
  }
}
