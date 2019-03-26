import 'package:flutter/material.dart';

class Third extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Icon(
            Icons.airplanemode_active, 
            size: 160.0,
            color: Colors.red
            ),
          Text("Tercer tab")
        ],
      )
    );
  }
}