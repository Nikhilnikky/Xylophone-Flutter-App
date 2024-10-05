// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:english_words/english_words.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 0, 37, 34),
        appBar: AppBar(
          title: const Text("Xylophone"),
          backgroundColor: Colors.teal,
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FlatButton(
                  color: const Color.fromARGB(255, 255, 238, 2),
                  onPressed: () {
                    playSound(1);
                  },
                  child: const Text(""),
                  height: 70,
                ),
                FlatButton(
                  color: const Color.fromARGB(255, 2, 255, 11),
                  onPressed: () {
                    playSound(2);
                  },
                  child: const Text(""),
                  height: 70,
                ),
                FlatButton(
                  color: const Color.fromARGB(255, 0, 247, 247),
                  onPressed: () {
                    playSound(3);
                  },
                  child: const Text(""),
                  height: 70,
                ),
                FlatButton(
                  color: const Color.fromARGB(255, 2, 91, 255),
                  onPressed: () {
                    playSound(4);
                  },
                  child: const Text(""),
                  height: 70,
                ),
                FlatButton(
                  color: const Color.fromARGB(255, 112, 2, 255),
                  onPressed: () {
                    playSound(5);
                  },
                  child: const Text(""),
                  height: 70,
                ),
                FlatButton(
                  color: const Color.fromARGB(255, 255, 2, 213),
                  onPressed: () {
                    playSound(6);
                  },
                  child: const Text(""),
                  height: 70,
                ),
                FlatButton(
                  color: const Color.fromARGB(255, 255, 2, 78),
                  onPressed: () {
                    playSound(7);
                  },
                  child: const Text(""),
                  height: 70,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('assets_note$soundNumber.wav');
  }
}
