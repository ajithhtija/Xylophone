import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void repeat(int num)
  {
    final player = AudioCache();
    player.play('note$num.wav');
  }
  Expanded buildkey(Color ch,int i)
  {
  return  Expanded(
      child: FlatButton(
        color: ch,
        onPressed: (){
          repeat(i);
        },
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
         child:  Column(
             crossAxisAlignment: CrossAxisAlignment.stretch ,
            children: <Widget>[
             buildkey(Colors.teal,1),
             buildkey(Colors.green,2),
             buildkey(Colors.yellow,3),
             buildkey(Colors.blue,4),
             buildkey(Colors.grey,5),
             buildkey(Colors.red,6),
             buildkey(Colors.indigo,7),
            ]
            ),
          ),
        ),
      );
  }
}
