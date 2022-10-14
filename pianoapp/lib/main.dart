import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  void playsound(int num) {
    final player = AudioCache();
    player.play("note$num.wav");
    // final player = AudioPlayer();
    // ByteData bytes= await rootBundle.load('note$num.wav');
    // Uint8List sbytes=bytes.buffer.asUint8List(
    //   bytes.offsetInBytes,
    //   bytes.lengthInBytes
    // );

    // player.playBytes(sbytes);
  }

  Expanded myButton({required Color color, required int action}) {
    return Expanded(
      child: TextButton(
          onPressed: () {
            playsound(action);
          },
          child: Text(""),
          style: TextButton.styleFrom(backgroundColor: color)),
    );
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("Piano"),
          ),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              myButton(color: Color.fromARGB(255, 28, 28, 25), action: 1),
              myButton(color: Colors.yellow, action: 2),
              myButton(color: Color.fromARGB(255, 216, 215, 198), action: 3),
              myButton(color: Color.fromARGB(255, 59, 226, 255), action: 4),
              myButton(color: Color.fromARGB(255, 101, 59, 255), action: 5),
              myButton(color: Color.fromARGB(255, 255, 59, 245), action: 6),
              myButton(color: Color.fromARGB(255, 255, 59, 59), action: 7),
            ],
          )),
    );
  }
}
