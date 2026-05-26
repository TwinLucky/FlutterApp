import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/app/screens/page_names.dart';
import 'package:flutter_application_1/widgets_main_screen.dart';
import 'package:go_router/go_router.dart';

class NavigationMainScreen extends StatelessWidget {
  const NavigationMainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Navigation'),
        backgroundColor: Colors.blue.shade100,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          NavigationCard(
            title: 'Base Navigation Section',
            description: '',
            onTap: () => context.goNamed(ScreenNames.baseNavigation),
          ),
          NavigationCard(
            title: 'Navigation with named routes',
            description: '',
            onTap: () => context.goNamed(ScreenNames.namedRoutesNavigation),
          ),
        ],
      ),
    );
  }
}
