import 'package:flutter/material.dart';

class Tatuadores extends StatefulWidget {
  const Tatuadores({super.key});

  @override
  State<Tatuadores> createState() => _TatuadoresState();
}

class _TatuadoresState extends State<Tatuadores> {
  @override
  Widget build(BuildContext context) {
    return Container(
      //tatuadores
      width: double.infinity,
      height: 188,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Padding(
            padding: EdgeInsets.all(5.0),
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).pushReplacementNamed('/t1page');
              },
              child: Container(
                height: 188,
                width: 138,
                child: Image.asset(
                  'assets/images/T1.png',
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(5.0),
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).pushReplacementNamed('/t2page');
              },
              child: Container(
                height: 188,
                width: 138,
                child: Image.asset(
                  'assets/images/T2.png',
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(5.0),
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).pushReplacementNamed('/t3page');
              },
              child: Container(
                height: 188,
                width: 138,
                child: Image.asset(
                  'assets/images/T3.png',
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
