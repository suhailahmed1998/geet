import 'package:flutter/material.dart';
import 'package:geet/data/songs.dart';
import 'package:geet/view/now_playing/now_playing.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Geet'),
      ),
      body: Column(
        children: <Widget>[
          Flexible(
            child: ListView.builder(
                itemCount: songList.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: Image.network(songList[index]['image_url']),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                NowPlaying(song: songList[index])),
                      );
                    },
                    title: Text('${songList[index]['name']}'),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
