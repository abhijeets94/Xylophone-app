import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/rendering.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded buildKey({Color color, int userKey}) => Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(userKey);
        },
      ),
    );
  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.black,
          title: Text(
            "XYLOPHONE",
            style: TextStyle(
                fontSize: 40,
                fontFamily: 'Times New Roman',
                fontWeight: FontWeight.w600,
                color: Colors.white60),
          ),
        ),
        body: SafeArea(
            child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(color: Colors.red, userKey: 1),
              buildKey(color: Colors.orange, userKey: 2),
              buildKey(color: Colors.yellow, userKey: 3),
              buildKey(color: Colors.green, userKey: 4),
              buildKey(color: Colors.teal, userKey: 5),
              buildKey(color: Colors.blue, userKey: 6),
              buildKey(color: Colors.purple, userKey: 7),
            ],
          ),
        )),
      ),
    );
  }
}
