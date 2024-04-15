import 'package:flutter/material.dart';
import 'package:scriibi_app/src/models/student.dart';

class StudentCard extends StatelessWidget {
  // constructors
  const StudentCard({super.key, required this.studentData});

  // variables
  final Student studentData;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      color: Colors.white,
      margin: const EdgeInsets.all(8.0),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Row(
          children: [
            Expanded(
              flex: 2,
              child: Container(
                  alignment: Alignment.centerLeft,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(studentData.fullName),
                      Text(studentData.subtitle),
                    ],
                  )),
            ),
            Expanded(
              flex: 1,
              child: Container(
                  alignment: Alignment.center,
                  child: Text(studentData.className)),
            ),
            Expanded(
              flex: 1,
              child: Stack(
                children: [
                  Container(
                    height: 45,
                    alignment: Alignment.center,
                    child: Text(
                      '3', // Number of file uploaded
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.green,
                      ),
                    ),
                  ),
                  // The frame for number of documents uploaded
                  Container(
                    alignment: Alignment.center,
                    child: Image.asset(
                      'assets/icons-document.png',
                      height: 45,
                      color: Colors.green,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
    ;
  }
}
