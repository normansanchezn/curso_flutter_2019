import 'package:flutter/material.dart';

class Second extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Icon(
            Icons.timer, 
            size: 160.0,
            color: Colors.red
            ),
          Text("Segundo tab")
        ],
      )
    );
  }
}