import 'package:flutter/material.dart';
import 'package:insta_image_viewer/insta_image_viewer.dart';
import 'package:oriental_tattoos/Widgets/categorias.dart';
import 'package:oriental_tattoos/Widgets/custom_drawer.dart';
import 'package:oriental_tattoos/Widgets/tatuadores.dart';

class SumiePage extends StatefulWidget {
  const SumiePage({super.key});

  @override
  State<SumiePage> createState() => _SumiePageState();
}

class _SumiePageState extends State<SumiePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFF8F1EB),
        title: Row(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.of(context).pushReplacementNamed('/home');
              },
              child: Container(
                height: 40,
                width: 40,
                child: Image.asset('assets/images/logo.png'),
              ),
            ),
          ],
        ),
      ),
      endDrawer: CustomDrawer(),
      body: Stack(
        children: [
          Container(
            color: Color(0xFFF0DBC8),
          ),
          ListView(
            children: [
              Container(
                height: 20,
              ),
              Container(
                height: 30,
                width: 393,
                color: Color(0xFFF8F1EB),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(8, 8, 8, 0),
                  child: Text(
                    'Estilo Sumi-e',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ),
              Container(
                height: 626,
                width: 393,
                color: Color(0xFFF8F1EB),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GridView.count(
                    physics: NeverScrollableScrollPhysics(),
                    crossAxisSpacing: 15.0,
                    mainAxisSpacing: 15.0,
                    crossAxisCount: 2,
                    children: [
                      Container(
                        height: 173,
                        width: 177,
                        child: InstaImageViewer(
                            child:
                                Image.asset('assets/images/sumie/sumie1.png')),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(3),
                        ),
                      ),
                      Container(
                        height: 173,
                        width: 177,
                        child: InstaImageViewer(
                            child:
                                Image.asset('assets/images/sumie/sumie2.png')),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(3),
                        ),
                      ),
                      Container(
                        height: 173,
                        width: 177,
                        child: InstaImageViewer(
                            child:
                                Image.asset('assets/images/sumie/sumie3.png')),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(3),
                        ),
                      ),
                      Container(
                        height: 173,
                        width: 177,
                        child: InstaImageViewer(
                            child:
                                Image.asset('assets/images/sumie/sumie4.png')),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(3),
                        ),
                      ),
                      Container(
                        height: 173,
                        width: 177,
                        child: InstaImageViewer(
                            child:
                                Image.asset('assets/images/sumie/sumie5.png')),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(3),
                        ),
                      ),
                      Container(
                        height: 173,
                        width: 177,
                        child: InstaImageViewer(
                            child:
                                Image.asset('assets/images/sumie/sumie6.png')),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(3),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: 20,
              ),
              Tatuadores(),
              Container(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(5, 0, 0, 0),
                  child: Text(
                    'Categorias',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                    ),
                  ),
                ),
                height: 20,
              ),
              Categorias(),
            ],
          ),
        ],
      ),
    );
  }
}
