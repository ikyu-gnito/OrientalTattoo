import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:url_launcher/url_launcher.dart';

final Uri forms = Uri.parse('https://forms.gle/vtsj8yAMXDrCxki17');

class ProfileApp extends StatelessWidget {
  const ProfileApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFF8F1EB),
      ),
      body: Center(
        child: Container(
          color: Color(0xFFF8F1EB),
          width: double.infinity,
          height: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  launchUrl(forms);
                },
                child: Text(
                  'Avaliação',
                  style: TextStyle(color: Colors.black, fontSize: 15),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
