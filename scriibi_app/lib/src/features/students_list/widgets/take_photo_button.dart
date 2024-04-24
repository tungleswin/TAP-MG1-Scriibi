import 'package:flutter/material.dart';
import 'package:scriibi_app/src/features/camera/scan_document.dart';

class TakePhotoIconButton extends StatelessWidget {
  const TakePhotoIconButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ScanDocument()),
        );
      },
      child: Container(
        alignment: Alignment.center,
        child: Image.asset(
          'assets/icons-plus.png',
          width: 30,
          color: Colors.amber,
        ),
      ),
    );
  }
}
