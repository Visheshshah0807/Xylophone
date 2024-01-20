import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(const XylophoneApp());
Future<void> playsound(int soundNumber) async {
  final player = AudioPlayer();
  await player.play(AssetSource('note$soundNumber.wav'));
}

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Center(
            child: Text(
              "XYLOPHONE",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 35,
                fontFamily: 'SourceSans',
                letterSpacing: 5,
                color: Colors.white,
              ),
            ),
          ),
        ),
        body: SafeArea(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: TextButton(
                    onPressed: () async {
                      playsound(1);
                    },
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.red, // Set the background color
                      primary: Colors.white, // Set the text (foreground) color
                    ),
                    child: Text(" "),
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Expanded(
                  child: TextButton(
                    onPressed: () async {
                      playsound(2);
                    },
                    style: TextButton.styleFrom(
                      backgroundColor:
                          Colors.orange, // Set the background color
                      primary: Colors.white, // Set the text (foreground) color
                    ),
                    child: Text(" "),
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Expanded(
                  child: TextButton(
                    onPressed: () async {
                      playsound(3);
                    },
                    style: TextButton.styleFrom(
                      backgroundColor:
                          Colors.yellow, // Set the background color
                      primary: Colors.white, // Set the text (foreground) color
                    ),
                    child: Text(" "),
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Expanded(
                  child: TextButton(
                    onPressed: () async {
                      playsound(4);
                    },
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.green, // Set the background color
                      primary: Colors.white, // Set the text (foreground) color
                    ),
                    child: Text(" "),
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Expanded(
                  child: TextButton(
                    onPressed: () async {
                      playsound(5);
                    },
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.teal, // Set the background color
                      primary: Colors.white, // Set the text (foreground) color
                    ),
                    child: Text(" "),
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Expanded(
                  child: TextButton(
                    onPressed: () async {
                      playsound(6);
                    },
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.blue, // Set the background color
                      primary: Colors.white, // Set the text (foreground) color
                    ),
                    child: Text(" "),
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Expanded(
                  child: TextButton(
                    onPressed: () async {
                      playsound(7);
                    },
                    style: TextButton.styleFrom(
                      backgroundColor:
                          Colors.deepPurpleAccent, // Set the background color
                      primary: Colors.white, // Set the text (foreground) color
                    ),
                    child: Text(" "),
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
