import 'package:flutter/material.dart';
import 'package:geet/controller/audio_controller.dart';

class NowPlaying extends StatefulWidget {
  final Map<String, String> song;

  const NowPlaying({this.song});

  @override
  _NowPlayingState createState() => _NowPlayingState();
}

class _NowPlayingState extends State<NowPlaying> {
  @override
  void initState() {
    super.initState();
    if (audioController.isPlaying == false) {
      audioController.play(widget.song['url']);
    } else {
      audioController.setUrl(widget.song['url']);
    }
  }

  @override
  Widget build(BuildContext context) {
    final list = [1, 2, 3, 4];
    return Scaffold(
      body: Column(
        children: [
          Image.network(widget.song['image_url']),
          SizedBox(height: 20),
          Text(
            widget.song['name'],
            style: TextStyle(fontSize: 30),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                  iconSize: 60,
                  icon: Icon(Icons.chevron_left),
                  onPressed: () {}),
              IconButton(
                iconSize: 60,
                icon: Icon(Icons.play_arrow),
                onPressed: () {},
              ),
              IconButton(
                iconSize: 60,
                icon: Icon(Icons.chevron_right),
                onPressed: () {},
              )
            ],
          )
        ],
      ),
    );
  }
}
