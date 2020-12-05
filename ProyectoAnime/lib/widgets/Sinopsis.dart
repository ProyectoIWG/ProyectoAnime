import 'package:flutter/material.dart';
// import 'package:ProyectoAnime/jikan_api.dart';

class Sinopsis extends StatelessWidget {
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
              'Hombre joven roto + demonio perro motosierra = Hombre motosierra! ¡El nombre lo dice todo! ¡La vida de pobreza de Denji cambia para siempre cuando se fusiona con su perro mascota, Pochita! Ahora vive en la gran ciudad y es un Devil Hunter oficial. ¡Pero tiene mucho que aprender sobre su nuevo trabajo y los poderes de la motosierra!.',
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
