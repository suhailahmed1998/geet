import 'package:flutter/material.dart';
import 'package:geet/view/home/home_screen.dart';

import 'controller/audio_controller.dart';

class MyApp extends StatelessWidget {
  final audioController = AudioController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomeScreen());
  }
}
