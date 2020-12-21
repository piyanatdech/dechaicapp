import 'package:dechaicapp/widget/authen.dart';
import 'package:dechaicapp/widget/register.dart';
import 'package:flutter/material.dart';

final Map<String, WidgetBuilder> router = <String, WidgetBuilder>{
  '/authen': (BuildContext context) => Authen(),
  '/register': (BuildContext context) => Register(),
};
