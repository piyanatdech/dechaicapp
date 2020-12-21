import 'package:dechaicapp/Router.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //fix Layout App
    SystemChrome.setPreferredOrientations(<DeviceOrientation>[DeviceOrientation.portraitUp,DeviceOrientation.portraitDown]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: Authen(),
      routes: router,
      initialRoute: '/authen',
    );
  }
}
