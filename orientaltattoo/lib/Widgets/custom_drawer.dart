import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

final Uri forms = Uri.parse('https://forms.gle/vtsj8yAMXDrCxki17');

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: 180,
      child: Container(
        color: Color(0xFFF8F1EB),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              style: ButtonStyle(),
              onPressed: () {
                launchUrl(forms);
              },
              child: Text(
                'Avaliação',
                style: TextStyle(color: Colors.black),
              ),
            )
          ],
        ),
      ),
    );
  }
}
