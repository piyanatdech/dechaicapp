import 'package:flutter/material.dart';

class Authen extends StatefulWidget {
  @override
  _AuthenState createState() => _AuthenState();
}

class _AuthenState extends State<Authen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            buildLogo(),
            buildAppName(),
          ],
        ),
      ),
    );
  }

  Text buildAppName() => Text(
        'Dech InsureClaims',
        style: TextStyle(
            fontSize: 26,
            fontWeight: FontWeight.w600,
            color: Colors.blue.shade900,
            fontStyle: FontStyle.italic),
      );

  Container buildLogo() {
    return Container(
      width: 200,
      child: Image.asset('images/logo.png'),
    );
  }
}
