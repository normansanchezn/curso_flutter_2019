import 'package:flutter/material.dart';
import 'package:whatsapp/models/status_model.dart';

class Status extends StatefulWidget{
  @override
  _StatusState createState() => _StatusState();
}

class _StatusState extends State<Status> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          ListTile(
            leading: CircleAvatar(
              foregroundColor: Theme.of(context).accentColor,
              backgroundColor: Colors.grey,
              backgroundImage: NetworkImage(status[2].imgUrl),
            ),
            title: Text(
              status[0].name,
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Text("Añadir a mi estado"),
          ),
          Text(
            "Recientes",
            style:TextStyle(
              fontWeight: FontWeight.bold,
              color: Theme.of(context).primaryColor
            )
          ),
          Divider(),
          ListTile(
            leading: CircleAvatar(
              foregroundColor: Theme.of(context).accentColor,
              backgroundColor: Colors.grey,
              backgroundImage: NetworkImage(status[2].imgUrl),
            ),
            title: Text(
              status[0].name,
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Text("Nuevo estado"),
          ),
          Divider(),
          ListTile(
            leading: CircleAvatar(
              foregroundColor: Theme.of(context).accentColor,
              backgroundColor: Colors.grey,
              backgroundImage: NetworkImage(status[4].imgUrl),
            ),
            title: Text(
              status[3].name,
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Text("Nuevo estado"),
          ),
        ],
      ),
    );
  }
}