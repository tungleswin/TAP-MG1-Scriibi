import 'package:flutter/material.dart';
import 'package:scriibi_app/constants/colors_app.dart';
import 'package:scriibi_app/constants/sizes_app.dart';

class StudentAppBar extends StatelessWidget implements PreferredSizeWidget {
  const StudentAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colours.appGreen,
      title: const Text(
        "STUDENTS",
        style: TextStyle(
          color: Colors.white,
          fontSize: Sizes.size20,
          fontWeight: FontWeight.bold,
        ),
      ),
      automaticallyImplyLeading: true, // automatic back button
    );
  }

  Size get preferredSize =>
      const Size.fromHeight(kToolbarHeight); // Default AppBar height
}
