import 'package:flutter/material.dart';
import 'widgets/login_button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // get the size of the screen
    final Size screenSize = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        child: const Column(
          children: [
            LoginButton(),
          ],
        ),
      ),
    );
  }
}
