import 'package:flutter/material.dart';

void main() => runApp(const BelajarImage());

class BelajarImage extends StatelessWidget {
  const BelajarImage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("belajarFlutter.com"),
        ),
        body: Center(
          child: Image.asset('assets/image_news.png'),
          ),
      ),
    );
  }
}