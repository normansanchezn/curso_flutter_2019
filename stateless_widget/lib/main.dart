import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double iconSize = 40.0;
    final TextStyle textStyle = new TextStyle(
      color: Colors.grey, fontSize: 30.0
    );
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Stateless Widget"),
      ),
      body: new Container(
        child: new Center(
          child: new Column(
            // CrossAxisAligment con esa propiedad hace que el widget tome todo el ancho de la pantalla
            crossAxisAlignment: CrossAxisAlignment.stretch, 
          children: <Widget>[
            new MyCard(title: new Text("I love Flutter", style: textStyle),
            icon: new Icon(Icons.favorite, size: iconSize, color: Colors.redAccent,),
            ),
            new MyCard(title: new Text("I like thaaaat!", style: textStyle),
            icon: new Icon(Icons.thumb_up, size: iconSize, color: Colors.blue,),
            ),
            new MyCard(title: new Text("CHAAAAD?", style: textStyle),
            icon: new Icon(Icons.star, size: iconSize, color: Colors.yellow,),
            )
          ]
        ),
        ),
      ),
    );
  }
}


// Aquí se crea un nuevo Widget personalizado :P
class MyCard extends StatelessWidget {
  // This is the way for recibe information.
  // This is the way for declarate variables.
  final Widget title;
  final Widget icon;

  // constructor
  MyCard({this.title, this.icon});

  @override
  Widget build(BuildContext context) {
    return new Container( // Container nos permite posicionar mejor los elementos en la pantalla
    // Aquí se ve como hacer un padding a un elemento
    padding: const EdgeInsets.only(bottom: 1.0),
      child: new Card( // Card dibuja una sección en la pantalla
        child: new Container(
          padding: const EdgeInsets.all(
            20.0
          ),
          child: Column(
          children: <Widget>[this.title, this.icon],
        ),
        )
      ),  
    );
  } 
  
}
