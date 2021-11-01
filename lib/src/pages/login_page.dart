import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  static String id = 'login_page';

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: const Text('  APP FLUTTER'),
        backgroundColor: Colors.pink.shade600,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add your onPressed code here!
        },
        child: const Icon(Icons.add_to_photos_sharp),
        backgroundColor: Colors.pink.shade600,
      ),
      body: Center(
        child: Column(
          children: [
            Image.asset('assets/logo.png', height: 110.0),
            SizedBox(
              height: 20.0,
            ),
            _userField(),
            SizedBox(
              height: 20.0,
            ),
            _passwordField(),
            SizedBox(
              height: 20.0,
            ),
            buttonSesion(),
          ],
        ),
      ),
    ));
  }
}

//Widget _buttonLogin() {}

Widget _passwordField() {
  return StreamBuilder(builder: (BuildContext context, AsyncSnapshot snapchot) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: TextField(
        keyboardType: TextInputType.emailAddress,
        obscureText: true,
        decoration: InputDecoration(
            icon: Icon(Icons.lock),
            hintText: "Ingrese contraseña ...",
            labelText: "Password: "),
        onChanged: (value) {},
      ),
    );
  });
}

Widget _userField() {
  return StreamBuilder(builder: (BuildContext context, AsyncSnapshot snapchot) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: TextField(
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
            icon: Icon(Icons.email),
            hintText: "Ej: christianatencio@upeu.edu.pe",
            labelText: "Correo Electrónico: "),
        onChanged: (value) {},
      ),
    );
  });
}

Widget buttonSesion() {
  return StreamBuilder(builder: (BuildContext context, AsyncSnapshot snapchot) {
    return RaisedButton(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 80.0, vertical: 15.0),
        child: Text("INICIAR SESIÓN"),
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      elevation: 10.0,
      color: Colors.pink.shade600,
      onPressed: () {},
    );
  });
}
