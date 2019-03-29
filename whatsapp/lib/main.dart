import 'package:flutter/material.dart';
import 'package:whatsapp/whatsapp_home.dart';
import 'package:camera/camera.dart';
import 'dart:async';

// Es una lista por que ya existen dispositivos
// con más de una cámara.
List<CameraDescription> cameras;

Future<Null> main() async{
  cameras = await availableCameras();
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
      home: WhatsAppHome(cameras),
    );
  }
}