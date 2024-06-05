import 'package:flutter/material.dart';
import 'package:insta_image_viewer/insta_image_viewer.dart';
import 'package:oriental_tattoos/Widgets/agendar_sessao.dart';
import 'package:oriental_tattoos/Widgets/categorias.dart';
import 'package:oriental_tattoos/Widgets/custom_drawer.dart';
import 'package:oriental_tattoos/Widgets/tatuadores.dart';

class Tat2Page extends StatefulWidget {
  const Tat2Page({super.key});

  @override
  State<Tat2Page> createState() => _TatT2PageState();
}

class _TatT2PageState extends State<Tat2Page> {
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
              Stack(
                children: [
                  Container(
                    //banner
                    width: double.infinity,
                    child: Image.asset('assets/images/bannert2.png'),
                  ),
                  AgendarSessao(),
                ],
              ),
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
                    'Encontre a tattoo perfeita para você!',
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
                            child: Image.asset('assets/images/t2/t21.png')),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(3),
                        ),
                      ),
                      Container(
                        height: 173,
                        width: 177,
                        child: InstaImageViewer(
                            child: Image.asset('assets/images/t2/t22.png')),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(3),
                        ),
                      ),
                      Container(
                        height: 173,
                        width: 177,
                        child: InstaImageViewer(
                            child: Image.asset('assets/images/t2/t23.png')),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(3),
                        ),
                      ),
                      Container(
                        height: 173,
                        width: 177,
                        child: InstaImageViewer(
                            child: Image.asset('assets/images/t2/t24.png')),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(3),
                        ),
                      ),
                      Container(
                        height: 173,
                        width: 177,
                        child: InstaImageViewer(
                            child: Image.asset('assets/images/t2/t25.png')),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(3),
                        ),
                      ),
                      Container(
                        height: 173,
                        width: 177,
                        child: InstaImageViewer(
                            child: Image.asset('assets/images/t2/t26.png')),
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
