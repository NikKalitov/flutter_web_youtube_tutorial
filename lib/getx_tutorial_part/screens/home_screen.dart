import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/counter_controller.dart';
import './other_screen.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);
  final CounterController counterController = Get.put(CounterController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Clicks: ${counterController.counter.value}'),
          const SizedBox(
            height: 10,
          ),
          ElevatedButton(
            onPressed: () {
              Get.to(OtherScreen());
            },
            child: const Text('Open Other Screen'),
          )
        ],
      ),
    );
  }
}
