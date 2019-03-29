import 'package:flutter/material.dart';
import 'package:whatsapp/models/chat_model.dart';

class ChatScreen extends StatefulWidget {
  final String name;
  ChatScreen({this.name});
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> with TickerProviderStateMixin {
  final TextEditingController _textEditingController = TextEditingController();
  final List<ChatMessage> _message = <ChatMessage> [];
  bool _isTyped = false;

  void _handledSubmit(String text){
    _textEditingController.clear();
    setState(() {
      _isTyped = false;
    });
    ChatMessage message = ChatMessage(
      text: text,
      animationController: AnimationController(
        duration: Duration(milliseconds: 700),
        vsync: this
      ),
      name: widget.name,
    );

    setState(() {
      _message.insert(0, message);
      var data = messageData.firstWhere((t) => t.name == widget.name);
      data.message = message.text;

    });
    message.animationController.forward();
    print(text);
  }

  Widget _builderTextComposer(){
    return IconTheme(
      data: IconThemeData(
        color: Theme.of(context).primaryColor
      ),
      child: Container(
        child: Row(
          children: <Widget>[
            Flexible(
              child: TextField(
              controller: _textEditingController,
              onChanged: (String text){
                setState(() {
                  _isTyped = text.length > 0;
                });
              },
              decoration: InputDecoration.collapsed(hintText: "Enviar mensaje"),
              )
            ),
            Container(
              child: IconButton(
                icon: Icon(Icons.send),
                onPressed: _isTyped ?
                () => _handledSubmit(_textEditingController.text):
                null,
              ),
            )
          ],
        ),
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
            Flexible(
              child: ListView.builder(
                padding: EdgeInsets.all(8.0),
                reverse: true,
                itemBuilder: (_, int index) => _message[index],
                itemCount: _message.length
              ),
            ),
            Divider(height: 1.0,),
            _builderTextComposer(),
          ],
        ),
      ),
    );
  }
}

class ChatMessage extends StatelessWidget {
  final String text;
  final AnimationController animationController;
  final String name;

  ChatMessage({this.text, this.animationController, this.name});

  @override
  Widget build(BuildContext context) {
    return SizeTransition(
      sizeFactor: CurvedAnimation(
        parent: animationController,
        curve: Curves.easeOut
      ),
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 10.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(right: 16.0),
              child: CircleAvatar(
                child: Text(name[0]),
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(name, style: Theme.of(context).textTheme.subhead,),
                  Container(
                    margin: EdgeInsets.only(top: 5.0),
                    child: Text(text),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}