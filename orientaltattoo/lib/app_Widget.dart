import 'package:flutter/material.dart';
import 'package:oriental_tattoos/anime_page.dart';
import 'package:oriental_tattoos/home_page.dart';
import 'package:oriental_tattoos/irezumi_page.dart';
import 'package:oriental_tattoos/shodo_page.dart';
import 'package:oriental_tattoos/sumie_page.dart';
import 'package:oriental_tattoos/t1_page.dart';
import 'package:oriental_tattoos/t2_page.dart';
import 'package:oriental_tattoos/t3_page.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/home',
      routes: {
        '/home': (context) => HomePage(),
        '/t1page': (context) => Tat1Page(),
        '/t2page': (context) => Tat2Page(),
        '/t3page': (context) => Tat3Page(),
        '/animepage': (context) => AnimePage(),
        '/sumiepage': (context) => SumiePage(),
        '/irezumipage': (context) => IrezumiPage(),
        '/shodopage': (context) => ShodoPage(),
      },
    );
  }
}
