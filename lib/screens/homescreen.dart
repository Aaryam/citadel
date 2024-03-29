import 'package:citadel/misc/utilities.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key, required this.title});

  final String title;

  @override
  State<HomeScreen> createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Timeline')), // Image.asset('assets/icons/icon.png', fit: BoxFit.contain, height: 56,)
        elevation: 0,
      ),
      body: Center(
        child: ListView(
          physics: const BouncingScrollPhysics(),
          children: const <Widget>[
            
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          await AuthenticationUtilities.signOut();
        },
        backgroundColor: CitadelColors.darkBlue,
        elevation: 0,
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }
}
