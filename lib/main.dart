import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playsound(int a){
    final player = AudioCache();
    player.play('note$a.wav');
  }

  Expanded createbar(Color color,int soundNumber){
   return Expanded(
      child: FlatButton(
        color: color,
        onPressed:(){
          playsound(soundNumber);
        },
        child: Text(''),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                createbar(Colors.red, 1),
                createbar(Colors.purple,2),
                createbar(Colors.green, 3),
                createbar(Colors.yellow,4),
                createbar(Colors.orange,5),
                createbar(Colors.teal,6),
              ],
            ),
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
