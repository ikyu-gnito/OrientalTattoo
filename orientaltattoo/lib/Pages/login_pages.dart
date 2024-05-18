import 'package:flutter/material.dart';

class LoginPages extends StatefulWidget {
  const LoginPages({super.key});

  @override
  State<LoginPages> createState() => _LoginPagesState();
}

class _LoginPagesState extends State<LoginPages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF0DBC8),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Center(
          child: Column( //alinhamento com o centro pela column
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextFormField(
                autofocus: true,
                keyboardType: TextInputType.emailAddress,
                style: new TextStyle(color: Colors.white, fontSize: 14),
                decoration: InputDecoration(
                  labelText: "E-mail",
                  label: Text
                ),


              ),

          ],
        ),       
      ),
      ),
    );
  }
}