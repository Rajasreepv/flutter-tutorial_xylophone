import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class mainscreen extends StatefulWidget {
  const mainscreen({super.key});

  @override
  State<mainscreen> createState() => _mainscreenState();
}

class _mainscreenState extends State<mainscreen> {
  void sound(int soundnum) {
    final player = AudioPlayer();
    player.play(AssetSource('note$soundnum.wav'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Unfold your tunes "),
        ),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: TextButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          Colors.black), // Change the color as needed
                    ),
                    onPressed: () {
                      sound(1);
                    },
                    child: const Text(
                      "Tune1",
                      style: TextStyle(color: Colors.white),
                    )),
              ),
              Expanded(
                child: TextButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          Colors.brown), // Change the color as needed
                    ),
                    onPressed: () {
                      sound(2);
                    },
                    child:
                        Text("Tune2", style: TextStyle(color: Colors.white))),
              ),
              Expanded(
                child: TextButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          Colors.green), // Change the color as needed
                    ),
                    onPressed: () {
                      sound(3);
                    },
                    child:
                        Text("Tune3", style: TextStyle(color: Colors.white))),
              ),
              Expanded(
                child: TextButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          Colors.purple), // Change the color as needed
                    ),
                    onPressed: () {
                      sound(4);
                    },
                    child:
                        Text("Tune4", style: TextStyle(color: Colors.white))),
              ),
              Expanded(
                child: TextButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                        Colors.orange,
                      ), // Change the color as needed
                    ),
                    onPressed: () {
                      sound(5);
                    },
                    child:
                        Text("Tune5", style: TextStyle(color: Colors.white))),
              ),
              Expanded(
                child: TextButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          Colors.yellow), // Change the color as needed
                    ),
                    onPressed: () {
                      sound(6);
                    },
                    child:
                        Text("Tune6", style: TextStyle(color: Colors.white))),
              ),
              Expanded(
                child: TextButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          Colors.pink), // Change the color as needed
                    ),
                    onPressed: () {
                      sound(7);
                    },
                    child:
                        Text("Tune7", style: TextStyle(color: Colors.white))),
              ),
            ],
          ),
        ));
  }
}
