import 'package:flutter/material.dart';
import 'package:listview_widget/contact.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text("Contactos"),
      ),
      body: Contact(),
    ),
  ));
}