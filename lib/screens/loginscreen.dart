import 'package:citadel/misc/utilities.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => LoginScreenState();
}

class LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: ListView(
          physics: const BouncingScrollPhysics(),
          children: const <Widget>[

          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          await AuthenticationUtilities.signInWithGoogle(context: context);
          // Navigator.pop(context);
        },
        backgroundColor: CitadelColors.darkBlue,
        elevation: 0,
        child: const Icon(
          Icons.login,
          color: Colors.white,
        ),
      ),
    );
  }
}
