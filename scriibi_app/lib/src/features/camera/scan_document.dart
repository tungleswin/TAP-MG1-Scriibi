import 'package:flutter/material.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'package:scriibi_app/src/features/camera/widgets/take_photo_app_bar.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:cunning_document_scanner/cunning_document_scanner.dart';
import 'package:flutter_document_scanner/flutter_document_scanner.dart';
import 'package:flutter_genius_scan/flutter_genius_scan.dart';

class ScanDocument extends StatefulWidget {
  const ScanDocument({super.key});

  @override
  State<ScanDocument> createState() => _ScanDocumentState();
}

class _ScanDocumentState extends State<ScanDocument> {
  // variables
  File? file;
  final ImagePicker imagePicker = ImagePicker();
  List<File> files = [];
  final pdf = pw.Document();

  // main
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TakePhotoAppBar(
        onPressedCamera: getImageFromCamera,
        onPressedGallery: getImageFromGallery,
      ),
      body: files.isEmpty
          ? Center(child: Text('No image selected'))
          : ListView.builder(
              itemCount: files.length,
              itemBuilder: (context, index) {
                return Image.file(files[index]);
              },
            ),
      floatingActionButton: FloatingActionButton(
        // TODO: Add generating pdf function here
        onPressed: generatePDF,
        child: Icon(Icons.picture_as_pdf),
      ),
    );
  }

  // methods
  // -- To get image from the phone gallery
  Future<void> getImageFromGallery() async {
    final pickedFile = await imagePicker.pickImage(source: ImageSource.gallery);
    setState(() {
      if (pickedFile != null) {
        files.add(File(pickedFile.path));
        // file = File(pickedFile.path);
      } else {
        print('No image selected.');
      }
    });
  }

  // -- To capture image using camera
  Future<void> getImageFromCamera() async {
    final scannedFiles = await CunningDocumentScanner.getPictures();
    ;
    setState(() {
      if (scannedFiles != null && scannedFiles.isNotEmpty) {
        // If there are scanned files, add each one to the files list
        for (String path in scannedFiles) {
          files.add(File(path));
        }
      } else {
        print('No image captured.');
      }
    });
  }

  // -- To generate pdf from chosen images
  Future<void> generatePDF() async {
    for (var file in files) {
      final image = pw.MemoryImage(file.readAsBytesSync());
      pdf.addPage(
        pw.Page(
          build: (context) => pw.Center(
            child: pw.Padding(
                padding: pw.EdgeInsets.all(10),
                child: pw.Image(
                  image,
                  fit: pw.BoxFit.contain,
                )),
          ),
        ),
      );
    }
    final pdfFile =
        await pdf.save(); // handle saving or sharing PDF file as needed
  }
}
