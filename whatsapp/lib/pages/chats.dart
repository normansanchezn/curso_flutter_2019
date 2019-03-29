import 'package:flutter/material.dart';
import 'package:whatsapp/models/chat_model.dart';
import 'package:whatsapp/pages/chat_screen.dart';

class ChatList extends StatefulWidget {
  @override
  _ChatListState createState() => _ChatListState();
}

class _ChatListState extends State<ChatList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: messageData.length,
      itemBuilder: (context,i) => Column(
        children: <Widget>[
          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(messageData[i].imageUrl),
            ),
            title: Row(
              // esta propiedad hace que uno este a la derecha y otro a la izquierda
              // ¡¡¡ IMPORTANTE !!!
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  messageData[i].name,
                  style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                Text(
                  messageData[i].time,
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 14.0)
                  )
              ],
            ),
            subtitle: Container(
              padding: EdgeInsets.only(top: 5.0),
              child: Text(
                messageData[i].message,
                style:TextStyle(
                  color: Colors.grey,
                  fontSize: 15.0
                )
              ),
            ),
            onTap: (){
              var route = MaterialPageRoute(
                builder: (BuildContext context) => ChatScreen(name: messageData[i].name)
              );
              Navigator.of(context).push(route);
            },
          ),
          Divider(
            height: 10.0,
          )
        ],
      ),
    );
  }
  
}