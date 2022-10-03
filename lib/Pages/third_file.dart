import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

Future<Album> createAlbum(String six,String first,String second,String third,String fourth,String fifth) async {
  final response = await http.post(
    Uri.parse('https://jsonplaceholder.typicode.com/albums'),
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    },
    body: jsonEncode(<String, String>{
      'first':first,
      'second':second,
      'third':third,
      'fourth':fourth,
      'fifth':fifth,
      'six':six
    }),
  );

  if (response.statusCode == 201) {
    // If the server did return a 201 CREATED response,
    // then parse the JSON.
    return Album.fromJson(jsonDecode(response.body));
  } else {
    // If the server did not return a 201 CREATED response,
    // then throw an exception.
    throw Exception('Failed to create album.');
  }
}

class Album {
  final String first;
  final String second;
  final String third;
  final String fourth;
  final String fifth;
  final String six;

  const Album({required this.first,required this.second,
               required this.third,required this.fourth,required this.fifth,required this.six});

  factory Album.fromJson(Map<String, dynamic> json) {
    return Album(
      first: json['first'],
      second: json['second'],
      third: json['third'],
      fourth: json['fourth'],
      fifth: json['fifth'],
      six: json['six']
    );
  }
}

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final List<TextEditingController> _controller = List.generate(74, (i) => TextEditingController());
  Future<Album>? _futureAlbum;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Create Data Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Create Data Example'),
        ),
        body: Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.all(8.0),
          child: (_futureAlbum == null) ? buildColumn() : buildFutureBuilder(),
        ),
      ),
    );
  }

  Column buildColumn() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        TextField(
          controller: _controller[0],
          decoration: const InputDecoration(hintText: 'Enter Title'),
        ),
        Container(height:20),
        TextField(
          controller: _controller[1],
          decoration: const InputDecoration(hintText: 'Enter Title'),
        ),
        Container(height:20),
        TextField(
          controller: _controller[2],
          decoration: const InputDecoration(hintText: 'Enter Title'),
        ),
        Container(height:20),
        TextField(
          controller: _controller[3],
          decoration: const InputDecoration(hintText: 'Enter Title'),
        ),
        Container(height:20),
        TextField(
          controller: _controller[4],
          decoration: const InputDecoration(hintText: 'Enter Title'),
        ),
        Container(height:20),
        TextField(
          controller: _controller[5],
          decoration: const InputDecoration(hintText: 'Enter Title'),
        ),
        Container(height:20),
        ElevatedButton(
          onPressed: () {
            setState(() {
              _futureAlbum = createAlbum(
                _controller[0].text,
                _controller[1].text,
                _controller[2].text,
                _controller[3].text,
                _controller[4].text,
                _controller[5].text
              );
            });
          },
          child: const Text('Create Data'),
        ),
      ],
    );
  }

  FutureBuilder<Album> buildFutureBuilder() {
    return FutureBuilder<Album>(
      future: _futureAlbum,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return Scaffold(
            body:Column(
            children: <Widget>[
              Text(snapshot.data!.first),
              Text(snapshot.data!.second),
              Text(snapshot.data!.third),
              Text(snapshot.data!.fourth),
              Text(snapshot.data!.fifth),
              Text(snapshot.data!.six),
            ],
          )
         );
            
        } else if (snapshot.hasError) {
          return Text('${snapshot.error}');
        }

        return const CircularProgressIndicator();
      },
    );
  }
}
