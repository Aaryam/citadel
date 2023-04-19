import 'package:citadel/misc/utilities.dart';
import 'package:citadel/screens/loginscreen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
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
      home: const StartScreen(),
    );
  }
}

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: Firebase.initializeApp(),
      builder: (context, signInSnapshot) {
        if (signInSnapshot.hasData) {
          if (FirebaseAuth.instance.currentUser != null) {
            return const HomeScreen(title: 'Citadel');
          }
          else {
            return const LoginScreen();
          }
        }
        else if (signInSnapshot.hasError) {
          print(signInSnapshot.error.toString());
          return Text(signInSnapshot.error.toString());
        }
        else {
          return Container();
        }
      },
    );
  }
}
