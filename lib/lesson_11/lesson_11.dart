import 'package:flutter/material.dart';

class LessonEleven extends StatelessWidget {
  const LessonEleven({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lesson 11'),
        backgroundColor: Colors.blue.shade100,
      ),
      body: Center(
        child: Container(
          width: 300,
          height: 150,
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(16),
          ),
        ),
      ),
    );
  }
}
