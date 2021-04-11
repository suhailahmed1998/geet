import 'package:audioplayers/audioplayers.dart';

class AudioController {
  AudioPlayer audioPlayer = AudioPlayer();
  bool isPlaying = false;

  Future play(String url) async {
    isPlaying = true;
    return audioPlayer.play(url);
  }

  Future setUrl(String url) async {
    isPlaying = true;
    return audioPlayer.setUrl(url);
  }

  Future pause() {
    isPlaying = false;
    return audioPlayer.pause();
  }

  Future<void> stop() {
    isPlaying = false;
    return audioPlayer.stop();
  }
}

final audioController = AudioController();
