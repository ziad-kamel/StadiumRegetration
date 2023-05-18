import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class video extends StatefulWidget {
  const video({super.key});

  @override
  State<video> createState() => _videoState();
}

class _videoState extends State<video> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Home());
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late VideoPlayerController _controller;
  @override
  void initState() {
    // TODO: implement initState
    _controller = VideoPlayerController.asset('images/st.mp4')
      ..initialize().then((_) {
        setState(() {
          _controller.play();
        });
      });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          content(),
          TextButton(
              child: _controller.value.isPlaying
                  ? Icon(
                      Icons.pause_outlined,
                      color: Colors.red[700],
                      size: 40,
                    )
                  : Icon(
                      Icons.play_arrow,
                      color: Colors.red[700],
                      size: 40,
                    ),
              onPressed: () {
                setState(() {
                  _controller.value.isPlaying
                      ? _controller.pause()
                      : _controller.play();
                });
              }),
        ],
      ),
    );
  }

  Widget content() {
    return Center(
      child: Container(
          width: 300,
          height: 300,
          child: _controller.value.isInitialized
              ? VideoPlayer(_controller)
              : Container()),
    );
  }
}
