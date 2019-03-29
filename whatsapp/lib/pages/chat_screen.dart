import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  final String name;
  ChatScreen({this.name});
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final TextEditingController _textEditingController = TextEditingController();

  Widget _builderTextComposer(){
    return Container(
      child: Row(
        children: <Widget>[
          Flexible(
            child: TextField(
            controller: _textEditingController,
            )
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.name)
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            _builderTextComposer(),
          ],
        ),
      ),
    );
  }
}