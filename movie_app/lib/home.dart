import 'package:flutter/material.dart';
import 'package:movie_app/common/HttpHandler.dart';
import 'package:movie_app/common/MediaProvider.dart';
import 'package:movie_app/media_list.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  final MediaProvider movieProvider = MovieProvider();
  final MediaProvider showProvider = MovieProvider();

  MediaType mediaType = MediaType.movie;

  @override
  void initState() {
    super.initState();
    _loadJson();
  }


  _loadJson() async {
    var data = await HttpHandler().fetchMovies();
    print(data);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Movie"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search, color: Colors.white,),
            onPressed: (){},
          )
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
            child: Material()),
            ListTile(
              title: Text("Películas"),
              selected: mediaType == MediaType.movie,
              trailing: Icon(Icons.local_movies),
              onTap: (){
                _changeMediaType(MediaType.movie);
                Navigator.of(context).pop();
              },
            ),
            Divider(
              height: 5.0,
            ),
            ListTile(
              selected: mediaType == MediaType.show,
              title: Text("Televisión"),
              trailing: Icon(Icons.live_tv),
              onTap: (){
                _changeMediaType(MediaType.show);
                Navigator.of(context).pop();
              },
            ),
            Divider(
              height: 5.0,
            ),
            ListTile(
              title: Text("Cerrar"),
              trailing: Icon(Icons.close),
              onTap: () => Navigator.of(context).pop(),
            ),
          ],
        ),
      ),
      body: PageView(
        children: <Widget>[
          MediaList()
        ],
      ),
        
      bottomNavigationBar: BottomNavigationBar(
        items: _getFooterItems(),
      ),
    );
  }

  List<BottomNavigationBarItem> _getFooterItems(){
      return [
        BottomNavigationBarItem(
          icon: Icon(Icons.thumb_up),
          title: Text("Populares")
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.update),
          title: Text("Próximamente")
        ),BottomNavigationBarItem(
          icon: Icon(Icons.star),
          title: Text("Mejor valoradas")
        )
      ];
    }
    void _changeMediaType(MediaType type){
      if(mediaType != type){
        setState(() {
          mediaType = type;
        });
      }
    }
}