import 'package:flutter/material.dart';

class LogoSmall extends StatelessWidget {
  const LogoSmall({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 180,
        height: 30,
        alignment: Alignment.center,
        child: Text(
          'Scriibi',
          style: TextStyle(
            color: Color(0xFF333333),
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}
