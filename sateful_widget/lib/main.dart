import 'package:flutter/material.dart';

/*
  La función en el raisedButton
  tiene que estar dentro de la declaración del código
  
*/

void main(){
  runApp(new MaterialApp(
    home: MyButton(),
  ));
}

class MyButton extends StatefulWidget {
  @override
  _MyButtonState createState() => new _MyButtonState();
}

class _MyButtonState extends State<MyButton> {
  String flutterText = "";
  int index = 0;
  List<String> collection = ['Flutter', 'es', '¯\\\\_(ツ)_/¯'];

  // Se creó una variable para editar todos los styles de cada text new
  final TextStyle textStyle = new TextStyle(
    color: Colors.black, fontSize: 30.0
  );

  @override
  void initState() {
    super.initState();
    
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Stateful Widget - Norman"),
        backgroundColor: Colors.orangeAccent,
      ),
      body: new Container(
        child: new Center(
          child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text(flutterText, style: textStyle),
            new RaisedButton (
              color: Theme.of(context).accentColor,
              splashColor: Colors.blueGrey,
              onPressed:() {
                setState(() {
                  flutterText=collection[index];
                  index = index < 2 ? index + 1 : 0;
                });
              },
              child: new Text("Actualizar", style: new TextStyle(color: Colors.white),),
            )
          ],
        ),
        )
      ),
    );
  }
}