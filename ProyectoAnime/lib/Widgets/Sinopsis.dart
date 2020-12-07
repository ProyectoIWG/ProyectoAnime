import 'package:flutter/material.dart';
// import 'package:ProyectoAnime/jikan_api.dart';

class Sinopsis extends StatelessWidget {
  final int malId;
  Sinopsis(this.malId);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Card(
          margin: EdgeInsets.symmetric(
            vertical: 25.0,
            horizontal: 100.0,
          ),
          child: ListTile(
            title: Text(
              'Sinopsis',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20.0,
                fontFamily: 'Dosis',
                color: Colors.pink,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        Card(
          margin: EdgeInsets.symmetric(
            vertical: 5.0,
            horizontal: 25.0,
          ),
          child: ListTile(
            title: Text(
              'Kaguya Shinomiya y Miyuki Shirogane son dos chicos prodigio que controlan el consejo de estudiantes de su prestigiosa academia, lo que las convierte en la crème de la crème de la élite. Ambos serían la pareja perfecta, si no fuera por su orgullo y narcisismo.',
              style: TextStyle(
                fontSize: 15.0,
                fontFamily: 'Dosis',
                color: Colors.pink,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
