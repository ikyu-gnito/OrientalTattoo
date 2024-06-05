import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

final Uri whatsApp = Uri.parse('https://wa.me/5514996339977');

class AgendarSessao extends StatelessWidget {
  const AgendarSessao({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 233,
      width: 393,
      child: Align(
        alignment: Alignment.bottomLeft,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(5, 30, 5, 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: double.infinity,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
                onPressed: () {
                  launchUrl(whatsApp);
                },
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
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
                  ],
                ),
              ),
              Row(
                children: [
                  SizedBox(
                    width: 60,
                  ),
                  Text('Marília - SP'),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
