import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: MySnackBar(),
  ));
}

class MySnackBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SnackBar Demo"),
      ),
      body: Center(
        child: MyButton(),
      )
    );
  }
}

class MyButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: Text("Desplegar Snackbar"),
      onPressed: (){
        Scaffold.of(context).showSnackBar(SnackBar(
          content: Text("Hola soy un snackbar"),
          duration: Duration(seconds: 5),
          action: SnackBarAction(
            label: "Clic aquí",
            onPressed: (){
              Scaffold.of(context).showSnackBar(SnackBar(
                content: Text("JAJAJA QUE OSO"),
                duration: Duration(seconds: 2),
              ));
            },
          ),
        ));
      },
    );
  }
}