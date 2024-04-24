import 'package:flutter/material.dart';
import 'package:scriibi_app/constants/colors_app.dart';

class TakePhotoAppBar extends StatelessWidget implements PreferredSizeWidget {
  const TakePhotoAppBar({
    super.key,
    required this.onPressedGallery,
    required this.onPressedCamera,
  });

  final VoidCallback onPressedGallery;
  final VoidCallback onPressedCamera;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colours.appGreen,
      title: const Text(
        "Take photos",
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
      automaticallyImplyLeading: true,
      actions: [
        IconButton(
          onPressed: onPressedGallery,
          icon: const Icon(Icons.image),
        ),
        IconButton(
          onPressed: onPressedCamera,
          icon: const Icon(Icons.camera_alt),
        ),
      ],
    );
  }

  @override
  Size get preferredSize =>
      const Size.fromHeight(kToolbarHeight); // Default AppBar height
}
