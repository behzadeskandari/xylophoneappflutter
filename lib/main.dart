import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const Xylophone());
}

class Xylophone extends StatelessWidget {
  void PlaySoud(int soundNumber) {
    final player = AudioPlayer();
    player.play(AssetSource('note$soundNumber.wav'));
  }

  Expanded buildKey({Color color = Colors.orange, int soundNumber = 1}) {
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(
            shape: BeveledRectangleBorder(borderRadius: BorderRadius.zero),
            //minimumSize: Size(500.0, 100.0),
            //fixedSize: const Size(100.0, 20.0),
            backgroundColor: color),
        onPressed: () {
          PlaySoud(soundNumber);
        },
        child: Text(''),
      ),
    );
  }

  const Xylophone({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  buildKey(color: Colors.red, soundNumber: 1),
                  buildKey(color: Colors.orange, soundNumber: 2),
                  buildKey(color: Colors.green, soundNumber: 3),
                  buildKey(color: Colors.blue, soundNumber: 4),
                  buildKey(color: Colors.green, soundNumber: 5),
                  buildKey(color: Colors.purpleAccent, soundNumber: 6),
                  buildKey(color: Colors.yellow, soundNumber: 7),
                ]),
          ),
        ),
      ),
    );
  }
}
//const ButtonStyle(
//                 fixedSize: Size(100.0, 10.0),
//                 backgroundColor: MaterialStatePropertyAll(Colors.cyan),
//               ),
