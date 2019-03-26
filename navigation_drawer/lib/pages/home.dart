import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  Drawer _getDrawer(BuildContext context) {
    ListTile _getItem(Icon icon, String description, String route){
    return ListTile(
      leading: icon,
      title: Text(description),
      onTap: (){
        setState(() {
          Navigator.of(context).pushNamed(route);
        });
      },
    );
  }

  ListView listView = ListView(children: <Widget>[

    _getItem(Icon(Icons.settings), 'Configuración', "/configuracion"),
    _getItem(Icon(Icons.home), 'Página principal', "/"),
    _getItem(Icon(Icons.battery_full), 'Batería', "/bateria"),
  ],);

    return Drawer(
      child: listView,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Demo Menu"),
      ),
      drawer: _getDrawer(context)
    );
  }
}