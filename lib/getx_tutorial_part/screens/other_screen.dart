import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/counter_controller.dart';

class OtherScreen extends StatelessWidget {
  OtherScreen({Key? key}) : super(key: key);
  final CounterController _counterController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Screen was clicked ${_counterController.counter.value} times'),
          const SizedBox(
            height: 10,
          ),
          ElevatedButton(
            onPressed: () {
              Get.back();
            },
            child: const Text(''),
          )
        ],
      ),
    );
  }
}
