import 'package:flutter/material.dart';
import 'package:whatsapp/whatsapp_home.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "FlutterChat",
      theme: ThemeData(
        primaryColor: Colors.green,
        accentColor: Colors.greenAccent
      ),
      debugShowCheckedModeBanner: false,
      home: WhatsAppHome(),
    );
  }
}