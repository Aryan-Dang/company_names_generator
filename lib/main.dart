// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //adding code before return statement ofc
    //generates a random word pair each time app is reloaded/hot reloaded
    final wordPair = WordPair.random();
    return MaterialApp(
      title: 'Company Name Generator',
      home: Scaffold(
        appBar: AppBar(
          //the title of the App Bar
          title: const Text('Company Name Generator'),
        ),
        //the body of the Scaffold (widget)
        body: Center(
          child: Text(wordPair.asPascalCase),
        ),
      ),
    );
  }
}

//Stateful widget does nothing more than provide an helpful override method
//  to create the state
class RandomWords extends StatefulWidget {
  const RandomWords({Key? key}) : super(key: key);

  @override
  _RandomWordsState createState() => _RandomWordsState();
}

//means that this class is a subclass which inherits State and is of type <RandomWords> - instead of Generic type T
class _RandomWordsState extends State<RandomWords> {
  //State class maintains the State of the Widget - it handles it's content and stuff.
  @override
  Widget build(BuildContext context) {
    //generate WordPair and return it wrapped in sub-widget Text (in PascalCase)
    final wordPair = WordPair.random();
    return Text(wordPair.asPascalCase);
  }
}
