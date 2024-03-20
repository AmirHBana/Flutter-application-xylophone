import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
  void playsound(int soundumber) async {
    final player = AudioPlayer();
    await player.play(AssetSource('note$soundumber.wav'));
  }

  Expanded buildkey({Color color = Colors.white, int soundumber = 1}) {
    return Expanded(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: color, // background
        ),
        onPressed: () async {
          playsound(soundumber);
        },
        child: Text('                            '),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildkey(color: Colors.red, soundumber: 1),
              buildkey(color: Colors.orange, soundumber: 2),
              buildkey(color: Colors.yellow, soundumber: 3),
              buildkey(color: Colors.green, soundumber: 4),
              buildkey(color: Color.fromARGB(255, 238, 50, 112), soundumber: 5),
              buildkey(color: Colors.blue, soundumber: 6),
              buildkey(color: Colors.purple, soundumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}