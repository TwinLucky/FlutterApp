import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/app/screens/home_screen.dart';
import 'package:flutter_application_1/features/app/screens/page_names.dart';
import 'package:go_router/go_router.dart';

class LessonEighteenth extends StatelessWidget {
  const LessonEighteenth({required this.title, super.key});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('State Management'),
        backgroundColor: Colors.green.shade100,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            FeatureCard(
              title: 'BLoC Example',
              onTap: () => context.goNamed(ScreenNames.blocExample),
            ),
            FeatureCard(
              title: 'Cubit Example',
              onTap: () => context.goNamed(ScreenNames.cubitExample),
            ),
          ],
        ),
      ),
    );
  }
}
