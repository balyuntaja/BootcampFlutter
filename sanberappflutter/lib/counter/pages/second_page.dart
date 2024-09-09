import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sanberappflutter/counter/controller/counter_controller.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Page'),
      ),
      body: Center(
        child: GetBuilder(
          init: CounterController(),
          builder: (controller) => Text('Nilai Counter ${controller.counter}'),
        ),
      ),
    );
  }
}
