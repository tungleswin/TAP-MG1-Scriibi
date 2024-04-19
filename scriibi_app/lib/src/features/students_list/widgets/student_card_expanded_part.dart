import 'package:flutter/material.dart';
import 'package:scriibi_app/src/models/student.dart';
import 'package:scriibi_app/constants/colors_app.dart';
import 'package:scriibi_app/src/features/students_list/widgets/delete_dialog.dart';
import 'package:scriibi_app/src/features/camera/scan_document.dart';

class StudentExpandedVersionPart extends StatefulWidget {
  // constructors
  const StudentExpandedVersionPart({super.key, required this.studentData});

  //variables
  final Student studentData;

  @override
  State<StudentExpandedVersionPart> createState() =>
      _StudentExpandedVersionPartState();
}

class _StudentExpandedVersionPartState
    extends State<StudentExpandedVersionPart> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 3),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(10.0),
          bottomRight: Radius.circular(10.0),
        ),
        boxShadow: [
          BoxShadow(
            color: Colours.appGrey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 7,
          ),
        ],
        color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          children: [
            Expanded(
              flex: 5,
              child: Container(
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: widget.studentData.fileNames.length,
                  itemBuilder: (BuildContext context, int index) {
                    String fileName = widget.studentData.fileNames[index];
                    return Container(
                      child: Row(
                        children: [
                          IconButton(
                            onPressed: () {
                              // TODO: send delete request to the backend
                              DeleteConfirmationDialog.show(context);
                            },
                            icon: const Icon(
                              Icons.delete_outline_outlined,
                              size: 18,
                              color: Colors.red,
                            ),
                          ),
                          Text(
                            fileName,
                            style: TextStyle(color: Colours.appGreen),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: GestureDetector(
                onTap: () {
                  // TODO: Add camera function here
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ScanDocument()),
                  );
                },
                child: Container(
                  alignment: Alignment.centerLeft,
                  child: Image.asset(
                    'assets/icons-plus.png',
                    width: 30,
                    color: Colors.amber,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
