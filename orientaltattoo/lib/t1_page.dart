import 'package:flutter/material.dart';
import 'package:oriental_tattoos/profile_page.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

final Uri whatsApp = Uri.parse('https://wa.me/5514996339977');

class Tat1Page extends StatefulWidget {
  const Tat1Page({super.key});

  @override
  State<Tat1Page> createState() => _Tat1PageState();
}

class _Tat1PageState extends State<Tat1Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFF8F1EB),
        actions: <Widget>[
          IconButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ProfileApp()));
            },
            icon: Icon(Icons.menu),
          ),
        ],
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
      body: Stack(
        children: [
          Container(
            color: Color(0xFFF0DBC8),
          ),
          ListView(
            children: [
              Stack(children: [
                Container(
                  //banner
                  width: double.infinity,
                  child: Image.asset('assets/images/bannert1.png'),
                ),
                Container(
                  height: 233,
                  width: 393,
                  child: Align(
                    alignment: Alignment.bottomLeft,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(5, 30, 5, 30),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.green),
                        onPressed: () {
                          launchUrl(whatsApp);
                        },
                        child: Row(mainAxisSize: MainAxisSize.min, children: [
                          Icon(
                            FontAwesomeIcons.whatsapp,
                            size: 25,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Agendar Sessão',
                            style: TextStyle(color: Colors.white),
                          )
                        ]),
                      ),
                    ),
                  ),
                ),
              ]),
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
                        child: Image.asset('assets/images/t1/t11.png'),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(3),
                        ),
                      ),
                      Container(
                        height: 173,
                        width: 177,
                        child: Image.asset('assets/images/t1/t12.png'),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(3),
                        ),
                      ),
                      Container(
                        height: 173,
                        width: 177,
                        child: Image.asset('assets/images/t1/t13.png'),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(3),
                        ),
                      ),
                      Container(
                        height: 173,
                        width: 177,
                        child: Image.asset('assets/images/t1/t14.png'),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(3),
                        ),
                      ),
                      Container(
                        height: 173,
                        width: 177,
                        child: Image.asset('assets/images/t1/t15.png'),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(3),
                        ),
                      ),
                      Container(
                        height: 173,
                        width: 177,
                        child: Image.asset('assets/images/t1/t16.png'),
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
              Container(
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
              ),
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
              Container(
                width: double.infinity,
                height: 188,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(5.0),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.of(context)
                              .pushReplacementNamed('/irezumipage');
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
                          Navigator.of(context)
                              .pushReplacementNamed('/sumiepage');
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
                          Navigator.of(context)
                              .pushReplacementNamed('/animepage');
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
                          Navigator.of(context)
                              .pushReplacementNamed('/shodopage');
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
              ),
            ],
          ),
        ],
      ),
    );
  }
}
