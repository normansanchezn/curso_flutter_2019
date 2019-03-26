import 'package:flutter/material.dart';

class First extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Icon(
            Icons.alarm, 
            size: 160.0,
            color: Colors.red
            ),
          Text("Primer tab")
        ],
      )
    );
  }
}