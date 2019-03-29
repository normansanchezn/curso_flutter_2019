import 'package:flutter/material.dart';
import 'package:whatsapp/pages/camara.dart';
import 'package:whatsapp/pages/chats.dart';
import 'package:whatsapp/pages/status.dart';
import 'package:whatsapp/pages/calls.dart';

class WhatsAppHome extends StatefulWidget {
  @override
  _WhatsAppHomeState createState() => _WhatsAppHomeState();
}

class _WhatsAppHomeState extends State<WhatsAppHome> with SingleTickerProviderStateMixin {
  TabController _tabController;
  @override
  void initState(){
    super.initState();
    _tabController = TabController(
      vsync: this, initialIndex: 1, length: 4
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FlutterChat"),
        bottom:  TabBar(
          controller: _tabController ,
          tabs: <Widget>[
            Tab(icon: Icon(Icons.camera_alt),),
            Tab(text: "CHATS",),
            Tab(text: "ESTADOS",),
            Tab(text: "LLAMADAS",),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: <Widget>[
          Camera(),
          ChatList(),
          Status(),
          Llamadas()
        ],
      ),
    );
  }
}