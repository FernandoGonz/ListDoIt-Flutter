import 'package:flutter/material.dart';
import 'screens/task_screen.dart';

// Repo github https://github.com/FernandoGonz/ListDoIt-Flutter.git

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TaskScreen(),
    );
  }
}