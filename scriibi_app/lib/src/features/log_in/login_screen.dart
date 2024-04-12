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
      body: SafeArea(
        child: Center(
          child: Container(
            width: 350,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            padding: EdgeInsets.all(0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  height: 150,
                  decoration: const BoxDecoration(
                    color: Color(0xFFEAEAEA),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                    ),
                  ),
                  child: const Column(
                    children: [
                      SizedBox(height: 20),
                      // Place holder to add big logo for Scriibi here
                      LogoBig(),
                      SizedBox(height: 20),
                      // Place holder to add small logo for Scriibi here
                      LogoSmall(),
                      SizedBox(height: 20)
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                // Place holder to add email login box here
                // EmailLoginBox(),
                const SizedBox(height: 20),
                // Place holder to add password login box here
                // PasswordLoginBox(),
                const SizedBox(height: 20),
                // Place holder to add text or button to reset password
                TextResetPassword(),
                const SizedBox(height: 20),
                // Add login password here
                LoginButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
