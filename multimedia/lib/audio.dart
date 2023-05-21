import 'dart:async';

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class audio extends StatelessWidget {
  audio({super.key});
  void my() {
    final player = AudioPlayer();
    player.play(DeviceFileSource('images/3.mp3'));
  }

  bool playng = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: TextButton(
              onPressed: () {
                final player = AudioPlayer();
                if (playng == true) {
                  player.pause();
                } else {
                  player.play(DeviceFileSource('images/a.mp3')).then((value) {
                    Timer(Duration(seconds: 2), () {
                      player.pause();
                    });
                  });
                  playng = true;
                }
              },
              child: playng ? Icon(Icons.pause) : Icon(Icons.play_arrow)),
        ),
      ),
    );
  }
}
