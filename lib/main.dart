import 'package:citadel/misc/utilities.dart';
import 'package:flutter/material.dart';

import 'screens/homescreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Citadel',
      theme: ThemeData(
        primarySwatch: CitadelColors.darkBlue,
        fontFamily: 'Poppins',
      ),
      home: const HomeScreen(title: 'Citadel'),
    );
  }
}
