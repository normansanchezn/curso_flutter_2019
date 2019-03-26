import 'package:flutter/material.dart';
import 'package:navigatorbar_widget/pages/first.dart';
import 'package:navigatorbar_widget/pages/second.dart';
import 'package:navigatorbar_widget/pages/third.dart';

void main() {
  runApp(MaterialApp(
    home: MyNavigator(),
  ));
}

class MyNavigator extends StatefulWidget {
  @override
  _MyNavigator createState()  => _MyNavigator();
}
class _MyNavigator extends State<MyNavigator> with SingleTickerProviderStateMixin{
  TabController controller;
  @override
  void initState(){
    super.initState();
    controller = TabController(
      length: 3,
      vsync: this
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Demo Bottom Navigation Bar"),
      ),
      body: TabBarView(
        children: <Widget>[
          First(), Second(), Third()
        ],
        controller: controller,
      ),
      bottomNavigationBar: Material(
        color: Colors.blueAccent,
        child: TabBar(
            tabs: <Tab> [
            Tab(
              icon:Icon(Icons.alarm)
            ),
            Tab(
              icon:Icon(Icons.timer)
            ),
            Tab(
              icon:Icon(Icons.border_top)
            )
          ],
          controller: controller,
        )
      ),
    );
  }
}