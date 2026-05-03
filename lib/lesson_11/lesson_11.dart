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
          alignment: Alignment.bottomRight,
          padding: const EdgeInsets.all(10.0),
          decoration: BoxDecoration(
            color: const Color.fromRGBO(9, 110, 234, 1),
            borderRadius: BorderRadius.circular(16),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            spacing: 10,
            children: [
              Image.asset(
                'assets/images/star.png',
              ),
              // const SizedBox(width: 10),
              Text(
                'Привіт, Flutter!',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              // const SizedBox(width: 10),
              Image.asset(
                'assets/images/star.png',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
