import 'package:flutter/material.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({super.key});

  @override
  Widget build(BuildContext context) {
    final Size boxSize = MediaQuery.of(context).size;

    return OutlinedButton(
      onPressed: () {
        // TODO: add authentication function here
      },
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(Color(0xFF33A849)),
          padding: MaterialStateProperty.all<EdgeInsets>(
            EdgeInsets.symmetric(
                vertical: boxSize.height * 0.035,
                horizontal: boxSize.width * 0),
          ),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(0),
          ))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'LOG IN',
            style: TextStyle(
              fontSize: boxSize.height * 0.02,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          const SizedBox(width: 5),
          Icon(
            Icons.arrow_forward_ios,
            color: Colors.white,
            size: boxSize.height * 0.02,
          ),
        ],
      ),
    );
  }
}
