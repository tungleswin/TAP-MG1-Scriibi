import 'package:flutter/material.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';

class ScanDocument extends StatefulWidget {
  const ScanDocument({super.key});

  @override
  State<ScanDocument> createState() => _ScanDocumentState();
}

class _ScanDocumentState extends State<ScanDocument> {
  // variables
  File? file;
  final ImagePicker imagePicker = ImagePicker();

  // main
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Take photos'),
          actions: [
            IconButton(
              onPressed: getImageFromGallery,
              icon: Icon(Icons.image),
            ),
            IconButton(
              onPressed: getImageFromCamera,
              icon: Icon(Icons.camera_alt),
            )
          ],
        ),
        body: file == null
            ? Center(child: Text('No image selected'))
            : Image.file(file!),
      ),
    );
  }

  // methods
  // -- To get image from the phone gallery
  Future<void> getImageFromGallery() async {
    final pickedFile = await imagePicker.pickImage(source: ImageSource.gallery);
    setState(() {
      if (pickedFile != null) {
        file = File(pickedFile.path);
      } else {
        print('No image selected.');
      }
    });
  }

  // -- To capture image using camera
  Future<void> getImageFromCamera() async {
    final pickedFile = await imagePicker.pickImage(source: ImageSource.camera);
    setState(() {
      if (pickedFile != null) {
        file = File(pickedFile.path);
      } else {
        print('No image captured.');
      }
    });
  }

  // --
}
