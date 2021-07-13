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

class _RandomWordsState extends State<RandomWords> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
