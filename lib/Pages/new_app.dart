import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

const Color darkBlue = Color.fromARGB(255, 18, 32, 47);

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: darkBlue,
      ),
      debugShowCheckedModeBanner: true,
      home: Scaffold(
        body: Center(
          child: MyWidget(),
        ),
      ),
    );
  }
}

class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
	       title:'wlecome',
         theme: ThemeData(          // Add the 5 lines from here... 
              appBarTheme: const AppBarTheme(
              backgroundColor: Colors.white,
              foregroundColor: Colors.black,
            ),
          ), 
      
         home:const RandomWords(),
           
         );
    
  }
}


class RandomWords extends StatefulWidget {
    const RandomWords({super.key});

    @override
    State<RandomWords> createState() => _RandomWordsState();
  }

  class _RandomWordsState extends State<RandomWords> {
    
    final _suggestions = <WordPair>[];
    final _biggerFont = const TextStyle(fontSize:18);
    final _saved = <WordPair>{};
    void _pushSaved() {
      Navigator.of(context).push(
            // Add lines from here...
            MaterialPageRoute<void>(
              builder: (context) {
                final tiles = _saved.map(
                  (pair) {
                    return ListTile(
                      title: Text(
                        pair.asPascalCase,
                        style: _biggerFont,
                      ),
                    );
                  },
                );
                final divided = tiles.isNotEmpty
                    ? ListTile.divideTiles(
                        context: context,
                        tiles: tiles,
                      ).toList()
                    : <Widget>[];

                return Scaffold(
                  appBar: AppBar(
                    title: const Text('Saved Suggestions'),
                  ),
                  body: ListView(children: divided),
                );
              },
            ), // ...to here.
          );
    }
    
    @override
    Widget build(BuildContext context) {
        return Scaffold(
               appBar: AppBar(  
                        title: const Text('Startup Name Generator'),
                        actions: [
                          IconButton(
                            icon: const Icon(Icons.list),
                            onPressed: _pushSaved,
                            tooltip: 'Saved Suggestions',
                          ),
                        ],
              ),    
          
              body:ListView.builder(
                   padding: const EdgeInsets.all(16.0),
                   
                   itemBuilder: /*1*/ (context, i) {
                   if (i.isOdd) return const Divider(); /*2*/

                   final index = i ~/ 2; /*3*/
                   if (index >= _suggestions.length) {
                       _suggestions.addAll(generateWordPairs().take(10)); /*4*/
                    }
                   final alreadySaved = _saved.contains(_suggestions[index]);
              //               return Text(_suggestions[index].asPascalCase, style: _biggerFont,);
                   return ListTile(
                           title: Text(
                                    _suggestions[index].asPascalCase,
                                    style: _biggerFont,
                                  ),
                                  trailing: Icon(    // NEW from here ...
                                    alreadySaved ? Icons.favorite : Icons.favorite_border,
                                    color: alreadySaved ? Colors.red : null,
                                    semanticLabel: alreadySaved ? 'Remove from saved' : 'Save',
                                  ),
                                  onTap: () {          // NEW from here ...
                                      setState(() {
                                        if (alreadySaved) {
                                          _saved.remove(_suggestions[index]);
                                        } else {
                                          _saved.add(_suggestions[index]);
                                        }
                                      });}  
                             );
        },
      )
        
        );
          
          
    }
  }
