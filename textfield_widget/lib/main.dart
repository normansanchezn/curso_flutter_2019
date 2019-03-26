import 'package:flutter/material.dart';

void main(){
  runApp(new MaterialApp(
    home: MyTextField(),
  ));
}

class MyTextField extends StatefulWidget{
  @override
  _MyTextFieldState createState() => _MyTextFieldState();
  
}

class _MyTextFieldState extends State<MyTextField> {
  String inputValue = "";

  // El controller nos ayuda a hacer cosas con el TextFiel que observa cambios
  final TextEditingController controller = new TextEditingController();

  void onSubmited(String value){
    setState(() {
      inputValue = inputValue + " \n "+value;
      controller.text = ""; // Limpiando el TextEdit
    });
  }
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("TextField Widget - Norman"),
        backgroundColor: Colors.redAccent,
      ),
      body: new Container(
        padding: const EdgeInsets.all(10.0),
        child: new Center(
          child: new Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              new TextField(
                decoration: new InputDecoration(
                  hintText: "Ingrese texto aquí"
                ),
                onSubmitted: (String value){onSubmited(value);},
                controller: controller,
              ),
              new Text(inputValue)
            ],
          )
        ),
      ),
    );
  }
  
}