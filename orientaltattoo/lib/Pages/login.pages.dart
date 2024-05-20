import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF0DBC8),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
             TextFormField(
                autofocus: true,
                keyboardType: TextInputType.emailAddress,
                style: TextStyle(color: Colors.black, fontSize: 14),
                decoration: InputDecoration(
                  labelText: "Email",
                  labelStyle: TextStyle(color: Colors.black),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                ),
              ),
              Divider(),
              TextFormField(
                autofocus: true,
                obscureText: true,
                keyboardType: TextInputType.text,
                style: TextStyle(color: Colors.black, fontSize: 14),
                decoration: InputDecoration(
                  labelText: "Senha",
                  labelStyle: TextStyle(color: Colors.black),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                ),
              ),
              Divider(),
              ButtonTheme(
                height: 60.0,
                child: ElevatedButton(
                  onPressed: () => {},
                  child: Text(
                    "Conectar",
                    style: TextStyle(color: Colors.black),
                  ),
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                      side: BorderSide(color: Colors.white),
                    ),
                  ),
                ),
              ),
              Divider(),
              ButtonTheme(
                height: 60.0,
                child: ElevatedButton(
                  onPressed: () => {},
                  child: Text(
                    "Cadastre-se aqui!",
                    style: TextStyle(color: Colors.black),
                  ),
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                      side: BorderSide(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}