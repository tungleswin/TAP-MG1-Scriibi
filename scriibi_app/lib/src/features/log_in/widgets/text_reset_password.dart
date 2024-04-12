import 'package:flutter/material.dart';

class TextResetPassword extends StatelessWidget {
  const TextResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;

    return GestureDetector(
      onTap: () {
        // TODO: Need tp add a function or link to a web page to reset password
        print('Test - reset password');
      },
      child: Container(
        padding: EdgeInsets.all(screenSize.width * 0.01),
        child: Text(
          "Don't remember your password",
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: screenSize.height * 0.015),
        ),
      ),
    );
  }
}
