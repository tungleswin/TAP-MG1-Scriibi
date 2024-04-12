import 'package:flutter/material.dart';
import 'widgets/login_button.dart';
import 'widgets/email_login_box.dart';
import 'widgets/password_login_box.dart';
import 'widgets/logo_big.dart';
import 'widgets/logo_small.dart';
import 'widgets/text_reset_password.dart';

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
