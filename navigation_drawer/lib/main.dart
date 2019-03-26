import 'package:flutter/material.dart';
import 'package:navigation_drawer/pages/home.dart';
import 'package:navigation_drawer/pages/battery.dart';
import 'package:navigation_drawer/pages/settings.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
    routes: <String, WidgetBuilder> {
      Settings.routeName: (BuildContext context) => Settings(),
      Battery.routeName: (BuildContext context) => Battery()
    },
  ));
}