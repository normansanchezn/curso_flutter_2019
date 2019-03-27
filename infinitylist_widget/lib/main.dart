import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() {
  runApp(MaterialApp(
    home: RandomWords(),
  ));
}

class RandomWords extends StatefulWidget{
  @override
  _RandomWordsState createState() => _RandomWordsState();
}

class _RandomWordsState extends State<RandomWords> {
  final _suggestions = <WordPair>[];
  final _saved = Set<WordPair>(); 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lista infinita"),
        centerTitle: true,
        actions: <Widget>[
          new IconButton(
            icon: Icon(Icons.list),
            onPressed: (){
              _pushSaved();
            },
          )
        ],
      ),
      body: _buildSuggestions(),
    );
  }

  void _pushSaved(){
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context){
          final tiles = _saved.map(
            (pair){
              return ListTile(
                title: Text(pair.asPascalCase),
              );
            }
          );
          final divided =ListTile.divideTiles(
            context: context,
            tiles: tiles
          ).toList();
          return Scaffold(
            appBar: AppBar(
              title: Text("Guardadas"),
            ),
            body: ListView(children: divided)
          );
        }
      )
    );
  }

  Widget _buildRow(WordPair pair){
    final bool alReadySaved = _saved.contains(pair);
    for (var item in _saved){
      print(item);
    }
    return ListTile(
      title: Text(
        pair.asPascalCase
      ),
      trailing: Icon(
        alReadySaved ?
        Icons.favorite : Icons.favorite_border, color: Colors.redAccent),
      onTap:(){ 
        setState(() {
          if (alReadySaved){
            _saved.remove(pair);
          } else{
            _saved.add(pair); 
          }
          
        });
        },
    );
  }

  Widget _buildSuggestions(){
  return ListView.builder(
    itemBuilder: (context, i){
      if(i.isOdd) return Divider();
      final index = i ~/ 2;

      if (index >= _suggestions.length) {
        _suggestions.addAll(generateWordPairs().take(10));
      }
      return _buildRow(_suggestions[index]);
    },
  );
}
}

