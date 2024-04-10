import 'package:flutter/material.dart';
import 'package:scriibi_app/src/features/log_in/login_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: const LoginScreen(),
    );
  }
}
