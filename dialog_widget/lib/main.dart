import 'package:flutter/material.dart';

void main(){
  runApp(
    new MaterialApp(
      home: MyDialog(),)
  );
}

class MyDialog extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _MyDialogState();
}

enum DialogAction {
  yes, 
  no
}

class _MyDialogState extends State<MyDialog> {
  String _inputValue = "";
  // function onPressed
  // cuando una función tiene un guión bajo frente al nombre de la misma
  // significa que es una función privada dentro de la clase
  // donde es declarada (Aplica también con variables)
  void _alertResult(DialogAction action){ 
    print("Tu seleccion fue: $action");
  }

  void _showAlert(String value){
    
    AlertDialog alertDialog = new AlertDialog(
      content: new Text(value),
      actions: <Widget>[
        new FlatButton( onPressed:(){ _alertResult(DialogAction.yes);}, child: new Text("Si"),),
        new FlatButton( onPressed:(){ _alertResult(DialogAction.no);}, child: new Text("Ño"),)
      ],
    );

    showDialog(context: context, child: alertDialog);
  }

  void _onChanged(String value){
    setState(() {
      _inputValue = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("DialogWidget - NormanSN"),
      ),
      body: new Container(
        child: new Center(
          child: new Column(
            children: <Widget>[
              new TextField(
                decoration: new InputDecoration(
                  hintText: "Ingrese el nuevo texto."
                ),
                onChanged: (String value){ _onChanged(value); },
              ), 
              new RaisedButton(
                child: new Text("Ver alerta"),
                onPressed: (){
                  _showAlert(_inputValue);
                },
              )
            ],
          ),
        ),
      ),
    );
  }

}