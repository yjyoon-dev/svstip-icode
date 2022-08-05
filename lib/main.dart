import 'package:flutter/material.dart';
import 'package:icode/screens/title_screen.dart';
import 'package:icode/screens/input_screen.dart';
import 'package:icode/screens/result_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'iCode',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const TitleScreen(),
    );
  }
}
