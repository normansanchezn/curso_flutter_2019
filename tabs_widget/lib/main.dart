import 'package:flutter/material.dart';
import 'package:tabs_widget/pages/home.dart';
import 'package:tabs_widget/pages/video.dart';
import 'package:tabs_widget/pages/contact.dart';

// Class main
void main(){
  runApp(MaterialApp(
    home: MyTabs(),
  ));
}

class MyTabs extends StatefulWidget {
  @override
  _MyTabsState createState() => _MyTabsState();
}

class _MyTabsState extends State<MyTabs> with SingleTickerProviderStateMixin {
  TabController controller;

  @override
  void initState(){
    super.initState();
    controller =TabController(
      length: 3,
      vsync: this
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(  
      appBar: AppBar(
        title: Text("Video Tabs"),
        backgroundColor: Colors.redAccent,
        bottom: TabBar(
          tabs: <Widget>[

            Tab(
              child: Icon(Icons.home),
            ),
            Tab(
              child: Icon(Icons.ondemand_video),
            ),
            Tab(
              child: Icon(Icons.contacts),
            ),

          ],
          controller: controller,
        ),
      ),
      body: TabBarView(
        children: <Widget>[
           Home(), Video(), Contact()
        ],
        controller: controller,
      ),
    );
  }
}