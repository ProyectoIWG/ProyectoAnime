import 'package:flutter/material.dart';

class AnimeSearch extends StatefulWidget {
  @override
  _AnimeSearchState createState() => _AnimeSearchState();
}

class _AnimeSearchState extends State<AnimeSearch> {
  @override
  Widget build(BuildContext context) {
    Map id = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Image.asset(
          "assets/iconologo.png",
          height: 50,
        ),
      ),
    );
  }
}
