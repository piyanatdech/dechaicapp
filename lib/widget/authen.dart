import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Authen extends StatefulWidget {
  @override
  _AuthenState createState() => _AuthenState();
}

class _AuthenState extends State<Authen> {
  bool statuRedEye = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: RadialGradient(
              center: Alignment(0, -0.7),
              radius: 1,
              colors: <Color>[Colors.white, Colors.yellow.shade400]),
        ),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                buildOwl(),
                buildLogo(),
                buildAppName(),
                buildUser(),
                buildPassword(),
                buildLogin(),
                buildRegister()
              ],
            ),
          ),
        ),
      ),
    );
  }

  TextButton buildRegister() => TextButton(
      onPressed: () {
        Navigator.pushNamed(context, '/register');
      },
      child: Text("New Register"));

  Container buildLogin() {
    return Container(
      margin: EdgeInsets.only(top: 16),
      width: 250,
      child: ElevatedButton(
        onPressed: () {},
        child: Text("Login"),
      ),
    );
  }

  Container buildUser() {
    return Container(
      width: 250,
      margin: EdgeInsets.only(top: 16),
      child: TextField(
        decoration: InputDecoration(
            prefixIcon: Icon(Icons.elderly),
            hintText: 'Username',
            border: OutlineInputBorder()),
      ),
    );
  }

  Container buildPassword() {
    return Container(
      width: 250,
      margin: EdgeInsets.only(top: 16),
      child: TextField(
        obscureText: statuRedEye,
        decoration: InputDecoration(
            suffixIcon: IconButton(
              icon: Icon(Icons.remove_red_eye),
              onPressed: () {
                setState(() {
                  statuRedEye = !statuRedEye;
                });
                print('You Click Red Eye statuRedEye = $statuRedEye');
              },
            ),
            prefixIcon: Icon(Icons.lock),
            hintText: 'Password',
            border: OutlineInputBorder()),
      ),
    );
  }

  Text buildAppName() => Text(
        'Dech InsureClaims',
        style: GoogleFonts.inter(
            textStyle: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.w600,
                color: Colors.blue.shade900,
                fontStyle: FontStyle.italic)),
      );

  Container buildLogo() {
    return Container(
      // margin: EdgeInsets.only(top: 16),
      width: 200,
      child: Image.asset('images/logo.png'),
    );
  }

  Container buildOwl() {
    return Container(
      margin: EdgeInsets.only(top: 30),
      width: 150,
      child: Image.asset('images/owl.png'),
    );
  }
}
