import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: XylophoneApp(),
  ));
}

class XylophoneApp extends StatelessWidget {
  AudioCache player = AudioCache();

  Widget buildkey({Color color, int soundNumber}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          player.play('note$soundNumber.wav');
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            buildkey(color: Colors.red, soundNumber: 1),
            buildkey(color: Colors.orange, soundNumber: 2),
            buildkey(color: Colors.yellow, soundNumber: 3),
            buildkey(color: Colors.green, soundNumber: 4),
            buildkey(color: Colors.blue, soundNumber: 5),
            buildkey(color: Colors.purple, soundNumber: 6),
            buildkey(color: Colors.pink, soundNumber: 7),
          ],
        ),
      ),
    );
  }
}
