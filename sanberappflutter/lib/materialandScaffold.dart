import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialandScaffold());
}

class MaterialandScaffold extends StatelessWidget{
  const MaterialandScaffold({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.amber,
          )),
        home: const myHomePage(),
    );
  }
}

class myHomePage extends StatelessWidget {
  const myHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: const Center(
        child: Text('Hello, Baliyun!'),
      ),
    );
  }
}