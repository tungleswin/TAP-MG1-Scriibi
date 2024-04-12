import 'package:flutter/material.dart';

class LogoBig extends StatelessWidget {
  const LogoBig({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
      width: 180,
      height: 60,
      decoration: BoxDecoration(
          image: DecorationImage(
        image: AssetImage('assets/Scriibi-big-logo.png'),
        fit: BoxFit.contain,
      )),
    ));
  }
}
