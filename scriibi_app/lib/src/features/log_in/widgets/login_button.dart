import 'package:flutter/material.dart';
import 'package:scriibi_app/src/features/classes_list/class_list_screen.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({super.key});

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;

    return OutlinedButton(
      onPressed: () {
        // TODO: add authentication function here

        // Temporary navigator for the login page without authentication
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ClassListScreen()),
        );
      },
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(Color(0xFF559A2A)),
          padding: MaterialStateProperty.all<EdgeInsets>(
            EdgeInsets.symmetric(
                vertical: screenSize.height * 0.035,
                horizontal: screenSize.width * 0),
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
              fontSize: screenSize.height * 0.02,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          const SizedBox(width: 5),
          Icon(
            Icons.arrow_forward_ios,
            color: Colors.white,
            size: screenSize.height * 0.02,
          ),
        ],
      ),
    );
  }
}
