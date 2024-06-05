import 'package:flutter/material.dart';

class Categorias extends StatefulWidget {
  const Categorias({super.key});

  @override
  State<Categorias> createState() => _CategoriasState();
}

class _CategoriasState extends State<Categorias> {
  @override
  Widget build(BuildContext context) {
    return Container(
      //botoes categorias
      width: double.infinity,
      height: 188,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Padding(
            padding: EdgeInsets.all(5.0),
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).pushReplacementNamed('/irezumipage');
              },
              child: Container(
                height: 120,
                width: 120,
                child: Image.asset(
                  'assets/images/irezumi.png',
                ),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(5.0),
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).pushReplacementNamed('/sumiepage');
              },
              child: Container(
                height: 120,
                width: 120,
                child: Image.asset(
                  'assets/images/sumie.png',
                ),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(5.0),
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).pushReplacementNamed('/animepage');
              },
              child: Container(
                height: 120,
                width: 120,
                child: Image.asset(
                  'assets/images/anime.png',
                ),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(5.0),
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).pushReplacementNamed('/shodopage');
              },
              child: Container(
                height: 120,
                width: 120,
                child: Image.asset(
                  'assets/images/shodo.png',
                ),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
