import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: First()
    ));
}

class First extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Primera Pantalla Screen"),
      ),
      body: Center(
        child: RaisedButton(
          child: Text("Mostrar Pantalla"),
          onPressed: (){
            // CLASE NAVIGATOR
            Navigator.push(context, 
            MaterialPageRoute(builder: (context) => Second()));
          },
        ),
      ),
    );
  }
}


class Second extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Segunda Pantalla"),
      ),
      body: Center(
        child: RaisedButton(
          child: Text("Mostrar primera pantalla"),
          onPressed: (){
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}
