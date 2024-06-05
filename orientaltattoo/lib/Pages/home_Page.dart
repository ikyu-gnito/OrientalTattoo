import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:insta_image_viewer/insta_image_viewer.dart';
import 'package:oriental_tattoos/Widgets/categorias.dart';
import 'package:oriental_tattoos/Widgets/custom_drawer.dart';
import 'package:oriental_tattoos/Widgets/tatuadores.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: CustomDrawer(),
      appBar: AppBar(
        backgroundColor: Color(0xFFF8F1EB),
        title: Row(
          children: [
            Container(
              height: 40,
              width: 40,
              child: Image.asset('assets/images/logo.png'),
            ),
          ],
        ),
      ),
      body: Stack(
        children: [
          Container(
            color: Color(0xFFF0DBC8),
          ),
          ListView(
            children: [
              Container(
                //banner
                width: double.infinity,
                child: Image.asset('assets/images/Banner.jpg'),
              ),
              Container(
                height: 20,
              ),
              Tatuadores(), //tatuadores
              Container(
                //categorias
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
              Categorias(), //categorias
              Container(
                height: 60,
              ),
              Container(
                height: 30,
                width: 393,
                color: Color(0xFFF8F1EB),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(8, 8, 8, 0),
                  child: Text(
                    'As mais pedidas',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ),
              Container(
                height: 400,
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
                                Image.asset('assets/images/irezumi/ire3.png')),
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
                                Image.asset('assets/images/anime/anime1.png')),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(3),
                        ),
                      ),
                      Container(
                        height: 173,
                        width: 177,
                        child: InstaImageViewer(
                            child:
                                Image.asset('assets/images/shodo/shodo4.png')),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(3),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
