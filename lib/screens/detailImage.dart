import 'package:flutter/material.dart';
//import 'package:project_name/screens/nowPlayingScreen.dart';
//import 'package:project_name/custom-widgets/MyMusicWidget.dart';

// ignore: camel_case_types
class SingleImageSongScreen extends StatelessWidget {
  final String SingleImageURL;

  const SingleImageSongScreen({
    Key? key,
    required this.SingleImageURL,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      // ignore: avoid_unnecessary_containers
      body: Center(
        child: Container(
          child: Image.asset(
            SingleImageURL,
            height: 320,
            width: double.infinity,
          ),
        ),
      ),
    );
  }
}
