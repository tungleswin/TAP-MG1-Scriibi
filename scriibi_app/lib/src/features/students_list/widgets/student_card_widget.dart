import 'package:flutter/material.dart';
import 'package:scriibi_app/src/features/students_list/widgets/take_photo_button.dart';
import 'package:scriibi_app/src/models/student.dart';
import 'package:scriibi_app/src/features/students_list/widgets/student_card_expanded_part.dart';

class StudentCard extends StatefulWidget {
  // constructors
  const StudentCard({super.key, required this.studentData});

  // variables
  final Student studentData;

  @override
  State<StudentCard> createState() => _StudentCardState();
}

class _StudentCardState extends State<StudentCard> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: widget.studentData.fileNames
                  .isNotEmpty // toggle the isExpanded property
              ? () {
                  setState(() {
                    // This toggles the expanded state within setState to trigger a UI update
                    widget.studentData.isExpanded =
                        !widget.studentData.isExpanded;
                  });
                }
              : null, // if the fileNames is not empty, do nothing
          child: Card(
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
                            Text(widget.studentData.fullName),
                            Text(widget.studentData.subtitle),
                          ],
                        )),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                        alignment: Alignment.center,
                        child: Text(widget.studentData.className)),
                  ),
                  Expanded(
                    flex: 1,
                    child: Stack(
                      children: [
                        if (widget.studentData.fileNames.isNotEmpty)
                          Container(
                            height: 45,
                            alignment: Alignment.center,
                            child: Text(
                              '${widget.studentData.fileNames.length}', // Number of file uploaded
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.green,
                              ),
                            ),
                          ),
                        if (widget.studentData.fileNames.isEmpty)
                          TakePhotoIconButton(),
                        // The frame for number of documents uploaded
                        if (widget.studentData.fileNames.isNotEmpty)
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
          ),
        ),
        // TODO: show extended part about file names here
        if (widget.studentData.isExpanded)
          // StudentExpandedVersionPart(studentData: widget.studentData),
          StudentExpandedVersionPart(studentData: widget.studentData),
      ],
    );
  }
}
