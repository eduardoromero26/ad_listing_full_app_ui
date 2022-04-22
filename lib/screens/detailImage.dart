import 'package:flutter/material.dart';

class DetailImageScreen extends StatelessWidget {
  final String SingleImageURL;

  const DetailImageScreen({
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
