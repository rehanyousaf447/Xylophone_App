

import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playsound({int number}) {
    final AudioCache player = AudioCache();
    player.play("note$number.wav");
  }

  Expanded buildKey(int number, Color colors) {
    return Expanded(
      child: FlatButton(
        onPressed: () {
          playsound(number: number);
        },
        color: colors,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(40.0)),
      ),
    );
  }

  Widget Gap() {
    return SizedBox(
      height: 10.0,
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.indigo.shade300,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(1, Colors.red),
              Gap(),
              buildKey(2, Colors.orange),
              Gap(),
              buildKey(3, Colors.indigo),
              Gap(),
              buildKey(4, Colors.blue),
              Gap(),
              buildKey(5, Colors.green),
              Gap(),
              buildKey(6, Colors.teal),
              Gap(),
              buildKey(1, Colors.yellow),
            ],
          ),
        ),
      ),
    );
  }
}
