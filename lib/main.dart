import 'package:flutter/material.dart';
import 'screens/layout_selector_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '算数ドリルさん',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const LayoutSelectorScreen(),
    );
  }
}
        // reload" button in a Flutter-supported IDE, or press "r" if you used
